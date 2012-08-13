.class public Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;
.super Ljava/lang/Object;
.source "HtcCdmaStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$HtcFeatureList;,
        Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;
    }
.end annotation


# static fields
.field static final GPSONE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.GPSONE_MODE_CHANGED"

.field private static final LISTEN_DORMANCY_EVENT:I = 0x2

.field private static final LISTEN_MT_GPS_EVENT:I = 0x3

.field private static final LISTEN_ROAMING_EVENT:I = 0x1

.field private static final LOG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaStatusBar"

.field private static final PRE_STATE_OF_GPSONE:Ljava/lang/String; = "pre_state_of_gpsone"

.field private static final USE_VZW_CUSTOM_3G_ICON:Z = false

.field private static final USE_VZW_CUSTOM_3G_ICON_DEVICE:Z = false

.field private static final VZW_LBS_PROVIDER:Ljava/lang/String; = "vzw_lbs"

.field public static gpsOneContentObserver:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver; = null

.field private static final htcCdma3GdataNetworkIcon:Z = false

.field private static final htcCdma4SignalImages:[[I = null

.field public static final htcCdma4SignalImages1x_CT:[I = null

.field public static final htcCdma4SignalImages1x_CT_r:[I = null

.field public static final htcCdma4SignalImages_CT:[[I = null

.field public static final htcCdma4SignalImages_CT_r:[[I = null

.field private static final htcCdma4SignalImages_flash:[[I = null

.field private static final htcCdma4SignalImages_r:[[I = null

.field protected static final htcCdma6LevelSignalStrength:Z = false

.field private static final htcCdma6SignalImages:[[I = null

.field private static final htcCdma6SignalImages_flash:[[I = null

.field private static final htcCdma6SignalImages_r:[[I = null

.field public static final htcCdmaDataConnected_CT_3g:[I = null

.field private static final logKeywordMtGpsActivity:Ljava/lang/String; = "MT PDSS"

.field private static final logKeywordMtGpsSetting:Ljava/lang/String; = "MT GPS setting"

.field private static final sDataNetType_1x:[[I

.field private static final sDataNetType_1x_desirec:[[I

.field private static final sDataNetType_3g_cdma:[[I

.field private static final sDataNetType_3g_cdma_desirec:[[I

.field private static final sDataNetType_ehrpd:[[I

.field private static final sDataNetType_evdo:[[I


# instance fields
.field private final GPSONE_ANIMATION:I

.field private final GPSONE_NONE:I

.field private final GPSONE_OFF:I

.field private final GPSONE_ON:I

.field private final ICON_SLOT_GPSONE:Ljava/lang/String;

.field private isGpsEnabled:Z

.field private isVerizonLbsEnabled:Z

.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMtGpsActivity:I

.field private mMtGpsIcon:Landroid/os/IBinder;

.field private mMtGpsSetting:I

.field private mService:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->gpsOneContentObserver:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;

    .line 352
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages:[[I

    .line 365
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma6SignalImages:[[I

    .line 382
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages_r:[[I

    .line 395
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma6SignalImages_r:[[I

    .line 412
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages_flash:[[I

    .line 425
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma6SignalImages_flash:[[I

    .line 444
    new-array v0, v3, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdmaDataConnected_CT_3g:[I

    .line 453
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages_CT:[[I

    .line 461
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages_CT_r:[[I

    .line 469
    new-array v0, v3, [I

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages1x_CT:[I

    .line 473
    new-array v0, v3, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages1x_CT_r:[I

    .line 530
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->sDataNetType_evdo:[[I

    .line 543
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->sDataNetType_1x:[[I

    .line 556
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->sDataNetType_1x_desirec:[[I

    .line 590
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v5

    check-cast v0, [[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->sDataNetType_3g_cdma:[[I

    .line 618
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->sDataNetType_3g_cdma_desirec:[[I

    .line 631
    new-array v0, v6, [[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->sDataNetType_ehrpd:[[I

    return-void

    .line 352
    :array_0
    .array-data 0x4
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
    .end array-data

    .line 365
    :array_2
    .array-data 0x4
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data

    .line 382
    :array_4
    .array-data 0x4
        0x28t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x2at 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x28t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x2at 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 395
    :array_6
    .array-data 0x4
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
    .end array-data

    .line 412
    :array_8
    .array-data 0x4
        0x34t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x34t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
    .end array-data

    .line 425
    :array_a
    .array-data 0x4
        0x39t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x39t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 444
    :array_c
    .array-data 0x4
        0x6ft 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 453
    :array_d
    .array-data 0x4
        0x56t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x5bt 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_f
    .array-data 0x4
        0x60t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0x6at 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
    .end array-data

    .line 461
    :array_12
    .array-data 0x4
        0x91t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
    .end array-data

    :array_13
    .array-data 0x4
        0x96t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0x9bt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_15
    .array-data 0x4
        0xa0t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
    .end array-data

    :array_16
    .array-data 0x4
        0xa5t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
    .end array-data

    .line 469
    :array_17
    .array-data 0x4
        0x51t 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
    .end array-data

    .line 473
    :array_18
    .array-data 0x4
        0x8ct 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
    .end array-data

    .line 530
    :array_19
    .array-data 0x4
        0x19t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
    .end array-data

    :array_1a
    .array-data 0x4
        0x19t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
    .end array-data

    .line 543
    :array_1b
    .array-data 0x4
        0x17t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data

    :array_1c
    .array-data 0x4
        0x17t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data

    .line 556
    :array_1d
    .array-data 0x4
        0x17t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_1e
    .array-data 0x4
        0x17t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 590
    :array_1f
    .array-data 0x4
        0x18t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_20
    .array-data 0x4
        0x18t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 618
    :array_21
    .array-data 0x4
        0x18t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_22
    .array-data 0x4
        0x18t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 631
    :array_23
    .array-data 0x4
        0xe4t 0x0t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
    .end array-data

    :array_24
    .array-data 0x4
        0xe4t 0x0t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V
    .locals 5
    .parameter "context"
    .parameter "mService"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->GPSONE_NONE:I

    .line 62
    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->GPSONE_ON:I

    .line 63
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->GPSONE_OFF:I

    .line 64
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->GPSONE_ANIMATION:I

    .line 68
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isGpsEnabled:Z

    .line 69
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    .line 141
    new-instance v1, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$1;-><init>(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mHandler:Landroid/os/Handler;

    .line 158
    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mMtGpsActivity:I

    .line 162
    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mMtGpsSetting:I

    .line 164
    const-string v1, "gpsone"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->ICON_SLOT_GPSONE:Ljava/lang/String;

    .line 290
    new-instance v1, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$2;-><init>(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->initMtGpsIcon()V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->initObserver(Landroid/content/Context;)V

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getPreStateEnabled(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mMtGpsSetting:I

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->updateGPSONEIcon()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isGpsEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isGpsEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->updateGPSONEIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->installMtGpsTrackingObserver()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mMtGpsSetting:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->savePreStateEnabled(Landroid/content/Context;I)V

    return-void
.end method

.method public static final getDataNetworkIconList_1x()[[I
    .locals 1

    .prologue
    .line 663
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->sDataNetType_1x:[[I

    return-object v0
.end method

.method public static final getDataNetworkIconList_Evdo()[[I
    .locals 1

    .prologue
    .line 678
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->sDataNetType_evdo:[[I

    return-object v0
.end method

.method public static final getDataNetworkIconList_eHRPD()[[I
    .locals 1

    .prologue
    .line 686
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->getDataNetworkIconList_Evdo()[[I

    move-result-object v0

    return-object v0
.end method

.method private getPreStateEnabled(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 319
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 320
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pre_state_of_gpsone"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 322
    .local v0, ret:I
    const-string v2, "HtcCdmaStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO get gpsone pre-status("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return v0
.end method

.method public static final getSignalStrengthIconList()[[I
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages:[[I

    return-object v0
.end method

.method public static final getSignalStrengthIconList_flash()[[I
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages_flash:[[I

    return-object v0
.end method

.method public static final getSignalStrengthIconList_r()[[I
    .locals 1

    .prologue
    .line 496
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->htcCdma4SignalImages_r:[[I

    return-object v0
.end method

.method private initMtGpsIcon()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "gpsone"

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v1, 0x7f0201b7

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v3, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 178
    return-void
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-string v4, "HtcCdmaStatusBar"

    .line 124
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->gpsOneContentObserver:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "HtcCdmaStatusBar"

    const-string v0, "gpsOneContentObserver is null"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;-><init>(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->gpsOneContentObserver:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->gpsOneContentObserver:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isGpsEnabled:Z

    .line 133
    const-string v0, "HtcCdmaStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initObserver, isGpsEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isGpsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_lbs"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    .line 135
    const-string v0, "HtcCdmaStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initObserver, isVerizonLbsEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private installMtGpsTrackingObserver()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method private savePreStateEnabled(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "state"

    .prologue
    .line 328
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pre_state_of_gpsone"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    const-string v1, "HtcCdmaStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO save gpsone pre-status("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method private setGPSOneResourceID(I)V
    .locals 4
    .parameter "iGPSoneType"

    .prologue
    const/4 v2, 0x0

    const-string v3, "gpsone"

    .line 696
    packed-switch p1, :pswitch_data_0

    .line 727
    :goto_0
    :pswitch_0
    return-void

    .line 698
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v1, 0x7f0201bc

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 705
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v1, 0x7f0201b6

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 712
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v1, 0x7f0201b8

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 720
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v1, 0x7f0201ba

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateGPSONEIcon()V
    .locals 3

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->isGpsEnabled:Z

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    .line 278
    :goto_0
    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "@@ FEATURE_SUPPORT_LOCATION_SERVICE = true, show GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 285
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    goto :goto_0
.end method

.method private updateMtGpsIcon()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "gpsone"

    const-string v2, "HtcCdmaStatusBar"

    .line 182
    const-string v0, "HtcCdmaStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update MtGPS, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mMtGpsActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mMtGpsSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mMtGpsActivity:I

    if-gez v0, :cond_1

    .line 186
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mMtGpsSetting:I

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    .line 205
    :goto_0
    const-string v0, "HtcCdmaStatusBar"

    const-string v0, "@@ FEATURE_SUPPORT_LOCATION_SERVICE = true, show GPS icon"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v6, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->savePreStateEnabled(Landroid/content/Context;I)V

    .line 250
    return-void

    .line 189
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    goto :goto_0

    .line 214
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mMtGpsActivity:I

    if-eqz v0, :cond_2

    .line 215
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    .line 235
    :goto_2
    const-string v0, "HtcCdmaStatusBar"

    const-string v0, "-- FEATURE_SUPPORT_LOCATION_SERVICE = true, show GPS icon"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v6, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 216
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mMtGpsSetting:I

    if-eqz v0, :cond_3

    .line 217
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    goto :goto_2

    .line 219
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    goto :goto_2
.end method
