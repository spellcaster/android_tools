.class public Lcom/android/systemui/statusbar/CarrierLabel;
.super Landroid/widget/LinearLayout;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final IMS_REGISTRATION:Ljava/lang/String; = "IMS_REGISTRATION"

.field private static final IMS_REG_STATUS:Ljava/lang/String; = "IMS_REG_STATUS"

.field private static final TAG:Ljava/lang/String; = "CarrierLabel"

.field static final defaultSeachString:Ljava/lang/String; = "Looking for Service"


# instance fields
.field private imsReceiver:Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;

.field private imsRegistered:Z

.field private mAirplaneMode:Z

.field private mAttached:Z

.field mCdmaSearchingString:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNWKRunnable:Ljava/lang/Runnable;

.field private mNWKSearchingHandler:Landroid/os/Handler;

.field mPLMN:Ljava/lang/String;

.field private mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

.field mSPN:Ljava/lang/String;

.field mSearchingIdx:I

.field mSearchingString:[I

.field mServiceStatus:I

.field mShowPlmn:Z

.field mShowSpn:Z

.field private mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSpnLabel:Landroid/widget/TextView;

.field private mStatusBarPlmn:Landroid/widget/TextView;

.field mUnregisteredSIM:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v3, "Looking for Service"

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 70
    iput v4, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mServiceStatus:I

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSearchingIdx:I

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSearchingString:[I

    .line 80
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAirplaneMode:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->imsReceiver:Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;

    .line 83
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->imsRegistered:Z

    .line 93
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Looking for Service"

    aput-object v3, v0, v2

    const-string v1, "Looking for Service"

    aput-object v3, v0, v4

    const/4 v1, 0x2

    const-string v2, "Looking for Service"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v2, "Looking for Service"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mCdmaSearchingString:[Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/CarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/CarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 414
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    .line 419
    new-instance v0, Lcom/android/systemui/statusbar/CarrierLabel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/CarrierLabel$2;-><init>(Lcom/android/systemui/statusbar/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mContext:Landroid/content/Context;

    .line 103
    return-void

    .line 76
    :array_0
    .array-data 0x4
        0x28t 0x1t 0xct 0x2t
        0x29t 0x1t 0xct 0x2t
        0x2at 0x1t 0xct 0x2t
        0x2bt 0x1t 0xct 0x2t
    .end array-data
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/CarrierLabel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->imsRegistered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/CarrierLabel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->updateCdmaRoamingIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/CarrierLabel;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CarrierLabel;->updateIccState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/CarrierLabel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->updateAirplaneMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/CarrierLabel;)Lcom/htc/widget/HtcBlinkingTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/CarrierLabel;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/CarrierLabel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateAirplaneMode()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method private final updateCdmaRoamingIcon()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v5, "CarrierLabel"

    .line 486
    iget-object v3, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 487
    .local v2, nPhone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 519
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    .line 492
    .local v0, iconIndex:I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v1

    .line 494
    .local v1, iconMode:I
    if-ne v0, v6, :cond_1

    .line 495
    const-string v3, "CarrierLabel"

    const-string v3, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
    :cond_1
    if-ne v1, v6, :cond_2

    .line 500
    const-string v3, "CarrierLabel"

    const-string v3, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_2
    if-ne v0, v8, :cond_3

    .line 505
    const-string v3, "CarrierLabel"

    const-string v3, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v3, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 510
    :cond_3
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 512
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 515
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEccForAus()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method private updateIccState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 447
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, state:Ljava/lang/String;
    const-string v2, "CarrierLabel"

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

    .line 450
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 481
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkNameExt()V

    .line 483
    return-void

    .line 452
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 454
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 455
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 459
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 463
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 467
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    const-string v2, "ICC_FAIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 468
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 469
    :cond_5
    const-string v2, "IMEI_LOCK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 470
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 473
    :cond_6
    const-string v2, "ICC_EXPIRED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 474
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 477
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 124
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v1, Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/CarrierLabel;Lcom/android/systemui/statusbar/CarrierLabel$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->imsReceiver:Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->imsReceiver:Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "IMS_REGISTRATION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->imsReceiver:Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    .line 163
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcBlinkingTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    .line 108
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 118
    return-void
.end method

.method public final registerStatusBarPlmn(Landroid/widget/TextView;)V
    .locals 0
    .parameter "statusBarPlmn"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mStatusBarPlmn:Landroid/widget/TextView;

    .line 541
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v5, ""

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, something:Z
    if-eqz p3, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcBlinkingTextView;->setVisibility(I)V

    .line 280
    if-eqz p4, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v1, p4}, Lcom/htc/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    const/4 v0, 0x1

    .line 302
    :goto_1
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v2, 0x10402c7

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcBlinkingTextView;->setVisibility(I)V

    goto :goto_0

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method updateNetworkNameExt()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v4, "CarrierLabel"

    .line 315
    const-string v0, "CarrierLabel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNetworkNameExt: mSimState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcBlinkingTextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x20c0125

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWIFIOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    const-string v0, "CarrierLabel"

    const-string v0, "HtcBuildUtils.isWIFIOnly()"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcBlinkingTextView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_5

    .line 335
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x10403ce

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    .line 343
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->updateEccForAus()V

    goto :goto_0

    .line 337
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x10403cf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_1

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x10402d4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_1

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_8

    .line 346
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x10403d0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    .line 358
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->updateEccForAus()V

    goto :goto_0

    .line 348
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x10403d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_2

    .line 355
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x20c0122

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_2

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_9

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x20c0198

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto/16 :goto_0

    .line 375
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mServiceStatus:I

    if-nez v0, :cond_a

    .line 376
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mShowSpn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSPN:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mShowPlmn:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPLMN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mServiceStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSearchingString:[I

    iput v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSearchingIdx:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 396
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mServiceStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x20c0127

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto/16 :goto_0

    .line 399
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x20c0126

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    .line 406
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->imsRegistered:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto/16 :goto_0
.end method

.method updateResources()V
    .locals 3

    .prologue
    .line 230
    iget v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mServiceStatus:I

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x20c0125

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    .line 248
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_6

    .line 249
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x10403ce

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    .line 269
    :cond_1
    :goto_1
    return-void

    .line 235
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mServiceStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x20c0127

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_0

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x20c0126

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_0

    .line 251
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x10403cf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_1

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x10402d4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_1

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_9

    .line 257
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x10403d0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_1

    .line 259
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x10403d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_1

    .line 262
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x20c0122

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_1

    .line 264
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const v1, 0x20c0198

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_1
.end method
