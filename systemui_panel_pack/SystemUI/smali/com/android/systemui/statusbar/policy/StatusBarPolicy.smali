.class public Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;,
        Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;,
        Lcom/android/systemui/statusbar/policy/StatusBarPolicy$HtcFeatureList;
    }
.end annotation


# static fields
.field private static final ACTION_SLEEP_MODE_END:Ljava/lang/String; = "com.android.systemui.statusbar.action.sleep_mode_end"

.field private static final ACTION_SLEEP_MODE_START:Ljava/lang/String; = "com.android.systemui.statusbar.action.sleep_mode_start"

.field private static final AM_PM_STYLE:I = 0x2

.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final BATTERY_WIRELESS_CHARGNING_START:I = 0x1

.field private static final BATTERY_WIRELESS_CHARGNING_STOP:I = 0x2

.field public static final EVENT_ATT_DATA_CHANGE_TIMEOUT:I = 0x384

.field private static final EVENT_BATTERY_CLOSE:I = 0x4

.field private static final EVENT_FORCE_UPDATE_DATA_ICON:I = 0x33

.field private static final EVENT_STOP_LOW_BATTERY_TONE:I = 0x32

.field private static final HTC_DEBUG:Z = true

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field private static final PROP_KEY_HSDPA_CATEGORY:Ljava/lang/String; = "ro.ril.hsdpa.category"

.field private static final SHOW_BATTERY_WARNINGS_IN_CALL:Z = true

.field private static final SHOW_LOW_BATTERY_WARNING:Z = true

.field private static final SLEEP_MODE_END_REQUEST_CODE:I = 0x1f91

.field private static final SLEEP_MODE_START_REQUEST_CODE:I = 0x1f90

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_5_LEVEL_SIGNAL:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarPolicy"

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32

.field private static final USE_VZW_CUSTOM_3G_ICON:Z = false

.field private static final USE_VZW_CUSTOM_3G_ICON_DEVICE:Z = false

.field static final WORLD_PHONE_CONFIG:Z = false

