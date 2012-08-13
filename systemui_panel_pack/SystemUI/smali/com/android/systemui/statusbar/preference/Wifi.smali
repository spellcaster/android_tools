.class public Lcom/android/systemui/statusbar/preference/Wifi;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Wifi.java"


# static fields
.field public static final INTENT_ALLOW_WIFI_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_WIFI_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiStatusBarPreference"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mExchangeWifi:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiOffload:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "itemView"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 26
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiOffload:Z

    .line 30
    sget-boolean v0, Lcom/android/systemui/statusbar/preference/SettingUtil;->SENSE_30_SUPPORT:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mExchangeWifi:Z

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/preference/Wifi$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Wifi$1;-><init>(Lcom/android/systemui/statusbar/preference/Wifi;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/preference/Wifi$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Wifi$2;-><init>(Lcom/android/systemui/statusbar/preference/Wifi;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mClickListener:Landroid/view/View$OnClickListener;

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Wifi;->init()V

    .line 76
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/Wifi;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mExchangeWifi:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/Wifi;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/Wifi;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/Wifi;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/Wifi;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiOffload:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/preference/Wifi;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/Wifi;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private handleWifiStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiOffload:Z

    if-eqz v0, :cond_1

    .line 155
    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 174
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/preference/Wifi;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mIntentFilter:Landroid/content/IntentFilter;

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiOffload:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mExchangeWifi:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.admin.intent.ALLOW_WIFI_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mExchangeWifi:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/SettingUtil;->setForWifiEASPolicyDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 102
    sget-boolean v0, Lcom/android/systemui/statusbar/preference/SettingUtil;->SENSE_30_SUPPORT:Z

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    :cond_2
    :goto_0
    return-void

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 198
    :goto_0
    return v1

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
