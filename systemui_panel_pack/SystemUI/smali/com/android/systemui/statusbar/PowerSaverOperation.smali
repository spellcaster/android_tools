.class public Lcom/android/systemui/statusbar/PowerSaverOperation;
.super Ljava/lang/Object;
.source "PowerSaverOperation.java"


# static fields
.field public static final DEFAULT_BACKGROUNDDATA:Z = true

.field public static final DEFAULT_BLUETOOTH:Z = true

.field public static final DEFAULT_BRIGHTNESS:Z = true

.field public static final DEFAULT_BRIGHTNESS_AUTO:I = 0x0

.field public static final DEFAULT_BRIGHTNESS_VALUE:I = 0x66

.field public static final DEFAULT_ENABLE:I = 0x1

.field public static final DEFAULT_HAPTIC_FEEDBACK:Z = true

.field public static final DEFAULT_NOTIFICATION:Z = true

.field public static final DEFAULT_N_BACKGROUNDDATA:I = 0x1

.field public static final DEFAULT_N_BLUETOOTH:Z = false

.field public static final DEFAULT_N_BRIGHTNESS:I = 0x66

.field public static final DEFAULT_N_BRIGHTNESS_AUTO:I = 0x0

.field public static final DEFAULT_N_HAPTIC_FEEDBACK:I = 0x1

.field public static final DEFAULT_N_SCREEN_TIMEOUT:I = 0x1770

.field public static final DEFAULT_N_WIFI:Z = false

.field public static final DEFAULT_SCHEDULE:I = 0xf

.field public static final DEFAULT_SCREEN_ANIMATION:Z = true

.field public static final DEFAULT_SCREEN_TIMEOUT:Z = true

.field public static final DEFAULT_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field public static final DEFAULT_WIFI:Z = true

.field public static final KEY_BACKGROUNDDATA:Ljava/lang/String; = "powersaver_backgrounddata"

.field public static final KEY_BLUETOOTH:Ljava/lang/String; = "powersaver_bluetooth"

.field public static final KEY_ENABLE_POWERSAVER:Ljava/lang/String; = "powersaver_enable"

.field public static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "powersaver_haptic_feedback"

.field public static final KEY_NOTIFICATION:Ljava/lang/String; = "powersaver_notification"

.field public static final KEY_N_ANIMATION0:Ljava/lang/String; = "psaver_normal_animation_0"

.field public static final KEY_N_ANIMATION1:Ljava/lang/String; = "psaver_normal_animation_1"

.field public static final KEY_N_BACKGROUNDDATA:Ljava/lang/String; = "psaver_normal_bgdata"

.field public static final KEY_N_BLUETOOTH:Ljava/lang/String; = "psaver_normal_bluetooth"

.field public static final KEY_N_BRIGHTNESS:Ljava/lang/String; = "psaver_normal_brightness"

.field public static final KEY_N_BRIGHTNESS_AUTO:Ljava/lang/String; = "psaver_normal_autobrightness"

.field public static final KEY_N_HAPTIC_FEEDBACK:Ljava/lang/String; = "psaver_normal_haptic_feedback"

.field public static final KEY_N_SCREEN_TIMEOUT:Ljava/lang/String; = "psaver_normal_screen_timeout"

.field public static final KEY_N_WIFI:Ljava/lang/String; = "psaver_normal_wifi"

.field public static final KEY_ONSCREEN_ANIMATION:Ljava/lang/String; = "powersaver_onscreen_animation"

.field public static final KEY_POWERSAVER_SHARED:Ljava/lang/String; = "powersaver_shared"

.field public static final KEY_SCREEN_BRIGHTNESS:Ljava/lang/String; = "powersaver_screen_brightness"

.field public static final KEY_SCREEN_BRIGHTNESS_SETTINGS:Ljava/lang/String; = "powersaver_screen_brightness_settings"

.field public static final KEY_SCREEN_BRIGHTNESS_SETTINGS_AUTO:Ljava/lang/String; = "powersaver_screen_brightness_settings_auto"

