.class public Lcom/android/systemui/statusbar/StatusBarFlag;
.super Ljava/lang/Object;
.source "StatusBarFlag.java"


# static fields
.field public static final HTC_ATT_ONS:Z = false

.field public static final HTC_CALL_TIMER:Z = false

#the value of this static final field might be set in the static constructor
.field public static final HTC_CONFIG_FEATURE:Z = false

.field public static final HTC_GLOW_STATIC:Z = true

.field public static final HTC_LANDSCAPE:Z

.field public static final HTC_NO_ONGOING_TITLE:Z

.field public static final HTC_QHD:Z

.field public static final HTC_QS_POWER_EFFICIENCY:Z

.field public static final HTC_QS_TASK_MANAGER:Z

.field public static final HTC_QS_VOLUME:Z

.field public static final HTC_QUICK_SETTINGS:Z

.field public static final HTC_RECEENT_APP_BACKGROUND:Z

.field public static final HTC_RECENT_APP:Z

.field public static final HTC_RECENT_APP_PAGE:Z

.field public static final HTC_RECENT_APP_TASK_MANAGER:Z

.field public static final HTC_SKIN:Z

.field public static final HTC_STATUS_BAR_S30_HEADER:Z

.field public static final HTC_STATUS_BAR_S35_HEADER:Z

.field public static final HTC_STATUS_BAR_TAP_EVENT:Z

.field public static final HTC_STATUS_BAR_TRANSPARENT:Z

.field public static final HTC_TABLET:Z

.field public static final HTC_TMO_THEME:Z

.field public static final HTC_UB_LOG:Z

.field public static final HTC_WIFI_ONLY:Z

.field public static final mSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4008

    const-wide v8, 0x4000cccccccccccdL

    const-wide/high16 v6, 0x4000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    const-string v0, "3.0"

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    .line 28
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    const-wide v2, 0x3ff999999999999aL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    move v0, v5

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    .line 32
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    const-wide v2, 0x3ff999999999999aL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    move v0, v5

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    .line 35
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_2

    move v0, v5

    :goto_2
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_TAP_EVENT:Z

    .line 37
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_3

    move v0, v5

    :goto_3
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    .line 48
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-gtz v0, :cond_4

    move v0, v4

    :goto_4
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_UB_LOG:Z

    .line 49
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_5

    move v0, v5

    :goto_5
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_NO_ONGOING_TITLE:Z

    .line 52
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_6

    move v0, v5

    :goto_6
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECEENT_APP_BACKGROUND:Z

    .line 57
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_7

    move v0, v5

    :goto_7
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_TASK_MANAGER:Z

    .line 65
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    cmpl-double v0, v0, v10

    if-eqz v0, :cond_8

    move v0, v4

    :goto_8
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S30_HEADER:Z

    .line 66
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    cmpl-double v0, v0, v10

    if-lez v0, :cond_9

    move v0, v5

    :goto_9
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S35_HEADER:Z

    .line 67
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v0, v0

    cmpl-double v0, v0, v10

    if-lez v0, :cond_a

    move v0, v5

    :goto_a
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    return-void

    :cond_0
    move v0, v4

    .line 28
    goto :goto_0

    :cond_1
    move v0, v4

    .line 32
    goto :goto_1

    :cond_2
    move v0, v4

    .line 35
    goto :goto_2

    :cond_3
    move v0, v4

    .line 37
    goto :goto_3

    :cond_4
    move v0, v5

    .line 48
    goto :goto_4

    :cond_5
    move v0, v4

    .line 49
    goto :goto_5

    :cond_6
    move v0, v4

    .line 52
    goto :goto_6

    :cond_7
    move v0, v4

    .line 57
    goto :goto_7

    :cond_8
    move v0, v5

    .line 65
    goto :goto_8

    :cond_9
    move v0, v4

    .line 66
    goto :goto_9

    :cond_a
    move v0, v4

    .line 67
    goto :goto_a
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpAllFlags()V
    .locals 3

    .prologue
    const-string v2, "StatusBarFlag"

    .line 70
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSenseVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_TABLET = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_LANDSCAPE = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_RECENT_APP_PAGE = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_RECENT_APP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_SKIN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_STATUS_BAR_TAP_EVENT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_TAP_EVENT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_QUICK_SETTINGS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_GLOW_STATIC = true"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_UB_LOG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_UB_LOG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_NO_ONGOING_TITLE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_NO_ONGOING_TITLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_RECENT_APP_TASK_MANAGER = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_ATT_ONS = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_TMO_THEME = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_QS_TASK_MANAGER = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_TASK_MANAGER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_QS_VOLUME = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_STATUS_BAR_TRANSPARENT = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_CALL_TIMER = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "StatusBarFlag"

    const-string v0, "HTC_WIFI_ONLY = false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_STATUS_BAR_S30_HEADER = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S30_HEADER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_STATUS_BAR_S35_HEADER = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S35_HEADER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "StatusBarFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_CONFIG_FEATURE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
