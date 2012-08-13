.class public Lcom/android/systemui/statusbar/preference/SettingUtil;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final SENSE_30_SUPPORT:Z = false

.field private static final TAG:Ljava/lang/String; = "statusbar.SettingUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lcom/android/systemui/statusbar/preference/SettingUtil;->getFloatSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/preference/SettingUtil;->SENSE_30_SUPPORT:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFloatSenseVersion()F
    .locals 3

    .prologue
    .line 13
    const/4 v1, 0x0

    .line 16
    .local v1, senseVersion:F
    :try_start_0
    const-string v2, "3.0"

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 20
    :goto_0
    return v1

    .line 17
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 18
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setForBTEASPolicyDisable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 24
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 25
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 26
    .local v0, iStatus:I
    if-nez v0, :cond_0

    .line 27
    const/4 v2, 0x1

    .line 30
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setForWifiEASPolicyDisable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 35
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 36
    .local v0, iStatus:I
    if-nez v0, :cond_0

    .line 37
    const/4 v2, 0x1

    .line 40
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
