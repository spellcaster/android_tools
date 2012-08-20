var output = new Array();
var names = new Array("qp_act_reboot", "qp_act_shutdown", "qp_airplane_off", "qp_airplane_on", "qp_bg", "qp_bg_mid", "qp_bg_off", "qp_bg_on", "qp_bluetooth_off",
                     "qp_bluetooth_on", "qp_brightness_auto", "qp_brightness_mid", "qp_brightness_off", "qp_brightness_on", "qp_data_off", "qp_data_on",
                    "qp_gps_off", "qp_gps_on", "qp_ic_dlg", "qp_lock_screen_off", "qp_lock_screen_on", "qp_orientation_off", "qp_orientation_on",
                    "qp_screen_timeout_10m", "qp_screen_timeout_15s", "qp_screen_timeout_1m", "qp_screen_timeout_2m", "qp_screen_timeout_30s", "qp_screen_timeout_unknown",
                    "qp_sound_ring", "qp_sound_ring_vibrate", "qp_sound_silent", "qp_sound_vibrate", "qp_sync_off", "qp_sync_on", "qp_wifi_off", "qp_wifi_on", "qp_button",
                    "qp_layout", "qp_scrollview", "qp_airplane_text", "qp_autosync_text", "qp_bluetooth_text", "qp_brightness_text", "qp_dc_text",
                    "qp_gps_text", "qp_lockscreen_text", "qp_no", "qp_reboot_dlg_title", "qp_reboot_download", "qp_reboot_now", "qp_reboot_recovery", "qp_reboot_text",
                    "qp_rotation_text", "qp_screen_timeout_hr", "qp_screen_timeout_min", "qp_screen_timeout_prefix", "qp_screen_timeout_sec", "qp_screen_timeout_text",
                    "qp_shutdown_text", "qp_silent_text", "qp_sound_text", "qp_sound_vibration_text", "qp_vibration_text", "qp_wifi_text", "qp_yes", "qp_reboot_actions",
                    "qp_reboot_options", "qp_timeouts");
var fso = new ActiveXObject("Scripting.FileSystemObject");
var pub = "SystemUI\\res\\values\\public.xml";
var ids = "SystemUI\\smali\\com\\lidroid\\systemui\\quickpanel\\QPids.smali";
var ids_tmp = "SystemUI\\smali\\com\\lidroid\\systemui\\quickpanel\\QPids.smali.tmp";
var out = '';

if (fso.FileExists(pub)) {
    fl = fso.OpenTextFile(pub,1,false,false);
    while(!fl.AtEndOfStream){
        var line=fl.ReadLine();
        for (var k in names) {
            var re = new RegExp('    <public type=".+" name="' + names[k] + '" id="(.*)" />');
            if (re.test(line)){
                output[names[k]] = RegExp.$1;
            }
        }
    }
    fl.Close();
    if (fso.FileExists(ids)) {
        if (fso.FileExists(ids_tmp)) fso.DeleteFile(ids_tmp);
        fso.MoveFile(ids,ids_tmp);
     
        var fr = fso.OpenTextFile(ids_tmp,1,false,false);
        var fw = fso.OpenTextFile(ids,2,true,false);
        var cnt = 0;
        while (!fr.AtEndOfStream){
            var line = fr.ReadLine();
            var line_replace = '';
            cnt++;                  // счётчик строк
            for (var k in output) {
                var re = new RegExp('id_' + k + '$');
                line_replace = line.replace(re,output[k]);
                if (line != line_replace) {     // если была замена
                    out += cnt + ': id_' + k + ' => ' + output[k] + "\n";      // формируем строку лога
                    break;
                }
            }
            fw.WriteLine(line_replace);
        }
        fr.Close();
        fw.Close();
        // Удаляем исходный файл
        fso.DeleteFile(ids_tmp);
    } else WScript.Echo('Not found\n\n' + ids);
} else WScript.Echo('Not found\n\n' + pub);


if (out != '') {
    log = fso.OpenTextFile("log.txt", 2, true);     // пишем лог в файл
    log.Write(out);
    log.Close();
    WScript.Echo("Done\n\nSee log.txt")
}
