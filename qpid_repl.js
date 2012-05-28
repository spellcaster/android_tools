// This script is a part of SystemUI modification kit
// Script replaces string id's in QPids.smali by values taken from public.xml

var fso = WScript.CreateObject("Scripting.FileSystemObject");
var pubPath = "SystemUI\\res\\values\\public.xml";
var idsPath = "SystemUI\\smali\\com\\lidroid\\systemui\\quickpanel\\QPids.smali";

var rePubExtract = new RegExp('name="(qp_.+?)" id="(.+?)"', "g");
// should place \1 or \b instead of (.+?) at the end of the line but it doesn't work :(
var reQPidsExtract = new RegExp('const-string v0, "(.+?)"([\n\r]+?|.+?)+?const v0, (id_.+?)[\r\n]', "gm");

// check files

if (!fso.FileExists(pubPath))
{
  WScript.Echo(pubPath + " not found!");
  WScript.Quit(1);
}

if (!fso.FileExists(idsPath))
{
  WScript.Echo(idsPath + " not found!");
  WScript.Quit(1);
}

// open and read the files

var fileQPids = fso.GetFile(idsPath);
var txstQPids = fileQPids.OpenAsTextStream(1); // read file
var sQPids = txstQPids.ReadAll();
txstQPids.Close();

var filePub = fso.GetFile(pubPath);
var txstPub = filePub.OpenAsTextStream(1); // read file
var sPub = txstPub.ReadAll();
txstPub.Close();

var dic = new Array();
var txstLog = fso.CreateTextFile(WScript.ScriptName+".log");
var txstOut;

var found;
var arr;
var s = "";

function Msg(msg, doAlert)
{
  txstLog.WriteLine(msg);
  if (doAlert)
    WScript.Echo(msg);
}

Msg((new Date()).toLocaleString()+". Processing started...");

// Parse public.xml file, extract pairs "qp_* => 0x7*" and push them into associative array

found = false;
while ((arr = rePubExtract.exec(sPub)) != null)
{
  dic[arr[1]] = arr[2];
  found = true;
}

if (!found)
{
  Msg("public.xml - no match found!");
  WScript.Quit(1);
}

// Replace id's with new ones

var sQPidsNew = sQPids.replace(reQPidsExtract, 
                               // $2 = qp_*
                               // $4 = id_$2
                               // returns: new number
                               function($1, $2, $3, $4)
                               {
                                 var newNum = dic[$2];
                                 if (newNum == undefined || $4 != "id_"+$2)
                                   return $1
                                 else
                                 {
                                   s += ($2+": "+$4+" => " + newNum + "\n");
                                   return $1.replace($4, newNum);
                                 }
                               });

// rename source file and create new one

txstQPids.Close();
fso.CopyFile(idsPath, idsPath+".bak");
txstOut = fso.CreateTextFile(idsPath, 2); // rewrite file
txstOut.WriteLine(sQPidsNew);
txstOut.Close();

txstLog.WriteLine(s);
Msg("Processing complete", true);
txstLog.Close();