.field public static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "powersaver_screen_timeout"

.field public static final KEY_SCREEN_TIMEOUT_SETTINGS:Ljava/lang/String; = "powersaver_screen_timeout_settings"

.field public static final KEY_SET_SCHEDULE:Ljava/lang/String; = "powersaver_set_schedule"

.field public static final KEY_STATUS:Ljava/lang/String; = "powersaver_status"

.field public static final KEY_WIFI:Ljava/lang/String; = "powersaver_wifi"

.field public static final NORMAL_STATUS:I = 0x1f40

.field public static final POWERSAVER_STATUS:I = 0x1f41

.field private static final TAG:Ljava/lang/String; = "Powersaver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSysBackgroundData(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 97
    const-string v0, "background_data"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysBluetooth()Z
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 143
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 145
    const-string v1, "Powersaver"

    const-string v2, "Bluetooth is not supported on this hardware platform."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public static getSysBrightness(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 128
    const-string v0, "screen_brightness"

    const/16 v1, 0x66

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysBrightnessAuto(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 135
    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysHapicFeedback(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 162
    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysOnscreenAnimations()[F
    .locals 5

    .prologue
    .line 102
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 103
    .local v2, mWindowManager:Landroid/view/IWindowManager;
    if-nez v2, :cond_0

    .line 105
    const-string v3, "Powersaver"

    const-string v4, "error at IWindowManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, AnimationScales:[F
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSysTimeOut(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 123
    const-string v0, "screen_off_timeout"

    const/16 v1, 0x1770

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysWifi(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 152
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 153
    .local v0, wifimgr:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 155
    const-string v1, "Powersaver"

    const-string v2, "error at getSystemService(Context.WIFI_SERVICE)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public setBackgroundData(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "mContentresolver"

    .prologue
    .line 171
    const-string v0, "powersaver_backgrounddata"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/PowerSaverOperation;->setSysBackgroundData(Landroid/content/ContentResolver;I)V

    .line 175
    :cond_0
    return-void
.end method

.method public setBluetooth(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "sharedPreferences"

    .prologue
    .line 249
    const-string v0, "powersaver_bluetooth"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PowerSaverOperation;->setSysBluetooth(Z)V

    .line 253
    :cond_0
    return-void
.end method

.method public setBrightness(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "sharedPreferences"
    .parameter "mContentresolver"

    .prologue
    .line 281
    const-string v2, "powersaver_screen_brightness"

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const-string v2, "powersaver_screen_brightness_settings"

    const/16 v3, 0x66

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 285
    .local v0, brightness:I
    const-string v2, "powersaver_screen_brightness_settings_auto"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 288
    .local v1, brightness_mode:I
    invoke-virtual {p0, p2, v1, v0}, Lcom/android/systemui/statusbar/PowerSaverOperation;->setSysBrightness(Landroid/content/ContentResolver;II)V

    .line 290
    .end local v0           #brightness:I
    .end local v1           #brightness_mode:I
    :cond_0
    return-void
.end method

.method public setHapicFeedback(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "mContentresolver"

    .prologue
    .line 187
    const-string v0, "powersaver_haptic_feedback"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/PowerSaverOperation;->setSysHapicFeedback(Landroid/content/ContentResolver;I)V

    .line 191
    :cond_0
    return-void
.end method

.method public setOnscreenAnimations(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sharedPreferences"

    .prologue
    .line 358
    const-string v1, "powersaver_onscreen_animation"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    const/4 v1, 0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 361
    .local v0, mAnimationScales:[F
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PowerSaverOperation;->setSysOnscreenAnimations([F)V

    .line 363
    .end local v0           #mAnimationScales:[F
    :cond_0
    return-void

    .line 360
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setStatus(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "contentresolver"
    .parameter "STATUS"

    .prologue
    .line 91
    const-string v0, "powersaver_status"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    return-void
.end method

.method public setSysBackgroundData(Landroid/content/ContentResolver;I)V
    .locals 2
    .parameter "contentresolver"
    .parameter "Enable"

    .prologue
    .line 179
    const-string v0, "background_data"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const-string v0, "Powersaver"

    const-string v1, "error at Secure.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-void
.end method

.method public setSysBluetooth(Z)V
    .locals 3
    .parameter "Enable"

    .prologue
    const-string v2, "Powersaver"

    .line 257
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 258
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 260
    const-string v1, "Powersaver"

    const-string v1, "Bluetooth is not supported on this hardware platform."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    if-eqz p1, :cond_2

    .line 265
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    const-string v1, "Powersaver"

    const-string v1, "error at bluetoothAdapter.enable()."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disableFromPowerSaver()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    const-string v1, "Powersaver"

    const-string v1, "error at bluetoothAdapter.disable()."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSysBrightness(Landroid/content/ContentResolver;II)V
    .locals 6
    .parameter "contentresolver"
    .parameter "brightness_mode"
    .parameter "brightness"

    .prologue
    const-string v5, "screen_brightness_mode"

    const-string v4, "error at Settings.System.putInt"

    const-string v3, "Powersaver"

    .line 295
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 297
    const-string v2, "screen_brightness_mode"

    invoke-static {p1, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    const-string v2, "Powersaver"

    const-string v2, "error at Settings.System.putInt"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const-string v2, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {p1, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 310
    const-string v2, "Powersaver"

    const-string v2, "error at Settings.System.putInt"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_2
    const-string v2, "screen_brightness"

    invoke-static {p1, v2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 317
    const-string v2, "Powersaver"

    const-string v2, "error at Settings.System.putInt"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_3
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 325
    .local v1, power:Landroid/os/IPowerManager;
    if-nez v1, :cond_4

    .line 327
    const-string v2, "Powersaver"

    const-string v3, "error at IPowerManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_4
    invoke-interface {v1, p3}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSysHapicFeedback(Landroid/content/ContentResolver;I)V
    .locals 2
    .parameter "contentresolver"
    .parameter "Enable"

    .prologue
    .line 196
    const-string v0, "haptic_feedback_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const-string v0, "Powersaver"

    const-string v1, "error at Settings.System.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    return-void
.end method

.method public setSysOnscreenAnimations([F)V
    .locals 4
    .parameter "AnimationScales"

    .prologue
    .line 366
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 367
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    if-nez v1, :cond_0

    .line 369
    const-string v2, "Powersaver"

    const-string v3, "error at IWindowManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 375
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSysTimeOut(Landroid/content/ContentResolver;I)V
    .locals 2
    .parameter "contentresolver"
    .parameter "value"

    .prologue
    .line 350
    const-string v0, "screen_off_timeout"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const-string v0, "Powersaver"

    const-string v1, "error at Settings.System.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    return-void
.end method

.method public setSysWifi(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "Enable"

    .prologue
    .line 212
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 213
    .local v3, wifimgr:Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_0

    .line 215
    const-string v4, "Powersaver"

    const-string v5, "error at getSystemService(Context.WIFI_SERVICE)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 218
    .local v0, CM:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 220
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz p2, :cond_2

    .line 224
    :try_start_0
    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    :try_start_1
    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 239
    :catch_1
    move-exception v1

    .line 241
    .restart local v1       #e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTimeOut(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "mContentresolver"

    .prologue
    .line 341
    const-string v1, "powersaver_screen_timeout"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const-string v1, "powersaver_screen_timeout_settings"

    const/16 v2, 0x7530

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 344
    .local v0, value:I
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/PowerSaverOperation;->setSysTimeOut(Landroid/content/ContentResolver;I)V

    .line 346
    .end local v0           #value:I
    :cond_0
    return-void
.end method

.method public setWifi(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "mContext"

    .prologue
    .line 204
    const-string v0, "powersaver_wifi"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/PowerSaverOperation;->setSysWifi(Landroid/content/Context;Z)V

    .line 208
    :cond_0
    return-void
.end method