.field private static final htcGsm6SignalImages:[[I = null

.field private static final htcGsm6SignalImages_r:[[I = null

.field private static final s5LevelSignalImages:[I = null

.field private static final s5LevelSignalImages_r:[I = null

.field private static sAlarmWakeLock:Landroid/os/PowerManager$WakeLock; = null

.field private static sBCheckSleepMode:Ljava/lang/Boolean; = null

.field private static final sCWConnected:[I = null

.field private static final sCWRegistered:[I = null

.field private static final sDataNetCapability:[I = null

.field private static final sDataNetType_1x:[[I = null

.field private static final sDataNetType_2g:[[I = null

.field private static final sDataNetType_3_5g:[[I = null

.field private static final sDataNetType_3g:[[I = null

.field private static final sDataNetType_3g_plus:[[I = null

.field private static final sDataNetType_4g:[[I = null

.field private static final sDataNetType_e:[[I = null

.field private static final sDataNetType_g:[[I = null

.field private static final sDataNetType_h:[[I = null

.field private static final sDataNetType_lte:[[I = null

.field private static final sDataNetType_td:[[I = null

.field private static final sDataNetType_vzw_lte:[[I = null

.field private static sInstance:Lcom/android/systemui/statusbar/policy/StatusBarPolicy; = null

.field private static final sMetaCAPSImages:[I = null

.field private static final sMetaFNImages:[I = null

.field private static final sRoamingIndicatorImages_cdma:[I = null

.field private static final sSignalImages:[[I = null

.field private static final sSignalImages_r:[[I = null

.field private static final sWifiSignalImages:[[I = null

.field private static final sWifiTemporarilyNotConnectedImage:I = 0x7f020175


# instance fields
.field final WIRELESS_CHARGING_NOTFICATION_ID:I

.field final WIRELESS_CHARGING_NOTFICATION_TAG:Ljava/lang/String;

.field private createStorageManager:Ljava/lang/Runnable;

.field private isShowingWirelessCharging:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlwaysUseCdmaRssi:Z

.field private mAttPdpHandler:Landroid/os/Handler;

.field private mBatteryFirst:Z

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryLevelTextView2:Landroid/widget/TextView;

.field private mBatteryPlugged:Z

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private mBluetoothA2dpConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mCAPSVisible:Z

.field private mCWIconList:[I

.field private mCWModeState:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPos:I

.field mDataActivity:I

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private mFNVisible:Z

.field private mHTCWirelessSleepEndTimeSecond:I

.field private mHTCWirelessSleepModeEnabled:Ljava/lang/Boolean;

.field private mHTCWirelessSleepStartTimeSecond:I

.field private final mHandler:Landroid/os/Handler;

.field private mHspaDataDistinguishable:Z

.field mHtcATTDataCategory:I

.field private mHtcCdmaStatusBar:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

.field private mHtcWimaxStatusBar:Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;

.field private mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

.field private mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

.field private mImgLength:I

.field private mInetCondition:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCWRegistered:Z

.field private mIsWifiConnected:Z

.field private mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

.field mLastHtcATTDataCategory:I

.field mLastHtcAttDataActivity:I

.field private mLastWifiSignalLevel:I

.field private mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLowBatteryListener2:Landroid/content/DialogInterface$OnDismissListener;

.field private final mLowBatteryWarningLevel:I

.field private final mLowBatteryWarningLevel2:I

.field private mLowCategoryHspa:Z

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSignalIconId:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPluggedBatteryLevel:I

.field private mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

.field private mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

.field private final mService:Landroid/app/StatusBarManager;

.field mServiceState:Landroid/telephony/ServiceState;

.field mServiceStateData:[Landroid/telephony/ServiceState;

.field mServiceStateVoice:[Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mVolumeVisible:Z

.field private mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

.field private mshowLowChargingWarning:Z

.field private mshowLowChargingWarning2:Z

.field private otherAppsContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 321
    new-array v0, v4, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    .line 333
    new-array v0, v4, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_r:[[I

    .line 345
    const/16 v0, 0x54

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 448
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    .line 471
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    check-cast v0, [[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    .line 496
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_e:[[I

    .line 507
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h:[[I

    .line 521
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3_5g:[[I

    .line 534
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_td:[[I

    .line 546
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g_plus:[[I

    .line 561
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_2g:[[I

    .line 573
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_4g:[[I

    .line 586
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->s5LevelSignalImages:[I

    .line 595
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->s5LevelSignalImages_r:[I

    .line 604
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_19

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetCapability:[I

    .line 616
    new-array v0, v4, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->htcGsm6SignalImages:[[I

    .line 632
    new-array v0, v4, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->htcGsm6SignalImages_r:[[I

    .line 651
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_vzw_lte:[[I

    .line 663
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_lte:[[I

    .line 678
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    .line 690
    new-array v0, v4, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sMetaFNImages:[I

    .line 695
    new-array v0, v4, [I

    fill-array-data v0, :array_25

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sMetaCAPSImages:[I

    .line 733
    new-array v0, v6, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sCWRegistered:[I

    .line 741
    new-array v0, v6, [I

    fill-array-data v0, :array_27

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sCWConnected:[I

    .line 758
    new-array v0, v4, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_29

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    .line 792
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sBCheckSleepMode:Ljava/lang/Boolean;

    .line 795
    const-wide/high16 v0, 0x400c

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->SUPPORT_5_LEVEL_SIGNAL:Z

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    .line 321
    :array_0
    .array-data 0x4
        0x5bt 0x1t 0x2t 0x7ft
        0x5dt 0x1t 0x2t 0x7ft
        0x5ft 0x1t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
        0x63t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x5bt 0x1t 0x2t 0x7ft
        0x5dt 0x1t 0x2t 0x7ft
        0x5ft 0x1t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
        0x63t 0x1t 0x2t 0x7ft
    .end array-data

    .line 333
    :array_2
    .array-data 0x4
        0x4bt 0x1t 0x2t 0x7ft
        0x4dt 0x1t 0x2t 0x7ft
        0x4ft 0x1t 0x2t 0x7ft
        0x51t 0x1t 0x2t 0x7ft
        0x53t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x4ct 0x1t 0x2t 0x7ft
        0x4et 0x1t 0x2t 0x7ft
        0x50t 0x1t 0x2t 0x7ft
        0x52t 0x1t 0x2t 0x7ft
        0x54t 0x1t 0x2t 0x7ft
    .end array-data

    .line 345
    :array_4
    .array-data 0x4
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
    .end array-data

    .line 448
    :array_5
    .array-data 0x4
        0xe5t 0x0t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
        0x2at 0x1t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0xfbt 0x0t 0x2t 0x7ft
        0x2t 0x1t 0x2t 0x7ft
        0x10t 0x1t 0x2t 0x7ft
        0x9t 0x1t 0x2t 0x7ft
    .end array-data

    .line 471
    :array_7
    .array-data 0x4
        0xddt 0x0t 0x2t 0x7ft
        0x15t 0x1t 0x2t 0x7ft
        0x33t 0x1t 0x2t 0x7ft
        0x24t 0x1t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0xf8t 0x0t 0x2t 0x7ft
        0xfft 0x0t 0x2t 0x7ft
        0xdt 0x1t 0x2t 0x7ft
        0x6t 0x1t 0x2t 0x7ft
    .end array-data

    .line 496
    :array_9
    .array-data 0x4
        0xe2t 0x0t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
        0x28t 0x1t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0xfat 0x0t 0x2t 0x7ft
        0x1t 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
    .end array-data

    .line 507
    :array_b
    .array-data 0x4
        0xe7t 0x0t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x2bt 0x1t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0xfct 0x0t 0x2t 0x7ft
        0x3t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
        0xat 0x1t 0x2t 0x7ft
    .end array-data

    .line 521
    :array_d
    .array-data 0x4
        0xe8t 0x0t 0x2t 0x7ft
        0x1dt 0x1t 0x2t 0x7ft
        0x3bt 0x1t 0x2t 0x7ft
        0x2ct 0x1t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0xe8t 0x0t 0x2t 0x7ft
        0x1dt 0x1t 0x2t 0x7ft
        0x3bt 0x1t 0x2t 0x7ft
        0x2ct 0x1t 0x2t 0x7ft
    .end array-data

    .line 534
    :array_f
    .array-data 0x4
        0xebt 0x0t 0x2t 0x7ft
        0x1ft 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
        0x2et 0x1t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0xebt 0x0t 0x2t 0x7ft
        0x1ft 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
        0x2et 0x1t 0x2t 0x7ft
    .end array-data

    .line 546
    :array_11
    .array-data 0x4
        0xe0t 0x0t 0x2t 0x7ft
        0x17t 0x1t 0x2t 0x7ft
        0x35t 0x1t 0x2t 0x7ft
        0x26t 0x1t 0x2t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0xe0t 0x0t 0x2t 0x7ft
        0x17t 0x1t 0x2t 0x7ft
        0x35t 0x1t 0x2t 0x7ft
        0x26t 0x1t 0x2t 0x7ft
    .end array-data

    .line 561
    :array_13
    .array-data 0x4
        0xdat 0x0t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
        0x31t 0x1t 0x2t 0x7ft
        0x22t 0x1t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0xdat 0x0t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
        0x31t 0x1t 0x2t 0x7ft
        0x22t 0x1t 0x2t 0x7ft
    .end array-data

    .line 573
    :array_15
    .array-data 0x4
        0xe1t 0x0t 0x2t 0x7ft
        0x18t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x27t 0x1t 0x2t 0x7ft
    .end array-data

    :array_16
    .array-data 0x4
        0xe1t 0x0t 0x2t 0x7ft
        0x18t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x27t 0x1t 0x2t 0x7ft
    .end array-data

    .line 586
    :array_17
    .array-data 0x4
        0xb6t 0x0t 0x2t 0x7ft
        0xb7t 0x0t 0x2t 0x7ft
        0xb8t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
    .end array-data

    .line 595
    :array_18
    .array-data 0x4
        0x45t 0x1t 0x2t 0x7ft
        0x46t 0x1t 0x2t 0x7ft
        0x47t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
        0x49t 0x1t 0x2t 0x7ft
        0x4at 0x1t 0x2t 0x7ft
    .end array-data

    .line 604
    :array_19
    .array-data 0x4
        0xe6t 0x0t 0x2t 0x7ft
        0xe3t 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
        0xbdt 0x1t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
    .end array-data

    .line 616
    :array_1a
    .array-data 0x4
        0x72t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1b
    .array-data 0x4
        0x72t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
    .end array-data

    .line 632
    :array_1c
    .array-data 0x4
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_1d
    .array-data 0x4
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 651
    :array_1e
    .array-data 0x4
        0xedt 0x0t 0x2t 0x7ft
        0x20t 0x1t 0x2t 0x7ft
        0x3et 0x1t 0x2t 0x7ft
        0x2ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_1f
    .array-data 0x4
        0xedt 0x0t 0x2t 0x7ft
        0x20t 0x1t 0x2t 0x7ft
        0x3et 0x1t 0x2t 0x7ft
        0x2ft 0x1t 0x2t 0x7ft
    .end array-data

    .line 663
    :array_20
    .array-data 0x4
        0xe9t 0x0t 0x2t 0x7ft
        0x1et 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x2dt 0x1t 0x2t 0x7ft
    .end array-data

    :array_21
    .array-data 0x4
        0xe9t 0x0t 0x2t 0x7ft
        0x1et 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x2dt 0x1t 0x2t 0x7ft
    .end array-data

    .line 678
    :array_22
    .array-data 0x4
        0xd9t 0x0t 0x2t 0x7ft
        0x12t 0x1t 0x2t 0x7ft
        0x30t 0x1t 0x2t 0x7ft
        0x21t 0x1t 0x2t 0x7ft
    .end array-data

    :array_23
    .array-data 0x4
        0xf6t 0x0t 0x2t 0x7ft
        0xfdt 0x0t 0x2t 0x7ft
        0xbt 0x1t 0x2t 0x7ft
        0x4t 0x1t 0x2t 0x7ft
    .end array-data

    .line 690
    :array_24
    .array-data 0x4
        0xb3t 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
    .end array-data

    .line 695
    :array_25
    .array-data 0x4
        0xb1t 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
    .end array-data

    .line 733
    :array_26
    .array-data 0x4
        0xc2t 0x0t 0x2t 0x7ft
        0xc3t 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xc5t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 741
    :array_27
    .array-data 0x4
        0xbdt 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
    .end array-data

    .line 758
    :array_28
    .array-data 0x4
        0x76t 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
        0x7ct 0x1t 0x2t 0x7ft
    .end array-data

    :array_29
    .array-data 0x4
        0x77t 0x1t 0x2t 0x7ft
        0x79t 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
        0x7dt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 273
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    .line 284
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 287
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPluggedBatteryLevel:I

    .line 288
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mshowLowChargingWarning:Z

    .line 289
    const/16 v9, 0xf

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryWarningLevel:I

    .line 291
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mshowLowChargingWarning2:Z

    .line 292
    const/16 v9, 0x19

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryWarningLevel2:I

    .line 307
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastHtcATTDataCategory:I

    .line 308
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastHtcAttDataActivity:I

    .line 312
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHtcATTDataCategory:I

    .line 313
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCurrentPos:I

    .line 314
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mImgLength:I

    .line 446
    sget-object v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 705
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 706
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    .line 707
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    .line 708
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    .line 749
    sget-object v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sCWRegistered:[I

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCWIconList:[I

    .line 751
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsCWRegistered:Z

    .line 754
    const-string v9, ""

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCWModeState:Ljava/lang/String;

    .line 771
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 772
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 775
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 782
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepModeEnabled:Ljava/lang/Boolean;

    .line 783
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    .line 784
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    .line 807
    new-instance v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 914
    new-instance v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->createStorageManager:Ljava/lang/Runnable;

    .line 1244
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    .line 1245
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    .line 1247
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    .line 1248
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    .line 1297
    const-string v9, "battery_wireless_charging"

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->WIRELESS_CHARGING_NOTFICATION_TAG:Ljava/lang/String;

    .line 1298
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->WIRELESS_CHARGING_NOTFICATION_ID:I

    .line 1330
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 1333
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isShowingWirelessCharging:Z

    .line 1697
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->otherAppsContext:Landroid/content/Context;

    .line 2175
    new-instance v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$8;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$8;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2185
    new-instance v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$9;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$9;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener2:Landroid/content/DialogInterface$OnDismissListener;

    .line 2263
    new-instance v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 925
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    .line 926
    const-string v9, "statusbar"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 927
    new-instance v9, Landroid/telephony/SignalStrength;

    invoke-direct {v9}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 928
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 931
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->createStorageManager:Ljava/lang/Runnable;

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 934
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "battery"

    const v11, 0x10802b3

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 941
    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 949
    const v9, 0x7f020166

    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 951
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "phone_signal"

    iget v11, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 952
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10d0014

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAlwaysUseCdmaRssi:Z

    .line 956
    new-instance v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAttPdpHandler:Landroid/os/Handler;

    .line 960
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v10, 0x9e1

    invoke-virtual {p1, v9, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 972
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    const v11, 0x7f0200e5

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 973
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 976
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "wifi"

    sget-object v11, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 977
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "wifi"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 981
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "tty"

    const v11, 0x7f020168

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 982
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "tty"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 985
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "cdma_eri"

    const v11, 0x7f020157

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 986
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "cdma_eri"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 989
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "gps"

    const v11, 0x7f020140

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 990
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "gps"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 993
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "alarm_clock"

    const v11, 0x7f0200b4

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 994
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "alarm_clock"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 997
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "sync_active"

    const v11, 0x1080292

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 998
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "sync_failing"

    const v11, 0x1080293

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 999
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "sync_active"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1000
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "sync_failing"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1003
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "volume"

    const v11, 0x7f020155

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1004
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "volume"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1005
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateVolume()V

    .line 1008
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "hw_meta_fn"

    sget-object v11, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sMetaFNImages:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1009
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "hw_meta_fn"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1010
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "hw_meta_caps"

    sget-object v11, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sMetaCAPSImages:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1011
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "hw_meta_caps"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1015
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "headset_plug"

    const v11, 0x7f020142

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1016
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "headset_plug"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1019
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "hac_status"

    const v11, 0x7f020141

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1020
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "hac_status"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->initWirelessCharging()V

    .line 1024
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1027
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1028
    const-string v9, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1029
    const-string v9, "com.htc.content.intent.action.BATTERY_WARNING_INFO"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1030
    const-string v9, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1031
    const-string v9, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1032
    const-string v9, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1033
    const-string v9, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1034
    const-string v9, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1035
    const-string v9, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1036
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1037
    const-string v9, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1038
    const-string v9, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1039
    const-string v9, "android.bluetooth.device.action.PROFILE_CONNECTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1040
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1041
    const-string v9, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1042
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1043
    const-string v9, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1044
    const-string v9, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1045
    const-string v9, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1046
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1047
    const-string v9, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1048
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1049
    const-string v9, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1050
    const-string v9, "com.htc.content.Intent.ACTION_HW_META_UPDATE"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1051
    const-string v9, "com.htc.powersaversetting"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1052
    const-string v9, "com.android.server.batteryservice.action.SHOW_WIRELESS_CHARGING"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1053
    const-string v9, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1055
    const-string v9, "android.intent.action.HAC_STATE_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v3, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1075
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f06

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 1098
    new-instance v9, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;-><init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHtcCdmaStatusBar:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    .line 1103
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_1

    .line 1108
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1109
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_6

    .line 1110
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 1111
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "bluetooth"

    const v11, 0x7f0200d7

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1115
    :cond_2
    :goto_1
    const-string v9, "StatusBarPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initial bt icon:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    sget-object v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sBCheckSleepMode:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getPersistedWirelessSleepMode()V

    .line 1124
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.android.systemui.statusbar.action.sleep_mode_start"

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1125
    .local v6, intentSleepModeStart:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const/16 v10, 0x1f90

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    .line 1126
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.systemui.statusbar.action.sleep_mode_end"

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1127
    .local v5, intentSleepModeEnd:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const/16 v10, 0x1f91

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    .line 1128
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1129
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepModeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1132
    .local v1, calendar:Ljava/util/Calendar;
    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit8 v9, v9, 0x3c

    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v9, v10

    const/16 v10, 0xd

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int v4, v9, v10

    .line 1133
    .local v4, iCurrentSecond:I
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1134
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1135
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1136
    iget v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-ge v9, v10, :cond_3

    .line 1138
    iget v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-lt v4, v9, :cond_3

    .line 1140
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1143
    :cond_3
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iget v11, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    add-long v7, v9, v11

    .line 1144
    .local v7, lTriggerTime:J
    const-string v9, "StatusBarPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SleepMode start at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-le v9, v10, :cond_4

    const/16 v9, 0x3c

    if-le v4, v9, :cond_4

    .line 1147
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1148
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1149
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1150
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1152
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v7, v8, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1153
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iget v11, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    add-long v7, v9, v11

    .line 1154
    const-string v9, "StatusBarPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SleepMode end at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v7, v8, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1163
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v4           #iCurrentSecond:I
    .end local v7           #lTriggerTime:J
    :goto_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sput-object v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sBCheckSleepMode:Ljava/lang/Boolean;

    .line 1168
    .end local v5           #intentSleepModeEnd:Landroid/content/Intent;
    .end local v6           #intentSleepModeStart:Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->processIfLowCategoryHspa()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowCategoryHspa:Z

    .line 1170
    return-void

    .line 1077
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1078
    .local v2, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z

    goto/16 :goto_0

    .line 1113
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_1

    .line 1159
    .restart local v5       #intentSleepModeEnd:Landroid/content/Intent;
    .restart local v6       #intentSleepModeStart:Landroid/content/Intent;
    :cond_7
    const-string v9, "StatusBarPolicy"

    const-string v10, "clear sleep mode alarm"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1161
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_2
.end method

.method private PowerSaverOn(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1658
    const-string v1, "case"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1659
    .local v0, getCase:I
    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PowerSaverOn] getCase = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->PowerSaverOnWarning(I)V

    .line 1668
    return-void
.end method

.method private PowerSaverOnWarning(I)V
    .locals 30
    .parameter "casenum"

    .prologue
    .line 1702
    const-string v26, "StatusBarPolicy"

    const-string v27, "[PowerSaverOnWarning]"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const/4 v12, 0x0

    .line 1706
    .local v12, getMessageOnDialog:I
    const/4 v11, 0x0

    .line 1713
    .local v11, getDialogTitle:I
    const/16 v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 1715
    const v12, 0x20c0227

    .line 1718
    const v11, 0x20c022a

    .line 1752
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    .line 1770
    const-string v26, "StatusBarPolicy"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PowerSaverOnWarning, show (actual "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "% + 1%)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v26

    move v1, v12

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 1775
    .local v22, levelText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1777
    const-string v26, "StatusBarPolicy"

    const-string v27, "[PowerSaverOnWarning]  mBatteryLevelTextView != null "

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    const-string v26, "3.0"

    const-string v27, "3.5"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/high16 v27, -0x100

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2002
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->startLowBatteryTone()V

    .line 2003
    return-void

    .line 1721
    .end local v22           #levelText:Ljava/lang/CharSequence;
    :cond_2
    const/16 v26, 0x2

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 1723
    const v12, 0x20c0229

    .line 1725
    const v11, 0x20c022b

    goto/16 :goto_0

    .line 1728
    :cond_3
    const/16 v26, 0x3

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1730
    const v12, 0x20c0228

    .line 1733
    const v11, 0x20c022b

    goto/16 :goto_0

    .line 1787
    .restart local v22       #levelText:Ljava/lang/CharSequence;
    :cond_4
    const-string v26, "StatusBarPolicy"

    const-string v27, "[PowerSaverOnWarning]  mBatteryLevelTextView == null "

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f030004

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 1793
    .local v25, v:Landroid/view/View;
    const v26, 0x7f0a0010

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1795
    const-string v26, "3.0"

    const-string v27, "3.5"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/high16 v27, -0x100

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1801
    :cond_5
    const/16 v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 1803
    const-string v26, "StatusBarPolicy"

    const-string v27, "[PowerSaverOnWarning]  case 1 "

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "com.android.settings"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->otherAppsContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->otherAppsContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "powersaver_shared"

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 1828
    .local v24, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v26, "powersaver_backgrounddata"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1830
    .local v6, getBackgroundDataSetValue:Z
    new-instance v23, Lcom/android/server/PowerSaverOperation;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/PowerSaverOperation;-><init>()V

    .line 1831
    .local v23, powerObj:Lcom/android/server/PowerSaverOperation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/PowerSaverOperation;->getSysWifi(Landroid/content/Context;)Z

    move-result v15

    .line 1832
    .local v15, getWiFiSetValue:Z
    invoke-static {}, Lcom/android/server/PowerSaverOperation;->getSysBluetooth()Z

    move-result v7

    .line 1836
    .local v7, getBlueToothSetValue:Z
    const-string v26, "powersaver_screen_brightness"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1837
    .local v13, getScreenBrightnessSetValue:Z
    const-string v26, "powersaver_screen_timeout"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1839
    .local v14, getScreenTimeoutSetValue:Z
    const-string v26, "StatusBarPolicy"

    const-string v27, "[PowerSaverOnWarning] get set value"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1842
    .local v3, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const/16 v26, 0x1

    move-object v0, v3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1843
    invoke-virtual {v3, v11}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1844
    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1845
    const v26, 0x1080027

    move-object v0, v3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1846
    const v26, 0x104000a

    const/16 v27, 0x0

    move-object v0, v3

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1847
    const v26, 0x20c022c

    new-instance v27, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    move-object v0, v3

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1865
    const v26, 0x7f0a0003

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 1866
    .local v16, icon:Landroid/widget/ImageView;
    const/16 v26, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1871
    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v4

    .line 1872
    .local v4, d:Lcom/htc/dialog/HtcAlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v26, v0

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1873
    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v26

    const/16 v27, 0x7d3

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->setType(I)V

    .line 1874
    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 1879
    if-nez v7, :cond_6

    .line 1881
    const v26, 0x7f0a0011

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1882
    .local v17, icon1:Landroid/widget/ImageView;
    const v26, 0x7f020082

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1883
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1885
    .end local v17           #icon1:Landroid/widget/ImageView;
    :cond_6
    if-nez v15, :cond_7

    .line 1887
    const v26, 0x7f0a0012

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1888
    .local v18, icon2:Landroid/widget/ImageView;
    const v26, 0x7f020083

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1889
    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1891
    .end local v18           #icon2:Landroid/widget/ImageView;
    :cond_7
    if-eqz v13, :cond_8

    .line 1893
    const v26, 0x7f0a0013

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 1894
    .local v19, icon3:Landroid/widget/ImageView;
    const v26, 0x7f0201cc

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1895
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1897
    .end local v19           #icon3:Landroid/widget/ImageView;
    :cond_8
    if-eqz v14, :cond_9

    .line 1899
    const v26, 0x7f0a0014

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 1900
    .local v20, icon4:Landroid/widget/ImageView;
    const v26, 0x7f0201cd

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1901
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1903
    .end local v20           #icon4:Landroid/widget/ImageView;
    :cond_9
    if-eqz v6, :cond_a

    .line 1905
    const v26, 0x7f0a0015

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 1906
    .local v21, icon5:Landroid/widget/ImageView;
    const v26, 0x7f0201d6

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1907
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1911
    .end local v21           #icon5:Landroid/widget/ImageView;
    :cond_a
    const v26, 0x20200b2

    move-object v0, v4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1912
    .local v8, getButton1:Landroid/widget/Button;
    if-eqz v8, :cond_b

    .line 1914
    const/16 v26, 0x0

    move-object v0, v8

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1917
    :cond_b
    const v26, 0x20200b6

    move-object v0, v4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1918
    .local v9, getButton2:Landroid/widget/Button;
    if-eqz v9, :cond_c

    .line 1920
    const/16 v26, 0x0

    move-object v0, v9

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1922
    :cond_c
    const v26, 0x20200b4

    move-object v0, v4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1923
    .local v10, getButton3:Landroid/widget/Button;
    if-eqz v10, :cond_d

    .line 1925
    const/16 v26, 0x0

    move-object v0, v10

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1928
    :cond_d
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    goto/16 :goto_1

    .line 1811
    .end local v3           #b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    .end local v4           #d:Lcom/htc/dialog/HtcAlertDialog;
    .end local v6           #getBackgroundDataSetValue:Z
    .end local v7           #getBlueToothSetValue:Z
    .end local v8           #getButton1:Landroid/widget/Button;
    .end local v9           #getButton2:Landroid/widget/Button;
    .end local v10           #getButton3:Landroid/widget/Button;
    .end local v13           #getScreenBrightnessSetValue:Z
    .end local v14           #getScreenTimeoutSetValue:Z
    .end local v15           #getWiFiSetValue:Z
    .end local v16           #icon:Landroid/widget/ImageView;
    .end local v23           #powerObj:Lcom/android/server/PowerSaverOperation;
    .end local v24           #sharedPreferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v26

    move-object/from16 v5, v26

    .line 1813
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 1930
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e
    const/16 v26, 0x2

    move/from16 v0, p1

    move/from16 v1, v26

    if-eq v0, v1, :cond_f

    const/16 v26, 0x3

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 1932
    :cond_f
    const-string v26, "StatusBarPolicy"

    const-string v27, "[PowerSaverOnWarning]  case 2 or 3"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1935
    .restart local v3       #b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const/16 v26, 0x1

    move-object v0, v3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1936
    invoke-virtual {v3, v11}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1937
    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1938
    const v26, 0x1080027

    move-object v0, v3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1939
    const v26, 0x104000a

    const/16 v27, 0x0

    move-object v0, v3

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1940
    const v26, 0x20c022d

    new-instance v27, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    move-object v0, v3

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1957
    const v26, 0x20c022c

    new-instance v27, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    move-object v0, v3

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1976
    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v4

    .line 1977
    .restart local v4       #d:Lcom/htc/dialog/HtcAlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v26, v0

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1978
    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v26

    const/16 v27, 0x7d3

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->setType(I)V

    .line 1979
    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 1982
    const v26, 0x20200b2

    move-object v0, v4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1983
    .restart local v8       #getButton1:Landroid/widget/Button;
    if-eqz v8, :cond_10

    .line 1985
    const/16 v26, 0x0

    move-object v0, v8

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1987
    :cond_10
    const v26, 0x20200b6

    move-object v0, v4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1988
    .restart local v9       #getButton2:Landroid/widget/Button;
    if-eqz v9, :cond_11

    .line 1990
    const/16 v26, 0x0

    move-object v0, v9

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1992
    :cond_11
    const v26, 0x20200b4

    move-object v0, v4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1993
    .restart local v10       #getButton3:Landroid/widget/Button;
    if-eqz v10, :cond_12

    .line 1995
    const/16 v26, 0x0

    move-object v0, v10

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1998
    :cond_12
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    goto/16 :goto_1
.end method

.method public static final SUPPORT_ATT_H_PLUSE_ICON()Z
    .locals 4

    .prologue
    .line 4010
    const-string v1, "ro.ril.hsdpa.category"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4012
    .local v0, category:I
    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HSDPA category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 4015
    :cond_0
    const/4 v1, 0x1

    .line 4017
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateHWMetaStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->onUnsupportedCharger(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showWirelessChargingStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/os/storage/StorageManager;)Landroid/os/storage/StorageManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView2:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryViewSequence:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getATTDataType()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mImgLength:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mImgLength:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAttPdpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->PowerSaverOn(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method private closeLastBatteryView()V
    .locals 2

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2204
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 2205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 2207
    :cond_0
    return-void
.end method

.method private getATTDataType()[I
    .locals 2

    .prologue
    .line 4149
    const/4 v0, 0x0

    .line 4150
    .local v0, value:[I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4189
    :pswitch_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 4191
    :goto_0
    return-object v1

    .line 4155
    :pswitch_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v1, :pswitch_data_1

    .line 4163
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_IDLE:[I

    goto :goto_0

    .line 4157
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_IN:[I

    goto :goto_0

    .line 4159
    :pswitch_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_OUT:[I

    goto :goto_0

    .line 4161
    :pswitch_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_INOUT:[I

    goto :goto_0

    .line 4166
    :pswitch_5
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v1, :pswitch_data_2

    .line 4174
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_LTE_IDLE:[I

    goto :goto_0

    .line 4168
    :pswitch_6
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_LTE_IN:[I

    goto :goto_0

    .line 4170
    :pswitch_7
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_LTE_OUT:[I

    goto :goto_0

    .line 4172
    :pswitch_8
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_LTE_INOUT:[I

    goto :goto_0

    .line 4178
    :pswitch_9
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v1, :pswitch_data_3

    .line 4186
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_E_IDLE:[I

    goto :goto_0

    .line 4180
    :pswitch_a
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_E_IN:[I

    goto :goto_0

    .line 4182
    :pswitch_b
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_E_OUT:[I

    goto :goto_0

    .line 4184
    :pswitch_c
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyATTIcons;->TELEPHONY_ATT_DATA_E_INOUT:[I

    goto :goto_0

    .line 4150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 4155
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 4166
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 4178
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getCdmaLevel()I
    .locals 5

    .prologue
    .line 2843
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 2844
    .local v0, cdmaDbm:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 2845
    .local v1, cdmaEcio:I
    const/4 v2, 0x0

    .line 2846
    .local v2, levelDbm:I
    const/4 v3, 0x0

    .line 2874
    .local v3, levelEcio:I
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 2881
    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 2887
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 2875
    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 2876
    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 2877
    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 2878
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2882
    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 2883
    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 2884
    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 2885
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 2887
    goto :goto_2
.end method

.method private getCdmaLevelDirectly()I
    .locals 5

    .prologue
    const-string v4, "StatusBarPolicy"

    .line 2801
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 2802
    .local v0, cdmaLevel:I
    const/4 v1, 0x4

    .line 2803
    .local v1, maxCdmaLevel:I
    const-string v2, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmaLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";max:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    if-le v0, v1, :cond_0

    .line 2808
    move v0, v1

    .line 2809
    const-string v2, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmaLevel > maxCdmaLevel, assign cdmaLevel= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_0
    if-gez v0, :cond_1

    .line 2813
    const/4 v0, 0x0

    .line 2814
    const-string v2, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmaLevel < 0, assign cdmaLevel= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    :cond_1
    return v0
.end method

.method private getEvdoLevel()I
    .locals 7

    .prologue
    .line 2891
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 2892
    .local v0, evdoDbm:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v2

    .line 2893
    .local v2, evdoSnr:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v1

    .line 2894
    .local v1, evdoEcio:I
    const/4 v3, 0x0

    .line 2895
    .local v3, levelEvdoDbm:I
    const/4 v5, 0x0

    .line 2896
    .local v5, levelEvdoSnr:I
    const/4 v4, 0x0

    .line 2921
    .local v4, levelEvdoEcio:I
    const/16 v6, -0x41

    if-lt v0, v6, :cond_0

    const/4 v3, 0x4

    .line 2927
    :goto_0
    const/4 v6, 0x7

    if-lt v2, v6, :cond_4

    const/4 v5, 0x4

    .line 2933
    :goto_1
    if-ge v3, v5, :cond_8

    move v6, v3

    :goto_2
    return v6

    .line 2922
    :cond_0
    const/16 v6, -0x4b

    if-lt v0, v6, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    .line 2923
    :cond_1
    const/16 v6, -0x5a

    if-lt v0, v6, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    .line 2924
    :cond_2
    const/16 v6, -0x69

    if-lt v0, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .line 2925
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 2928
    :cond_4
    const/4 v6, 0x5

    if-lt v2, v6, :cond_5

    const/4 v5, 0x3

    goto :goto_1

    .line 2929
    :cond_5
    const/4 v6, 0x3

    if-lt v2, v6, :cond_6

    const/4 v5, 0x2

    goto :goto_1

    .line 2930
    :cond_6
    const/4 v6, 0x1

    if-lt v2, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    .line 2931
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    move v6, v5

    .line 2933
    goto :goto_2
.end method

.method private getHdrSignalLevel()I
    .locals 7

    .prologue
    const-string v6, "getHdrSignalLevel:"

    const-string v5, ", maxCdmaLevel:"

    .line 2826
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoSignalBar()I

    move-result v0

    .line 2827
    .local v0, level:I
    const/4 v1, 0x4

    .line 2828
    .local v1, maxCdmaLevel:I
    const-string v2, "StatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHdrSignalLevel:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxCdmaLevel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHdrSignalLevel:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxCdmaLevel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    if-le v0, v1, :cond_0

    move v2, v1

    .line 2838
    :goto_0
    return v2

    .line 2834
    :cond_0
    if-gez v0, :cond_1

    .line 2836
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2838
    goto :goto_0
.end method

.method private static getHtcSenseVersion()F
    .locals 5

    .prologue
    const/high16 v4, 0x4120

    .line 1252
    :try_start_0
    const-string v3, "3.0"

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1253
    .local v1, tempIntVer:I
    int-to-float v3, v1

    div-float v2, v3, v4

    .local v2, version:F
    move v3, v2

    .line 1257
    .end local v1           #tempIntVer:I
    .end local v2           #version:F
    :goto_0
    return v3

    .line 1256
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1257
    .local v0, e:Ljava/lang/Exception;
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method private getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;
    .locals 5
    .parameter "getVoice"
    .parameter "radioTechnology"

    .prologue
    .line 3850
    const/4 v1, 0x0

    .line 3851
    .local v1, ss:Landroid/telephony/ServiceState;
    if-eqz p1, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceStateData:[Landroid/telephony/ServiceState;

    if-eqz v3, :cond_8

    .line 3853
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    move-object v2, v3

    .line 3854
    .local v2, ssList:[Landroid/telephony/ServiceState;
    :goto_0
    if-eqz v2, :cond_7

    .line 3855
    array-length v3, v2

    if-lez v3, :cond_7

    .line 3857
    const/4 v0, 0x0

    .line 3859
    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_3

    .line 3861
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3853
    .end local v0           #i:I
    .end local v2           #ssList:[Landroid/telephony/ServiceState;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceStateData:[Landroid/telephony/ServiceState;

    move-object v2, v3

    goto :goto_0

    .line 3863
    .restart local v0       #i:I
    .restart local v2       #ssList:[Landroid/telephony/ServiceState;
    :cond_3
    array-length v3, v2

    if-lt v0, v3, :cond_5

    .line 3864
    const/4 v0, 0x0

    .line 3866
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_5

    aget-object v3, v2, v0

    if-eqz v3, :cond_4

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 3868
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3871
    :cond_5
    array-length v3, v2

    if-lt v0, v3, :cond_6

    .line 3872
    const/4 v0, 0x0

    .line 3873
    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v3, v2, v0

    if-nez v3, :cond_6

    .line 3874
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3877
    :cond_6
    array-length v3, v2

    if-ge v0, v3, :cond_7

    .line 3878
    aget-object v1, v2, v0

    .line 3886
    .end local v0           #i:I
    .end local v2           #ssList:[Landroid/telephony/ServiceState;
    :cond_7
    :goto_4
    return-object v1

    .line 3884
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_4
.end method

.method private getLteLevel()I
    .locals 5

    .prologue
    .line 2937
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v3

    .line 2938
    .local v3, lteRsrp:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v2

    .line 2939
    .local v2, lteCqi:I
    const/4 v1, 0x0

    .line 2940
    .local v1, levelLteRsrp:I
    const/4 v0, 0x0

    .line 2942
    .local v0, levelLteCqi:I
    const/16 v4, -0x55

    if-lt v3, v4, :cond_0

    const/4 v1, 0x4

    .line 2948
    :goto_0
    const/16 v4, 0xb

    if-lt v2, v4, :cond_4

    const/4 v0, 0x4

    .line 2954
    :goto_1
    if-ge v1, v0, :cond_8

    move v4, v1

    :goto_2
    return v4

    .line 2943
    :cond_0
    const/16 v4, -0x5f

    if-lt v3, v4, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    .line 2944
    :cond_1
    const/16 v4, -0x69

    if-lt v3, v4, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 2945
    :cond_2
    const/16 v4, -0x73

    if-lt v3, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    .line 2946
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2949
    :cond_4
    const/4 v4, 0x7

    if-lt v2, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    .line 2950
    :cond_5
    const/4 v4, 0x5

    if-lt v2, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    .line 2951
    :cond_6
    const/4 v4, 0x3

    if-lt v2, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    .line 2952
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    move v4, v0

    .line 2954
    goto :goto_2
.end method

.method private getPersistedWirelessSleepMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4024
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4027
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "htc_wireless_sleep_mode_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepModeEnabled:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4036
    :goto_0
    :try_start_1
    const-string v2, "htc_wireless_sleep_start_time"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4045
    :goto_1
    :try_start_2
    const-string v2, "htc_wireless_sleep_end_time"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4053
    :goto_2
    return-void

    .line 4029
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 4031
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepModeEnabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 4038
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 4040
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    goto :goto_1

    .line 4047
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 4049
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    goto :goto_2
.end method

.method public static getWirelessChargingBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v6, 0x0

    .line 1464
    if-nez p0, :cond_0

    .line 1465
    const/4 v4, 0x0

    .line 1475
    :goto_0
    return-object v4

    .line 1467
    :cond_0
    const-string v4, "StatusBarPolicy"

    const-string v5, "Get wireless charging bitmap"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1469
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1470
    .local v0, height:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1471
    .local v1, shadow:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1472
    .local v2, shadowCanvas:Landroid/graphics/Canvas;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1473
    invoke-virtual {p0, v6, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1474
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v4, v1

    .line 1475
    goto :goto_0
.end method

.method private hasService()Z
    .locals 1

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v0

    return v0
.end method

.method private hasService(Landroid/telephony/ServiceState;)Z
    .locals 2
    .parameter "ss"

    .prologue
    const/4 v1, 0x0

    .line 2464
    if-eqz p1, :cond_0

    .line 2465
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2475
    const/4 v0, 0x1

    .line 2478
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 2473
    goto :goto_0

    :cond_0
    move v0, v1

    .line 2478
    goto :goto_0

    .line 2465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2408
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2410
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    move v0, v3

    .line 2415
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2410
    goto :goto_0

    .line 2411
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2413
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 2415
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private isChinaNet(Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"

    .prologue
    .line 3548
    const-string v0, "ChinaNet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ChinaNet_CW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ChinaNet_HomeCW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3550
    :cond_0
    const/4 v0, 0x1

    .line 3552
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 1

    .prologue
    .line 2428
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isEvdo(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method private isEvdo(Ljava/lang/Boolean;)Z
    .locals 4
    .parameter "checkVoice"

    .prologue
    .line 2431
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 2432
    .local v1, ss:Landroid/telephony/ServiceState;
    const/4 v0, 0x0

    .line 2433
    .local v0, isRadioTech:Z
    if-eqz v1, :cond_0

    .line 2434
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2443
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 2439
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2434
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isLte(Ljava/lang/Boolean;)Z
    .locals 4
    .parameter "checkVoice"

    .prologue
    const/4 v3, 0x0

    .line 2447
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2448
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const-string v2, "StatusBarPolicy"

    .line 1612
    const-string v0, "StatusBarPolicy"

    const-string v0, "onBatteryLow"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-string v0, "3.0"

    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    const-string v0, "StatusBarPolicy"

    const-string v0, "Before SHOW_LOW_BATTERY_WARNING"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V

    .line 1642
    :cond_0
    return-void
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 1677
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_2

    .line 1678
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 1680
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1683
    :cond_3
    return-void
.end method

.method private onUnsupportedCharger(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1586
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showOverVoltageWarning()V

    .line 1587
    return-void
.end method

.method private declared-synchronized pokeWakeLock(Z)V
    .locals 3
    .parameter "bLock"

    .prologue
    const-string v1, "StatusBarPolicy"

    .line 1337
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1338
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1340
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "StatusBarPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1342
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1343
    const-string v1, "StatusBarPolicy"

    const-string v2, "pokeWakeLock acquire"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1347
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 1348
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1349
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1350
    const-string v1, "StatusBarPolicy"

    const-string v2, "pokeWakeLock release"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1337
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private process4LevelSignalStrength(I)I
    .locals 10
    .parameter "asu"

    .prologue
    const-string v9, "StatusBarPolicy"

    .line 4109
    const/4 v0, 0x0

    .line 4110
    .local v0, iconLevel:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 4111
    .local v2, nwkType:I
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Network Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    const/16 v7, 0xd

    if-ne v2, v7, :cond_9

    .line 4114
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v3

    .line 4115
    .local v3, rsrp:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v5

    .line 4116
    .local v5, rsrq:I
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength: lteRsrp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lteRsrq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    if-gtz v3, :cond_0

    if-lez v5, :cond_1

    .line 4118
    :cond_0
    const/4 v4, 0x1

    .line 4119
    .local v4, rsrpLevel:I
    const/4 v6, 0x1

    .line 4120
    .local v6, rsrqLevel:I
    mul-int/lit8 v3, v3, -0x1

    .line 4121
    mul-int/lit8 v5, v5, -0x1

    .line 4123
    const/16 v7, -0x50

    if-le v3, v7, :cond_2

    const/4 v4, 0x4

    .line 4128
    :goto_0
    const/16 v7, -0xa

    if-le v5, v7, :cond_5

    const/4 v6, 0x4

    .line 4133
    :goto_1
    if-le v4, v6, :cond_8

    move v0, v6

    .end local v4           #rsrpLevel:I
    .end local v6           #rsrqLevel:I
    :cond_1
    :goto_2
    move v1, v0

    .line 4144
    .end local v0           #iconLevel:I
    .end local v3           #rsrp:I
    .end local v5           #rsrq:I
    .local v1, iconLevel:I
    :goto_3
    return v1

    .line 4124
    .end local v1           #iconLevel:I
    .restart local v0       #iconLevel:I
    .restart local v3       #rsrp:I
    .restart local v4       #rsrpLevel:I
    .restart local v5       #rsrq:I
    .restart local v6       #rsrqLevel:I
    :cond_2
    const/16 v7, -0x5a

    if-le v3, v7, :cond_3

    const/4 v4, 0x3

    goto :goto_0

    .line 4125
    :cond_3
    const/16 v7, -0x64

    if-le v3, v7, :cond_4

    const/4 v4, 0x2

    goto :goto_0

    .line 4126
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 4129
    :cond_5
    const/16 v7, -0xd

    if-le v5, v7, :cond_6

    const/4 v6, 0x3

    goto :goto_1

    .line 4130
    :cond_6
    const/16 v7, -0x10

    if-le v5, v7, :cond_7

    const/4 v6, 0x2

    goto :goto_1

    .line 4131
    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    move v0, v4

    .line 4133
    goto :goto_2

    .line 4138
    .end local v3           #rsrp:I
    .end local v4           #rsrpLevel:I
    .end local v5           #rsrq:I
    .end local v6           #rsrqLevel:I
    :cond_9
    const/4 v7, 0x1

    if-le p1, v7, :cond_a

    const/16 v7, 0x63

    if-ne p1, v7, :cond_b

    :cond_a
    const/4 v0, 0x0

    :goto_4
    move v1, v0

    .line 4144
    .end local v0           #iconLevel:I
    .restart local v1       #iconLevel:I
    goto :goto_3

    .line 4139
    .end local v1           #iconLevel:I
    .restart local v0       #iconLevel:I
    :cond_b
    const/16 v7, 0xc

    if-lt p1, v7, :cond_c

    const/4 v0, 0x4

    goto :goto_4

    .line 4140
    :cond_c
    const/16 v7, 0x8

    if-lt p1, v7, :cond_d

    const/4 v0, 0x3

    goto :goto_4

    .line 4141
    :cond_d
    const/4 v7, 0x4

    if-lt p1, v7, :cond_e

    const/4 v0, 0x2

    goto :goto_4

    .line 4142
    :cond_e
    const/4 v7, 0x2

    if-lt p1, v7, :cond_f

    const/4 v0, 0x1

    goto :goto_4

    .line 4143
    :cond_f
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private process5LevelSignalStrength(I)I
    .locals 2
    .parameter "asu"

    .prologue
    .line 4083
    const/4 v0, 0x0

    .line 4085
    .local v0, iconLevel:I
    if-lez p1, :cond_0

    const/16 v1, 0x63

    if-ne p1, v1, :cond_1

    .line 4086
    :cond_0
    const/4 v0, 0x0

    .line 4100
    :goto_0
    return v0

    .line 4087
    :cond_1
    const/16 v1, 0x11

    if-lt p1, v1, :cond_2

    .line 4088
    const/4 v0, 0x5

    goto :goto_0

    .line 4089
    :cond_2
    const/16 v1, 0xd

    if-lt p1, v1, :cond_3

    .line 4090
    const/4 v0, 0x4

    goto :goto_0

    .line 4091
    :cond_3
    const/16 v1, 0x8

    if-lt p1, v1, :cond_4

    .line 4092
    const/4 v0, 0x3

    goto :goto_0

    .line 4093
    :cond_4
    const/4 v1, 0x5

    if-lt p1, v1, :cond_5

    .line 4094
    const/4 v0, 0x2

    goto :goto_0

    .line 4095
    :cond_5
    const/4 v1, 0x3

    if-lt p1, v1, :cond_6

    .line 4096
    const/4 v0, 0x1

    goto :goto_0

    .line 4098
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processATTSignalStrength(I)I
    .locals 1
    .parameter "asu"

    .prologue
    .line 3905
    const/4 v0, 0x0

    .line 3976
    .local v0, iconLevel:I
    return v0
.end method

.method private processIfLowCategoryHspa()Z
    .locals 3

    .prologue
    .line 4060
    const/4 v1, 0x0

    .line 4062
    .local v1, isLowCategoryHspa:Z
    :try_start_0
    const-string v2, "ro.ril.hsdpa.category"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4063
    .local v0, category:I
    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    .line 4066
    :cond_0
    const/4 v1, 0x1

    .line 4072
    .end local v0           #category:I
    :goto_0
    return v1

    .line 4068
    .restart local v0       #category:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4070
    .end local v0           #category:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private processSBMSignalStrength(I)I
    .locals 1
    .parameter "asu"

    .prologue
    .line 3985
    const/4 v0, 0x0

    .line 3995
    .local v0, iconLevel:I
    return v0
.end method

.method private scheduleCloseBatteryView()V
    .locals 4

    .prologue
    .line 2196
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2197
    .local v0, m:Landroid/os/Message;
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryViewSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryViewSequence:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2198
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2199
    return-void
.end method

.method private setBatteryLevel(Landroid/view/View;IIII)V
    .locals 4
    .parameter "parent"
    .parameter "id"
    .parameter "height"
    .parameter "background"
    .parameter "level"

    .prologue
    .line 1686
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1687
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1688
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v3, p3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1689
    if-eqz p4, :cond_0

    .line 1690
    invoke-virtual {v2, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1691
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1692
    .local v0, bkg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1694
    .end local v0           #bkg:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private showLowBatteryWarning()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v10, "StatusBarPolicy"

    .line 2016
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    .line 2030
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showLowBatteryWarning, show (actual "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "% + 1%)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f080007

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2036
    .local v3, levelText:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView2:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 2037
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView2:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2038
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showLowBatteryWarning(), levelText = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->startLowBatteryTone()V

    .line 2099
    return-void

    .line 2040
    :cond_0
    const-string v5, "StatusBarPolicy"

    const-string v5, "mBatteryLevelTextView2 == null, prepare alter dialog - please connect charger"

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const/high16 v6, 0x7f03

    invoke-static {v5, v6, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2043
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView2:Landroid/widget/TextView;

    .line 2044
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView2:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2046
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2047
    .local v0, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    invoke-virtual {v0, v11}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 2048
    const v5, 0x7f080005

    invoke-virtual {v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 2049
    invoke-virtual {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 2050
    const v5, 0x1080027

    invoke-virtual {v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 2051
    const v5, 0x104000a

    invoke-virtual {v0, v5, v12}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 2053
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2054
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x5880

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2058
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2059
    const v5, 0x7f080008

    new-instance v6, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v5, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 2072
    :cond_1
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 2073
    .local v1, d:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener2:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v5}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2074
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 2075
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2076
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    goto :goto_0
.end method

.method private showLowChargingWarning()V
    .locals 5

    .prologue
    const-string v4, "StatusBarPolicy"

    .line 1543
    const-string v2, "StatusBarPolicy"

    const-string v2, "+showLowChargingWarning"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    .line 1546
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1547
    .local v0, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1548
    const v2, 0x20c01a5

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1549
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1551
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 1552
    .local v1, d:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1553
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1554
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 1556
    const-string v2, "StatusBarPolicy"

    const-string v2, "-showLowChargingWarning"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    return-void
.end method

.method private showLowChargingWarning2()V
    .locals 5

    .prologue
    const-string v4, "StatusBarPolicy"

    .line 1561
    const-string v2, "StatusBarPolicy"

    const-string v2, "+showLowChargingWarning2"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    .line 1564
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1565
    .local v0, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1566
    const v2, 0x7f08000a

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1567
    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1568
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1570
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 1571
    .local v1, d:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1572
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1573
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 1575
    const-string v2, "StatusBarPolicy"

    const-string v2, "-showLowChargingWarning2"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    return-void
.end method

.method private showOverVoltageWarning()V
    .locals 6

    .prologue
    .line 1590
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    .line 1592
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1593
    .local v0, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1594
    const/4 v3, 0x0

    .line 1596
    .local v3, msg:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x20c01a2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1600
    :goto_0
    if-eqz v3, :cond_0

    .line 1601
    invoke-virtual {v0, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1602
    :cond_0
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1604
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 1605
    .local v1, d:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1606
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1607
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 1608
    return-void

    .line 1597
    .end local v1           #d:Lcom/htc/dialog/HtcAlertDialog;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1598
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "StatusBarPolicy"

    const-string v5, "String charger_not_supported not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final showWirelessChargingStatus(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v11, "battery_wireless_charging"

    const-string v9, "StatusBarPolicy"

    .line 1300
    const-string v4, "status"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1301
    .local v3, status:I
    const-string v4, "StatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Wireless Charging] status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    packed-switch v3, :pswitch_data_0

    .line 1326
    const-string v4, "StatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Wireless Charging] wrong status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1304
    :pswitch_0
    new-instance v0, Landroid/app/Notification;

    const v4, 0x7f020001

    const-string v5, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1305
    .local v0, notifyDetails:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1307
    .local v1, notifyIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1308
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.framework.activity.location.HtcLocationSettingsProxy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1313
    .local v2, pIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f080036

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f080037

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1316
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v4, :cond_1

    .line 1317
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "battery_wireless_charging"

    invoke-virtual {v4, v11, v10, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 1319
    :cond_1
    const-string v4, "StatusBarPolicy"

    const-string v4, "mNotificationManager == null"

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1322
    .end local v0           #notifyDetails:Landroid/app/Notification;
    .end local v1           #notifyIntent:Landroid/content/Intent;
    .end local v2           #pIntent:Landroid/app/PendingIntent;
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v4, :cond_0

    .line 1323
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "battery_wireless_charging"

    invoke-virtual {v4, v11, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 1302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final showWirelessChargingStatusForVzW(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 1357
    const-string v8, "isCancel"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1358
    .local v3, isDialogCancel:Z
    const-string v8, "isInterruptShowing"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1359
    .local v4, isInterruptShowing:Z
    if-eqz v3, :cond_3

    .line 1360
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v8, :cond_0

    .line 1361
    const-string v8, "StatusBarPolicy"

    const-string v9, "[Wireless Charging] mWirelessChargingDialog is null"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :goto_0
    return-void

    .line 1365
    :cond_0
    if-nez v4, :cond_1

    .line 1366
    invoke-static {}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getHtcSenseVersion()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 1367
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    invoke-virtual {v8}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->removeView()V

    .line 1372
    :goto_1
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->pokeWakeLock(Z)V

    .line 1375
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 1377
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isShowingWirelessCharging:Z

    goto :goto_0

    .line 1370
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    invoke-virtual {v8}, Lcom/htc/lockscreen/HtcLSViewConnection;->removeView()V

    goto :goto_1

    .line 1381
    :cond_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isShowingWirelessCharging:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v8, :cond_4

    .line 1382
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 1383
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isShowingWirelessCharging:Z

    .line 1387
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f030001

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1390
    .local v7, v:Landroid/view/View;
    const v8, 0x7f0a0005

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1391
    .local v6, textBody:Landroid/widget/TextView;
    const v8, 0x7f0a0006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1392
    .local v2, imageBody:Landroid/widget/ImageView;
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1393
    .local v0, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1394
    invoke-virtual {v0, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1395
    const v8, 0x20800a0

    invoke-virtual {v0, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1396
    const-string v8, "3.0"

    const-string v9, "3.5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1399
    const/high16 v8, -0x100

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1402
    :cond_5
    const-string v8, "status"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1403
    .local v5, status:I
    const-string v8, "StatusBarPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Wireless Charging] status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    packed-switch v5, :pswitch_data_0

    .line 1444
    const-string v8, "StatusBarPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Wireless Charging] wrong status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1407
    :pswitch_0
    const v8, 0x7f080034

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1408
    const v8, 0x7f020002

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1409
    const v8, 0x7f080032

    invoke-virtual {v0, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1411
    invoke-static {}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getHtcSenseVersion()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_6

    .line 1412
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getWirelessChargingBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1413
    .local v1, iconBitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    invoke-virtual {v8, v1}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1414
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f080032

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setTitle(Ljava/lang/String;)V

    .line 1415
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f080038

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setHint(Ljava/lang/String;)V

    .line 1416
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f080039

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setDescript(Ljava/lang/String;)V

    .line 1422
    .end local v1           #iconBitmap:Landroid/graphics/Bitmap;
    :goto_2
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->pokeWakeLock(Z)V

    .line 1448
    :goto_3
    invoke-static {}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getHtcSenseVersion()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_8

    .line 1449
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->setView(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    .line 1456
    :goto_4
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 1457
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 1458
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 1459
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isShowingWirelessCharging:Z

    goto/16 :goto_0

    .line 1419
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    const v9, 0x7f0a0008

    const v10, 0x7f020002

    invoke-virtual {v8, v9, v10}, Lcom/htc/lockscreen/HtcLSView;->setImageViewResource(II)V

    .line 1420
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    const v9, 0x7f0a0009

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f080032

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/lockscreen/HtcLSView;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 1426
    :pswitch_1
    const v8, 0x7f080035

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1427
    const v8, 0x7f020003

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1428
    const v8, 0x7f080033

    invoke-virtual {v0, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1430
    invoke-static {}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getHtcSenseVersion()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_7

    .line 1431
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getWirelessChargingBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1432
    .restart local v1       #iconBitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    invoke-virtual {v8, v1}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1433
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f080033

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setTitle(Ljava/lang/String;)V

    .line 1434
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f08003a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setHint(Ljava/lang/String;)V

    .line 1435
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setDescript(Ljava/lang/String;)V

    .line 1441
    .end local v1           #iconBitmap:Landroid/graphics/Bitmap;
    :goto_5
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->pokeWakeLock(Z)V

    goto/16 :goto_3

    .line 1438
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    const v9, 0x7f0a0008

    const v10, 0x7f020003

    invoke-virtual {v8, v9, v10}, Lcom/htc/lockscreen/HtcLSView;->setImageViewResource(II)V

    .line 1439
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    const v9, 0x7f0a0009

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f080033

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/lockscreen/HtcLSView;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 1452
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    const-string v9, "main"

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    invoke-virtual {v8, v9, v10}, Lcom/htc/lockscreen/HtcLSViewConnection;->setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V

    .line 1453
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    invoke-virtual {v8}, Lcom/htc/lockscreen/HtcLSViewConnection;->updateView()V

    goto/16 :goto_4

    .line 1404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startLowBatteryTone()V
    .locals 11

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    const/16 v6, 0x32

    const/4 v4, 0x2

    const-string v10, "Exception caught while creating ToneGenerator: "

    .line 2102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->stopLowBatteryTone()V

    .line 2104
    iget v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    if-nez v3, :cond_1

    .line 2106
    const/16 v1, 0x19

    .line 2107
    .local v1, toneType:I
    const/16 v2, 0x50

    .line 2109
    .local v2, toneVolume:I
    :try_start_0
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2115
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v3, :cond_0

    .line 2116
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v3, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2117
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2137
    .end local v1           #toneType:I
    .end local v2           #toneVolume:I
    :cond_0
    :goto_1
    return-void

    .line 2110
    .restart local v1       #toneType:I
    .restart local v2       #toneVolume:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2111
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "StatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating ToneGenerator: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 2120
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #toneType:I
    .end local v2           #toneVolume:I
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    if-ne v3, v4, :cond_0

    .line 2122
    const/16 v1, 0x19

    .line 2123
    .restart local v1       #toneType:I
    const/16 v2, 0x50

    .line 2125
    .restart local v2       #toneVolume:I
    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2131
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v3, :cond_0

    .line 2132
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v3, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2133
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 2126
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 2127
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v3, "StatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating ToneGenerator: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2
.end method

.method private stopLowBatteryTone()V
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 2143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 2145
    :cond_0
    return-void
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1230
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1231
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1232
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v9, "StatusBarPolicy"

    .line 1479
    const-string v6, "icon-small"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1480
    .local v1, id:I
    const-string v6, "level"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1481
    .local v2, level:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "battery"

    invoke-virtual {v6, v7, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1483
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v5, v10

    .line 1484
    .local v5, plugged:Z
    :goto_0
    const-string v6, "level"

    invoke-virtual {p1, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1485
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1486
    .local v4, plugType:I
    const-string v6, "health"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1488
    .local v0, health:I
    const-string v6, "StatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBattery level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " plugged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mBatteryPlugged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mBatteryLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mBatteryFirst="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    .line 1497
    .local v3, oldPlugged:Z
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    .line 1498
    iput v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    .line 1500
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v6, :cond_0

    .line 1501
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    .line 1504
    :cond_0
    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    .line 1505
    const-string v6, "StatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cable plugged, mPluggedBatteryLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPluggedBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iput v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPluggedBatteryLevel:I

    .line 1507
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mshowLowChargingWarning:Z

    .line 1508
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mshowLowChargingWarning2:Z

    .line 1511
    :cond_1
    if-eqz v5, :cond_2

    if-ne v4, v11, :cond_2

    if-ne v0, v11, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPluggedBatteryLevel:I

    sub-int/2addr v6, v2

    if-lt v6, v11, :cond_2

    const/16 v6, 0xf

    if-gt v2, v6, :cond_2

    .line 1512
    const-string v6, "StatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@ mPluggedBatteryLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPluggedBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mshowLowChargingWarning:Z

    if-eqz v6, :cond_2

    .line 1514
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowChargingWarning()V

    .line 1515
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mshowLowChargingWarning:Z

    .line 1520
    :cond_2
    const-string v6, "StatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", health = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPluggedBatteryLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPluggedBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mLowBatteryWarningLevel2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mshowLowChargingWarning2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mshowLowChargingWarning2:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    if-eqz v5, :cond_3

    if-ne v0, v11, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPluggedBatteryLevel:I

    if-ge v2, v6, :cond_3

    const/16 v6, 0x19

    if-gt v2, v6, :cond_3

    .line 1522
    const-string v6, "StatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@@ mPluggedBatteryLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPluggedBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mshowLowChargingWarning2:Z

    if-eqz v6, :cond_3

    .line 1524
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowChargingWarning2()V

    .line 1525
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mshowLowChargingWarning2:Z

    .line 1540
    :cond_3
    return-void

    .end local v0           #health:I
    .end local v3           #oldPlugged:Z
    .end local v4           #plugType:I
    .end local v5           #plugged:Z
    :cond_4
    move v5, v8

    .line 1483
    goto/16 :goto_0
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "bluetooth"

    const-string v9, "StatusBarPolicy"

    .line 3511
    const v2, 0x7f0200d7

    .line 3512
    .local v2, iconId:I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3513
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3514
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3515
    .local v4, state:I
    const/16 v5, 0xc

    if-ne v4, v5, :cond_3

    move v5, v8

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 3537
    .end local v4           #state:I
    :cond_0
    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    if-eq v5, v10, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    if-eqz v5, :cond_2

    .line 3538
    :cond_1
    const v2, 0x7f0200d8

    .line 3541
    :cond_2
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBluetooth bt icon:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",HS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",A2DP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "bluetooth"

    invoke-virtual {v5, v11, v2, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3544
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "bluetooth"

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v5, v11, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3545
    :goto_2
    return-void

    .restart local v4       #state:I
    :cond_3
    move v5, v7

    .line 3515
    goto :goto_0

    .line 3516
    .end local v4           #state:I
    :cond_4
    const-string v5, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3517
    const-string v5, "android.bluetooth.headset.extra.STATE"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto :goto_1

    .line 3519
    :cond_5
    const-string v5, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3520
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 3521
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 3522
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 3524
    :cond_6
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 3526
    .end local v0           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :cond_7
    const-string v5, "android.bluetooth.device.action.PROFILE_CONNECTED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3527
    const-string v5, "android.bluetooth.device.extra.PROFILE"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3528
    .local v3, profile:I
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_PROFILE_CONNECTED :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    if-eq v3, v8, :cond_8

    if-ne v3, v10, :cond_0

    .line 3530
    :cond_8
    const v2, 0x7f0200d8

    goto/16 :goto_1

    .line 3533
    .end local v3           #profile:I
    :cond_9
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBluetooth via invalid intent!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateCDMASignalStrength()V
    .locals 7

    .prologue
    .line 2487
    const/4 v2, 0x1

    .line 2489
    .local v2, iconIndex:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    .line 2491
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v2

    .line 2492
    const-string v4, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@ iconIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isEvdo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2496
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getHdrSignalLevel()I

    move-result v0

    .line 2497
    .local v0, evdoLevel:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getCdmaLevelDirectly()I

    move-result v3

    .line 2499
    .local v3, iconLevel:I
    if-nez v2, :cond_1

    .line 2502
    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages_CT_r:[[I

    aget-object v4, v4, v0

    aget v1, v4, v3

    .line 2527
    .end local v0           #evdoLevel:I
    .local v1, iconId:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "phone_signal"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2528
    return-void

    .line 2507
    .end local v1           #iconId:I
    .restart local v0       #evdoLevel:I
    :cond_1
    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages_CT:[[I

    aget-object v4, v4, v0

    aget v1, v4, v3

    .restart local v1       #iconId:I
    goto :goto_0

    .line 2512
    .end local v0           #evdoLevel:I
    .end local v1           #iconId:I
    .end local v3           #iconLevel:I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getCdmaLevelDirectly()I

    move-result v3

    .line 2514
    .restart local v3       #iconLevel:I
    if-nez v2, :cond_3

    .line 2517
    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages1x_CT_r:[I

    aget v1, v4, v3

    .restart local v1       #iconId:I
    goto :goto_0

    .line 2522
    .end local v1           #iconId:I
    :cond_3
    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages1x_CT:[I

    aget v1, v4, v3

    .restart local v1       #iconId:I
    goto :goto_0
.end method

.method private final updateCallState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 2148
    iput p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    .line 2155
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_2

    .line 2156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_1

    .line 2157
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    if-nez v0, :cond_0

    .line 2158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V

    .line 2160
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 2173
    :cond_1
    :goto_0
    return-void

    .line 2164
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 2165
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_4

    .line 2166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2167
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_5

    .line 2168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2169
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    goto :goto_0
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "StatusBarPolicy"

    const-string v5, "cdma_eri"

    .line 3739
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3740
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3781
    :goto_0
    return-void

    .line 3744
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3745
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3749
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 3750
    .local v1, iconList:[I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 3751
    .local v0, iconIndex:I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 3753
    .local v2, iconMode:I
    if-ne v0, v4, :cond_2

    .line 3754
    const-string v3, "StatusBarPolicy"

    const-string v3, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3758
    :cond_2
    if-ne v2, v4, :cond_3

    .line 3759
    const-string v3, "StatusBarPolicy"

    const-string v3, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3763
    :cond_3
    if-ne v0, v7, :cond_4

    .line 3765
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3769
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 3780
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "phone_signal"

    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 3771
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    aget v4, v1, v0

    invoke-virtual {v3, v5, v4, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3772
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 3775
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    const v4, 0x7f020158

    invoke-virtual {v3, v5, v4, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3776
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 3769
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    const-string v9, "wifi"

    .line 2210
    const-string v5, "networkInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    move-object v0, v5

    check-cast v0, Landroid/net/NetworkInfo;

    move-object v4, v0

    .line 2212
    .local v4, info:Landroid/net/NetworkInfo;
    const-string v5, "inetCondition"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2216
    .local v1, connectionStatus:I
    const/4 v3, 0x0

    .line 2218
    .local v3, inetCondition:I
    const-string v5, "StatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity , info.getType()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , connectionStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2261
    :goto_0
    return-void

    .line 2221
    :pswitch_0
    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 2233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    .line 2234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_0

    .line 2237
    :pswitch_1
    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 2238
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2239
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 2241
    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v5, v10, :cond_0

    .line 2242
    sget-object v5, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v5, v5, v6

    aget v2, v5, v8

    .line 2246
    .local v2, iconId:I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v9, v2, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2248
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v9, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2258
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_0

    .line 2244
    .end local v2           #iconId:I
    :cond_0
    sget-object v5, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v2, v5, v6

    .restart local v2       #iconId:I
    goto :goto_1

    .line 2250
    .end local v2           #iconId:I
    :cond_1
    iput v10, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 2251
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 2252
    sget-object v5, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v5, v5, v8

    aget v2, v5, v8

    .line 2254
    .restart local v2       #iconId:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v9, v2, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2256
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v9, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v9, 0x0

    const-string v11, "data_connection"

    const-string v10, "StatusBarPolicy"

    .line 3130
    const/4 v6, 0x1

    .line 3133
    .local v6, visible:Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 3134
    .local v0, dataIconList:[I
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 3137
    .local v1, dss:Landroid/telephony/ServiceState;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3139
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    if-eq v7, v13, :cond_1

    .line 3140
    const-string v7, "StatusBarPolicy"

    const-string v7, "updateDataIcon()-Not in GSM phone type "

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    :cond_0
    :goto_0
    return-void

    .line 3152
    :cond_1
    if-nez v0, :cond_2

    .line 3153
    sget-object v7, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    iget v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v7, v8

    .line 3157
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v7, v8, :cond_9

    .line 3161
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    if-ne v7, v12, :cond_5

    .line 3185
    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v7, :pswitch_data_0

    .line 3215
    aget v2, v0, v9

    .line 3219
    .local v2, iconId:I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "data_connection"

    invoke-virtual {v7, v11, v2, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3477
    .end local v2           #iconId:I
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3479
    .local v3, ident:J
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-interface {v7, v8, v6}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3482
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3485
    :goto_3
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v7, v6, :cond_0

    .line 3486
    const-string v7, "StatusBarPolicy"

    const-string v7, "mDataIconVisible != visible"

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "data_connection"

    invoke-virtual {v7, v11, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3488
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    goto :goto_0

    .line 3191
    .end local v3           #ident:J
    :pswitch_0
    aget v2, v0, v13

    .line 3193
    .restart local v2       #iconId:I
    goto :goto_1

    .line 3199
    .end local v2           #iconId:I
    :pswitch_1
    aget v2, v0, v12

    .line 3201
    .restart local v2       #iconId:I
    goto :goto_1

    .line 3207
    .end local v2           #iconId:I
    :pswitch_2
    const/4 v7, 0x3

    aget v2, v0, v7

    .line 3209
    .restart local v2       #iconId:I
    goto :goto_1

    .line 3224
    .end local v2           #iconId:I
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGprsState()I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3319
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3320
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataNetType(I)V

    .line 3321
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get DataNetType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v7, :pswitch_data_1

    .line 3337
    aget v2, v0, v9

    .line 3340
    .restart local v2       #iconId:I
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "data_connection"

    invoke-virtual {v7, v11, v2, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 3324
    .end local v2           #iconId:I
    :pswitch_3
    aget v2, v0, v13

    .line 3325
    .restart local v2       #iconId:I
    goto :goto_4

    .line 3327
    .end local v2           #iconId:I
    :pswitch_4
    aget v2, v0, v12

    .line 3328
    .restart local v2       #iconId:I
    goto :goto_4

    .line 3330
    .end local v2           #iconId:I
    :pswitch_5
    const/4 v7, 0x3

    aget v2, v0, v7

    .line 3331
    .restart local v2       #iconId:I
    goto :goto_4

    .line 3333
    .end local v2           #iconId:I
    :pswitch_6
    aget v2, v0, v9

    .line 3334
    .restart local v2       #iconId:I
    goto :goto_4

    .line 3344
    .end local v2           #iconId:I
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 3348
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 3352
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWIFIOnly()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3353
    const v2, 0x7f020144

    .line 3354
    .restart local v2       #iconId:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "data_connection"

    invoke-virtual {v7, v11, v2, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 3362
    .end local v2           #iconId:I
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    if-eq v7, v12, :cond_b

    .line 3363
    const-string v7, "StatusBarPolicy"

    const-string v7, "updateDataIcon()-Not in CDMA phone type "

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3368
    :cond_b
    if-nez v0, :cond_c

    .line 3369
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getDataNetworkIconList_1x()[[I

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v7, v8

    .line 3379
    :cond_c
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasService()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mDataState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mPhone.htcModemLinkOn()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mDataActivity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getHtcDeviceSlotType()[Ljava/lang/String;

    move-result-object v5

    .line 3389
    .local v5, slotType:[Ljava/lang/String;
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slotType[0]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    aget-object v7, v5, v9

    const-string v8, "RUIM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    aget-object v7, v5, v9

    const-string v8, "SIM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v7, v8, :cond_e

    .line 3392
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "data_connection"

    const v8, 0x7f020144

    invoke-virtual {v7, v11, v8, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 3394
    :cond_e
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    if-eq v7, v12, :cond_f

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v8, :cond_11

    .line 3397
    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v7, :pswitch_data_2

    .line 3436
    aget v2, v0, v9

    .line 3440
    .restart local v2       #iconId:I
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "data_connection"

    invoke-virtual {v7, v11, v2, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3442
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    if-nez v7, :cond_4

    .line 3443
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataIconVisible = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", set visibility of 3g icon = false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "data_connection"

    invoke-virtual {v7, v11, v9}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 3403
    .end local v2           #iconId:I
    :pswitch_7
    aget v2, v0, v13

    .line 3405
    .restart local v2       #iconId:I
    goto :goto_5

    .line 3411
    .end local v2           #iconId:I
    :pswitch_8
    aget v2, v0, v12

    .line 3413
    .restart local v2       #iconId:I
    goto :goto_5

    .line 3419
    .end local v2           #iconId:I
    :pswitch_9
    const/4 v7, 0x3

    aget v2, v0, v7

    .line 3421
    .restart local v2       #iconId:I
    goto :goto_5

    .line 3427
    .end local v2           #iconId:I
    :pswitch_a
    array-length v7, v0

    const/4 v8, 0x4

    if-le v7, v8, :cond_10

    const/4 v7, 0x4

    :goto_6
    aget v2, v0, v7

    .line 3429
    .restart local v2       #iconId:I
    goto :goto_5

    .end local v2           #iconId:I
    :cond_10
    move v7, v9

    .line 3427
    goto :goto_6

    .line 3448
    :cond_11
    const/4 v6, 0x0

    .line 3456
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    .line 3459
    :cond_12
    iput v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    goto/16 :goto_2

    .line 3480
    .end local v5           #slotType:[Ljava/lang/String;
    .restart local v3       #ident:J
    :catch_0
    move-exception v7

    .line 3482
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    :catchall_0
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 3185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3322
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 3397
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 4
    .parameter "net"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x2

    .line 2959
    packed-switch p1, :pswitch_data_0

    .line 3120
    :cond_0
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 3122
    iput v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHtcATTDataCategory:I

    .line 3126
    :goto_0
    return-void

    .line 2966
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_e:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 2968
    iput v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHtcATTDataCategory:I

    goto :goto_0

    .line 3011
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 3013
    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHtcATTDataCategory:I

    goto :goto_0

    .line 3049
    :pswitch_3
    const-string v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORANG202"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3052
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g_plus:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 3070
    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHtcATTDataCategory:I

    goto :goto_0

    .line 3054
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 3055
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_1

    .line 3065
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_1

    .line 3078
    :pswitch_4
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getDataNetworkIconList_1x()[[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 3085
    :pswitch_5
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getDataNetworkIconList_1x()[[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 3096
    :pswitch_6
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getDataNetworkIconList_Evdo()[[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 3101
    :pswitch_7
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getDataNetworkIconList_eHRPD()[[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 3109
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_lte:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 3111
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHtcATTDataCategory:I

    goto :goto_0

    .line 3115
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto/16 :goto_0

    .line 2959
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "gps"

    .line 3695
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3696
    .local v0, action:Ljava/lang/String;
    const-string v2, "enabled"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3698
    .local v1, enabled:Z
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 3700
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    const v3, 0x10802bf

    invoke-virtual {v2, v4, v3, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3701
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    invoke-virtual {v2, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3710
    :goto_0
    return-void

    .line 3702
    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 3704
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    invoke-virtual {v2, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3707
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    const v3, 0x7f020140

    invoke-virtual {v2, v4, v3, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3708
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    invoke-virtual {v2, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateHWMetaStatus(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "hw_meta_fn"

    const-string v9, "hw_meta_caps"

    .line 3827
    const-string v4, "meta_status_fn"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3828
    .local v1, fn:I
    const-string v4, "meta_status_caps"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3832
    .local v0, caps:I
    if-ne v1, v7, :cond_6

    sget-object v4, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sMetaFNImages:[I

    aget v4, v4, v6

    move v2, v4

    .line 3833
    .local v2, iconId:I
    :goto_0
    if-eq v1, v7, :cond_0

    if-ne v1, v8, :cond_7

    :cond_0
    move v3, v7

    .line 3834
    .local v3, visible:Z
    :goto_1
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "hw_meta_fn"

    invoke-virtual {v4, v10, v2, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3835
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mFNVisible:Z

    if-eq v4, v3, :cond_2

    .line 3836
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "hw_meta_fn"

    invoke-virtual {v4, v10, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3837
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mFNVisible:Z

    .line 3840
    :cond_2
    if-ne v0, v7, :cond_8

    sget-object v4, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sMetaCAPSImages:[I

    aget v4, v4, v6

    move v2, v4

    .line 3841
    :goto_2
    if-eq v0, v7, :cond_3

    if-ne v0, v8, :cond_9

    :cond_3
    move v3, v7

    .line 3842
    :goto_3
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "hw_meta_caps"

    invoke-virtual {v4, v9, v2, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3843
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCAPSVisible:Z

    if-eq v4, v3, :cond_5

    .line 3844
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "hw_meta_caps"

    invoke-virtual {v4, v9, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3845
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCAPSVisible:Z

    .line 3847
    :cond_5
    return-void

    .line 3832
    .end local v2           #iconId:I
    .end local v3           #visible:Z
    :cond_6
    sget-object v4, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sMetaFNImages:[I

    aget v4, v4, v7

    move v2, v4

    goto :goto_0

    .restart local v2       #iconId:I
    :cond_7
    move v3, v6

    .line 3833
    goto :goto_1

    .line 3840
    .restart local v3       #visible:Z
    :cond_8
    sget-object v4, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sMetaCAPSImages:[I

    aget v4, v4, v7

    move v2, v4

    goto :goto_2

    :cond_9
    move v3, v6

    .line 3841
    goto :goto_3
.end method

.method private final updateSignalStrength()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const-string v11, "phone_signal"

    const-string v9, "StatusBarPolicy"

    .line 2532
    const/4 v2, -0x1

    .line 2541
    .local v2, iconLevel:I
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 2545
    .local v4, ss:Landroid/telephony/ServiceState;
    if-eqz v4, :cond_2

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2549
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 2551
    const v5, 0x7f020165

    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 2566
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "phone_signal"

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v5, v11, v6, v10}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2797
    :goto_1
    return-void

    .line 2556
    :cond_0
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->SUPPORT_5_LEVEL_SIGNAL:Z

    if-eqz v5, :cond_1

    .line 2558
    const v5, 0x7f0200bc

    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_0

    .line 2562
    :cond_1
    const v5, 0x7f020166

    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_0

    .line 2570
    :cond_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 2573
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v5

    if-nez v5, :cond_11

    .line 2575
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-eq v5, v7, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2576
    const-string v5, "StatusBarPolicy"

    const-string v5, "updateSignalStrength()-Not in GSM phone type "

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2580
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 2583
    .local v0, asu:I
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSM asu:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2599
    int-to-double v5, v0

    const-wide/high16 v7, 0x4012

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_4

    const/16 v5, 0x63

    if-ne v0, v5, :cond_8

    :cond_4
    const/4 v2, 0x0

    .line 2605
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2606
    sget-object v5, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_r:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    .line 2789
    .end local v0           #asu:I
    .local v3, iconList:[I
    :cond_5
    :goto_3
    array-length v5, v3

    if-gt v2, v5, :cond_6

    if-gez v2, :cond_7

    .line 2790
    :cond_6
    const/4 v2, 0x0

    .line 2792
    const-string v5, "StatusBarPolicy"

    const-string v5, "OoO fix iconLevel index range !"

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :cond_7
    aget v5, v3, v2

    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 2796
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "phone_signal"

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v5, v11, v6, v10}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 2600
    .end local v3           #iconList:[I
    .restart local v0       #asu:I
    :cond_8
    int-to-double v5, v0

    const-wide/high16 v7, 0x402d

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_9

    const/4 v2, 0x4

    goto :goto_2

    .line 2601
    :cond_9
    const/16 v5, 0xa

    if-lt v0, v5, :cond_a

    const/4 v2, 0x3

    goto :goto_2

    .line 2602
    :cond_a
    const/16 v5, 0x8

    if-lt v0, v5, :cond_b

    const/4 v2, 0x2

    goto :goto_2

    .line 2603
    :cond_b
    const/4 v2, 0x1

    goto :goto_2

    .line 2608
    :cond_c
    sget-object v5, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    .restart local v3       #iconList:[I
    goto :goto_3

    .line 2646
    .end local v3           #iconList:[I
    :cond_d
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->SUPPORT_5_LEVEL_SIGNAL:Z

    if-eqz v5, :cond_f

    .line 2647
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->process5LevelSignalStrength(I)I

    move-result v2

    .line 2648
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2649
    sget-object v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->s5LevelSignalImages_r:[I

    .restart local v3       #iconList:[I
    goto :goto_3

    .line 2651
    .end local v3           #iconList:[I
    :cond_e
    sget-object v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->s5LevelSignalImages:[I

    .restart local v3       #iconList:[I
    goto :goto_3

    .line 2654
    .end local v3           #iconList:[I
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->process4LevelSignalStrength(I)I

    move-result v2

    .line 2656
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2657
    sget-object v5, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_r:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    .restart local v3       #iconList:[I
    goto :goto_3

    .line 2659
    .end local v3           #iconList:[I
    :cond_10
    sget-object v5, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    .restart local v3       #iconList:[I
    goto :goto_3

    .line 2677
    .end local v0           #asu:I
    .end local v3           #iconList:[I
    :cond_11
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_12

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2678
    const-string v5, "StatusBarPolicy"

    const-string v5, "updateSignalStrength()-Not in CDMA phone type "

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2698
    :cond_12
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getSignalStrengthIconList()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    .line 2699
    .restart local v3       #iconList:[I
    const/4 v1, 0x0

    .line 2700
    .local v1, iconIndex:I
    if-eqz v4, :cond_13

    .line 2701
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    .line 2702
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ iconIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    :cond_13
    packed-switch v1, :pswitch_data_0

    .line 2716
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2718
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getSignalStrengthIconList_r()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    .line 2733
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getCdmaLevelDirectly()I

    move-result v2

    .line 2734
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iconLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    const/4 v5, -0x1

    if-ne v2, v5, :cond_5

    .line 2762
    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    if-nez v5, :cond_15

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isEvdo()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAlwaysUseCdmaRssi:Z

    if-nez v5, :cond_15

    .line 2778
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getEvdoLevel()I

    move-result v2

    .line 2781
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO use Evdo level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to replace Cdma Level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getCdmaLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2707
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getSignalStrengthIconList_r()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    .line 2708
    goto :goto_4

    .line 2710
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getSignalStrengthIconList()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    .line 2711
    goto :goto_4

    .line 2713
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getSignalStrengthIconList_flash()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    .line 2714
    goto :goto_4

    .line 2722
    :cond_14
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getSignalStrengthIconList()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto :goto_4

    .line 2784
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getCdmaLevel()I

    move-result v2

    goto/16 :goto_3

    .line 2705
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 2361
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2363
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "StatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICC_STATE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2366
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 2404
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    .line 2405
    return-void

    .line 2368
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2369
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2371
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2372
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2374
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2376
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2377
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2380
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2384
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    const-string v2, "ICC_FAIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2385
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2386
    :cond_5
    const-string v2, "IMEI_LOCK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2387
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2390
    :cond_6
    const-string v2, "ICC_EXPIRED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2391
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2394
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1235
    const-string v2, "active"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1236
    .local v0, isActive:Z
    const-string v2, "failing"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1237
    .local v1, isFailing:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "sync_active"

    invoke-virtual {v2, v3, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1240
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const-string v5, "tty"

    .line 3715
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 3721
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3722
    .local v0, action:Ljava/lang/String;
    const-string v2, "ttyEnabled"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3726
    .local v1, enabled:Z
    if-eqz v1, :cond_1

    .line 3729
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    const v3, 0x7f020168

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3730
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3736
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #enabled:Z
    :cond_0
    :goto_0
    return-void

    .line 3734
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #enabled:Z
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    invoke-virtual {v2, v5, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "volume"

    .line 3493
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3494
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 3495
    .local v2, ringerMode:I
    if-eqz v2, :cond_0

    if-ne v2, v7, :cond_3

    :cond_0
    move v3, v7

    .line 3497
    .local v3, visible:Z
    :goto_0
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f020156

    move v1, v4

    .line 3501
    .local v1, iconId:I
    :goto_1
    if-eqz v3, :cond_1

    .line 3502
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "volume"

    invoke-virtual {v4, v8, v1, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3504
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v4, :cond_2

    .line 3505
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "volume"

    invoke-virtual {v4, v8, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3506
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mVolumeVisible:Z

    .line 3508
    :cond_2
    return-void

    .end local v1           #iconId:I
    .end local v3           #visible:Z
    :cond_3
    move v3, v6

    .line 3495
    goto :goto_0

    .line 3497
    .restart local v3       #visible:Z
    :cond_4
    const v4, 0x7f020155

    move v1, v4

    goto :goto_1
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 19
    .parameter "intent"

    .prologue
    .line 3556
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 3557
    .local v4, action:Ljava/lang/String;
    const-string v15, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3559
    const-string v15, "wifi_state"

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    const/4 v15, 0x1

    move v5, v15

    .line 3562
    .local v5, enabled:Z
    :goto_0
    if-nez v5, :cond_0

    .line 3564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object v15, v0

    const-string v16, "wifi"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3692
    .end local v5           #enabled:Z
    :cond_0
    :goto_1
    return-void

    .line 3559
    :cond_1
    const/4 v15, 0x0

    move v5, v15

    goto :goto_0

    .line 3570
    :cond_2
    const-string v15, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 3571
    const-string v15, "connected"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3573
    .restart local v5       #enabled:Z
    if-nez v5, :cond_0

    .line 3574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object v15, v0

    const-string v16, "wifi"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 3580
    .end local v5           #enabled:Z
    :cond_3
    const-string v15, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 3581
    const-string v15, "cw_reg_state"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 3582
    .local v14, state:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    move v15, v0

    add-int/lit8 v10, v15, 0x1

    .line 3583
    .local v10, level:I
    const-string v15, "StatusBarPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateWifi ACTION_CW_REGISTRATION_STATE_CHANGED: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    const/16 v15, 0x65

    if-ne v14, v15, :cond_4

    .line 3586
    const-string v15, "StatusBarPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "C+W registration successful!, Rssi:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object v15, v0

    const-string v16, "cwwifi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCWIconList:[I

    move-object/from16 v17, v0

    aget v17, v17, v10

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3588
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsCWRegistered:Z

    goto/16 :goto_1

    .line 3590
    :cond_4
    const-string v15, "StatusBarPolicy"

    const-string v16, "C+W registration fail!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object v15, v0

    const-string v16, "cwwifi"

    invoke-virtual/range {v15 .. v16}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 3592
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsCWRegistered:Z

    goto/16 :goto_1

    .line 3595
    .end local v10           #level:I
    .end local v14           #state:I
    :cond_5
    const-string v15, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 3596
    const-string v15, "state"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3598
    .local v14, state:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCWModeState:Ljava/lang/String;

    .line 3599
    const-string v15, "StatusBarPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mCWModeState = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCWModeState:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    move v15, v0

    add-int/lit8 v10, v15, 0x1

    .line 3602
    .restart local v10       #level:I
    const-string v15, "StatusBarPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateWifi ACTION_ANY_CW_DATA_CONNECTION_STATE_CHANGED: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    const-string v15, "CONNECTED"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "SUSPENDED"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 3604
    :cond_6
    const-string v15, "StatusBarPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "C+W ppp connected!, Rssi:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    sget-object v15, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sCWConnected:[I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCWIconList:[I

    .line 3610
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsCWRegistered:Z

    move v15, v0

    if-eqz v15, :cond_8

    .line 3611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object v15, v0

    const-string v16, "cwwifi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCWIconList:[I

    move-object/from16 v17, v0

    aget v17, v17, v10

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 3617
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    move-object v15, v0

    const/16 v16, 0x33

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 3618
    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    move-object v15, v0

    const-wide/16 v16, 0x64

    move-object v0, v15

    move-object v1, v11

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 3607
    .end local v11           #m:Landroid/os/Message;
    :cond_7
    const-string v15, "StatusBarPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "C+W ppp disconnected!, Rssi:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    sget-object v15, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sCWRegistered:[I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mCWIconList:[I

    goto :goto_2

    .line 3613
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object v15, v0

    const-string v16, "cwwifi"

    invoke-virtual/range {v15 .. v16}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_3

    .line 3621
    .end local v10           #level:I
    .end local v14           #state:Ljava/lang/String;
    :cond_9
    const-string v15, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 3622
    const-string v15, "networkInfo"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 3623
    .local v8, info:Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-nez v15, :cond_0

    .line 3624
    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 3625
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 3626
    sget-object v15, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    const/16 v16, 0x0

    aget v7, v15, v16

    .line 3628
    .local v7, iconId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object v15, v0

    const-string v16, "wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 3629
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsCWRegistered:Z

    move v15, v0

    if-eqz v15, :cond_0

    .line 3630
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsCWRegistered:Z

    .line 3631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object v15, v0

    const-string v16, "cwwifi"

    invoke-virtual/range {v15 .. v16}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3635
    .end local v7           #iconId:I
    .end local v8           #info:Landroid/net/NetworkInfo;
    :cond_a
    const-string v15, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3637
    const-string v15, "newRssi"

    const/16 v16, -0xc8

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 3638
    .local v12, newRssi:I
    const-string v15, "frequency"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 3639
    .local v6, frequency:I
    sget-object v15, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    array-length v15, v15

    invoke-static {v12, v15, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v13

    .line 3649
    .local v13, newSignalLevel:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    move v15, v0

    if-eq v13, v15, :cond_0

    .line 3651
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    move v9, v0

    .line 3654
    .local v9, lastWifiSignalLevel:I
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 3655
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    move v15, v0

    if-eqz v15, :cond_b

    .line 3656
    sget-object v15, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    aget v7, v15, v13

    .line 3660
    .restart local v7       #iconId:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object v15, v0

    const-string v16, "wifi"

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v7

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 3658
    .end local v7           #iconId:I
    :cond_b
    const v7, 0x7f020175

    .restart local v7       #iconId:I
    goto :goto_4
.end method


# virtual methods
.method initWirelessCharging()V
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1294
    :cond_0
    return-void
.end method

.method protected updateHACStatus(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 3895
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3896
    .local v0, enable:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "hac_status"

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3897
    return-void

    .line 3896
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected updateHeadsetStatus(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "StatusBarPolicy"

    const-string v11, "headset_plug"

    .line 1176
    const-string v6, "state"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1177
    .local v5, nState:I
    const-string v6, "name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1178
    .local v4, headsetName:Ljava/lang/String;
    const-string v6, "StatusBarPolicy"

    const-string v6, "Receive %s plug with State Number: %d"

    new-array v7, v13, [Ljava/lang/Object;

    if-nez v4, :cond_3

    const-string v8, "unknown"

    :goto_0
    aput-object v8, v7, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    and-int/lit8 v6, v5, 0x4

    if-lez v6, :cond_4

    move v3, v10

    .line 1199
    .local v3, bTTY:Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-ne v6, v13, :cond_1

    .line 1200
    if-nez v3, :cond_1

    .line 1201
    const-string v6, "StatusBarPolicy"

    const-string v6, "bTTY == false: %d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    and-int/lit8 v6, v5, 0x20

    if-gtz v6, :cond_0

    and-int/lit8 v6, v5, 0x40

    if-lez v6, :cond_1

    .line 1203
    :cond_0
    const/4 v3, 0x1

    .line 1204
    const-string v6, "StatusBarPolicy"

    const-string v6, "(nState & 32) > 0 ||(nState & 64)>0: %d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_1
    and-int/lit8 v6, v5, 0x18

    if-lez v6, :cond_5

    move v0, v10

    .line 1210
    .local v0, bFM:Z
    :goto_2
    and-int/lit8 v6, v5, 0x1

    if-lez v6, :cond_6

    move v1, v10

    .line 1211
    .local v1, bMic:Z
    :goto_3
    and-int/lit8 v6, v5, 0x2

    if-lez v6, :cond_7

    move v2, v10

    .line 1213
    .local v2, bNoMic:Z
    :goto_4
    if-eqz v1, :cond_8

    .line 1214
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "headset_plug"

    const v7, 0x7f020143

    invoke-virtual {v6, v11, v7, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1221
    :goto_5
    if-eqz v0, :cond_a

    .line 1226
    :cond_2
    :goto_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "headset_plug"

    invoke-virtual {v6, v11, v10}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1227
    :goto_7
    return-void

    .end local v0           #bFM:Z
    .end local v1           #bMic:Z
    .end local v2           #bNoMic:Z
    .end local v3           #bTTY:Z
    :cond_3
    move-object v8, v4

    .line 1178
    goto :goto_0

    :cond_4
    move v3, v9

    .line 1197
    goto :goto_1

    .restart local v3       #bTTY:Z
    :cond_5
    move v0, v9

    .line 1209
    goto :goto_2

    .restart local v0       #bFM:Z
    :cond_6
    move v1, v9

    .line 1210
    goto :goto_3

    .restart local v1       #bMic:Z
    :cond_7
    move v2, v9

    .line 1211
    goto :goto_4

    .line 1215
    .restart local v2       #bNoMic:Z
    :cond_8
    if-eqz v2, :cond_9

    .line 1216
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "headset_plug"

    const v7, 0x7f020142

    invoke-virtual {v6, v11, v7, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_5

    .line 1218
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "headset_plug"

    invoke-virtual {v6, v11, v9}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_7

    .line 1223
    :cond_a
    if-eqz v3, :cond_2

    .line 1224
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "headset_plug"

    const v7, 0x7f020167

    invoke-virtual {v6, v11, v7, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_6
.end method
