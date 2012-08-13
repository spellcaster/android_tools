.class public Lcom/android/systemui/statusbar/WlanConfigView;
.super Landroid/widget/LinearLayout;
.source "WlanConfigView.java"


# static fields
.field private static final STATUS_CONNECTED:I = 0x5

.field private static final STATUS_OBTAININGADDR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WlanCofigView"


# instance fields
.field private mAutoSync:Lcom/android/systemui/statusbar/preference/StatusBarPreference;

.field private mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/systemui/statusbar/StatusBarService;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mSummary:Landroid/widget/TextView;

.field private mTitleButtonListener:Landroid/view/View$OnClickListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 57
    iput-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mAutoSync:Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/WlanConfigView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/WlanConfigView$1;-><init>(Lcom/android/systemui/statusbar/WlanConfigView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/WlanConfigView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/WlanConfigView$2;-><init>(Lcom/android/systemui/statusbar/WlanConfigView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mContext:Landroid/content/Context;

    .line 100
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/WlanConfigView;->init()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/WlanConfigView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/WlanConfigView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/WlanConfigView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/WlanConfigView;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/WlanConfigView;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/WlanConfigView;)Lcom/android/systemui/statusbar/StatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    return-object v0
.end method

.method private getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .parameter "wifiConfig"

    .prologue
    const/4 v2, 0x1

    .line 257
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 268
    :goto_0
    return v0

    .line 259
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 260
    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    if-eqz v0, :cond_3

    move v0, v2

    .line 262
    goto :goto_0

    .line 263
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 264
    goto :goto_0

    .line 265
    :cond_4
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v0, :cond_5

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 266
    goto :goto_0

    .line 268
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 9
    .parameter "state"

    .prologue
    const/16 v4, 0x8

    const/4 v8, 0x0

    .line 213
    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 215
    .local v2, wifiState:I
    if-eqz p1, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    .line 218
    .local v0, index:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 219
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 220
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 221
    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mContext:Landroid/content/Context;

    const v5, 0x7f080013

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .end local v0           #index:I
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_0
    :goto_0
    return-void

    .line 224
    .restart local v0       #index:I
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    :cond_1
    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 225
    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mContext:Landroid/content/Context;

    const v5, 0x7f080011

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/WlanConfigView;->hasSecurity(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f0201d8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f0201d7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 233
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mContext:Landroid/content/Context;

    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private hasSecurity(Landroid/net/wifi/WifiInfo;)Z
    .locals 7
    .parameter "wifiInfo"

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 242
    .local v1, networkId:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 243
    .local v3, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 244
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 245
    .local v2, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v4, :cond_0

    .line 246
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/WlanConfigView;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    .line 250
    .end local v2           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    return v4

    .line 243
    .restart local v2       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 249
    .end local v2           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const-string v4, "WlanCofigView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not find out wifiConfig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIntentFilter:Landroid/content/IntentFilter;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 109
    const/4 v0, 0x0

    .line 112
    .local v0, index:I
    const v1, 0x7f0a0030

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/WlanConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/TitleView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    const v2, 0x7f080046

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/systemui/statusbar/TitleView;->updateName(ZIZ)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/TitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f0a0031

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/WlanConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mSummary:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mContext:Landroid/content/Context;

    const v3, 0x7f080012

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v1, 0x7f0a0032

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/WlanConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    new-instance v1, Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-object v2, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0034

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/WlanConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/preference/AutoSync;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mAutoSync:Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mAutoSync:Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->setEnable(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/WlanConfigView;->updateResources()V

    .line 133
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mAutoSync:Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->onStart()V

    .line 164
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mAutoSync:Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->onStop()V

    .line 171
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mAutoSync:Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->setService(Lcom/android/systemui/statusbar/StatusBarService;)V

    .line 178
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/TitleView;->updateResources()V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/WlanConfigView;->mAutoSync:Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 153
    return-void
.end method
