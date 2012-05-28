// This script is a part of SystemUI modification kit
// Script deals with resources and layout XML's

var srcPathStringsBase = "qp\\res\\";
var dstPathStringsBase = "SystemUI\\res\\";
var srcPathArrays = "qp\\res\\values\\arrays.xml";
var dstPathArrays = "SystemUI\\res\\values\\arrays.xml";
var dstPathStatusBar = "SystemUI\\res\\layout\\status_bar_expanded.xml";

var fso = WScript.CreateObject("Scripting.FileSystemObject");
var xmlSrc = WScript.CreateObject("Microsoft.XMLDOM");
var xmlDst = WScript.CreateObject("Microsoft.XMLDOM");
xmlSrc.async = false;
xmlDst.async = false;

var srcNodes;
var dstNode;

// add values from res\values*\strings.xml (iterate thru all folders)

var fold = fso.GetFolder(srcPathStringsBase);
var subfoldenum = new Enumerator(fold.SubFolders);
for (; !subfoldenum.atEnd(); subfoldenum.moveNext())
{
  var foldName = subfoldenum.item().Name;
  // process only \values* folders
  if (foldName.indexOf("values") == -1)
    continue;
  
  var srcPathStrings = srcPathStringsBase + foldName + "\\strings.xml";
  var dstPathStrings = dstPathStringsBase + foldName + "\\strings.xml";

  if (!xmlSrc.load(srcPathStrings))
  {
    WScript.Echo(srcPathStrings + " not found!");
    continue;
  }
  
  if (!xmlDst.load(dstPathStrings))
  {
    WScript.Echo(dstPathStrings + " not found!");
    continue;
  }
  
  srcNodes = xmlSrc.selectSingleNode("/resources").childNodes;
  dstNode = xmlDst.selectSingleNode("/resources");
  
  while (srcNodes.length > 0)
   dstNode.appendChild(srcNodes[0]);

  xmlDst.save(dstPathStrings);
}

// add values from res\values\arrays.xml (destination file might exist and migth not)

if (!xmlSrc.load(srcPathArrays))
{
  WScript.Echo(srcPathArrays + " not found!");
  WScript.Quit(1);
}

if (!xmlDst.load(dstPathArrays)) // dest arrays.xml is abcent - copy the whole XML
{
  xmlDst.loadXML(xmlSrc.xml); 
}
else // dest arrays.xml is present - add all nodes from src
{
  srcNodes = xmlSrc.selectSingleNode("/resources").childNodes;
  dstNode = xmlDst.selectSingleNode("/resources");
  
  while (srcNodes.length > 0)
   dstNode.appendChild(srcNodes[0]);
}

xmlDst.save(dstPathArrays);

// add a node into res\layout\status_bar_expanded.xml (as a first child to a first node with attribute android:orientation="vertical")

if (!xmlDst.load(dstPathStatusBar))
{
  WScript.Echo(dstPathStatusBar + " not found!");
  WScript.Quit(1);
}

xmlSrc.loadXML('<include layout="@layout/qp_layout" />');

for (dstNode = xmlDst.documentElement; dstNode != null; dstNode = dstNode.firstChild)
{
  if (dstNode.attributes.getNamedItem("android:orientation").value == "vertical")
  {
    dstNode.insertBefore(xmlSrc.documentElement, dstNode.firstChild);
    break;
  }
}

xmlDst.save(dstPathStatusBar);

WScript.Echo("Processing complete");