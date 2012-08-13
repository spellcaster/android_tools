.class public Lcom/android/systemui/statusbar/preference/AirplaneMode;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "AirplaneMode.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "AirplaneModeStatusBarPreference"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;-><init>(Lcom/android/systemui/statusbar/preference/AirplaneMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mClickListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/preference/AirplaneMode$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode$2;-><init>(Lcom/android/systemui/statusbar/preference/AirplaneMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/AirplaneMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->setAirplaneModeOn(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/AirplaneMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->onAirplaneModeChanged()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 46
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isPowerOff()Z
    .locals 4

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, isPoweroff:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 103
    .local v1, serviceState:Landroid/telephony/ServiceState;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "AirplaneModeStatusBarPreference"

    .line 127
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 128
    .local v3, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move v0, v6

    .line 129
    .local v0, airplaneModeEnabled:Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 130
    .local v2, isDoPoweroff:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->isAirplaneModeOn()Z

    move-result v1

    .line 133
    .local v1, airplaneModeOn:Z
    const-string v4, "AirplaneModeStatusBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDoPoweroff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", airplaneMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v4, "AirplaneModeStatusBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAirplaneModeOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 139
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mSummary:Landroid/widget/TextView;

    const v5, 0x104032f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 147
    :cond_0
    :goto_1
    return-void

    .end local v0           #airplaneModeEnabled:Z
    .end local v1           #airplaneModeOn:Z
    .end local v2           #isDoPoweroff:Z
    :cond_1
    move v0, v7

    .line 128
    goto :goto_0

    .line 142
    .restart local v0       #airplaneModeEnabled:Z
    .restart local v1       #airplaneModeOn:Z
    .restart local v2       #isDoPoweroff:Z
    :cond_2
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 143
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mSummary:Landroid/widget/TextView;

    const v5, 0x1040330

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .parameter "enabling"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    const-string v1, "AirplaneModeStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirplaneMode@StatusBarPreference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    return-void

    .line 111
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->isAirplaneModeOn()Z

    move-result v0

    .line 53
    .local v0, isAirPlaneModeOn:Z
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mSummary:Landroid/widget/TextView;

    const v2, 0x104032f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 60
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mSummary:Landroid/widget/TextView;

    const v2, 0x1040330

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 67
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
