.class public Lcom/android/systemui/statusbar/preference/HotSpot;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "HotSpot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HotSpotStatusBarPreference"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDontRemind:Landroid/widget/CheckBox;

.field private mEnableMhs:Z

.field private mLayoutFactory:Landroid/view/LayoutInflater;

.field private mMhsIntentFilter:Landroid/content/IntentFilter;

.field private final mMhsReceiver:Landroid/content/BroadcastReceiver;

.field private mMhsStatus:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private remindDialog:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/preference/HotSpot$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$1;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/preference/HotSpot$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$2;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/preference/HotSpot$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$3;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mClickListener:Landroid/view/View$OnClickListener;

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/HotSpot;->init()V

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mLayoutFactory:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/HotSpot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/HotSpot;->checkMHSStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/HotSpot;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/HotSpot;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/HotSpot;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/HotSpot;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/HotSpot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/preference/HotSpot;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/HotSpot;->handleMhs(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/HotSpot;->showRemindDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/HotSpot;->switchHotspotOnOff(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/preference/HotSpot;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mDontRemind:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/preference/HotSpot;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/preference/HotSpot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/HotSpot;->setHotspotStatus()V

    return-void
.end method

.method private checkMHSStatus()V
    .locals 5

    .prologue
    const-string v4, "HotSpotStatusBarPreference"

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->checkWifiApEnabledMhsRequest()I

    move-result v0

    .line 311
    .local v0, status:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 313
    .local v1, wifiApState:I
    iput v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsStatus:I

    .line 314
    const-string v2, "HotSpotStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mhs status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v2, "HotSpotStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiAp status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->handleWifiApStateChanged(I)V

    .line 318
    return-void
.end method

.method private collapseStatusBar()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 277
    .local v0, statusMgr:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 278
    return-void
.end method

.method private handleMhs(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 280
    if-eqz p1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 285
    .local v0, wifiState:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/HotSpot;->showTurnoffWifiDialog()V

    .line 295
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/HotSpot;->collapseStatusBar()V

    move v1, v4

    .line 298
    .end local v0           #wifiState:I
    :goto_1
    return v1

    .line 290
    .restart local v0       #wifiState:I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 293
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #wifiState:I
    :cond_2
    move v1, v3

    .line 298
    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    packed-switch p1, :pswitch_data_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 221
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 225
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 226
    iget v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsStatus:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/HotSpot;->updateMhsUI(I)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method private isMLEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 422
    const-string v1, "init.svc.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, s:Ljava/lang/String;
    const-string v1, "HotSpotStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ML value = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-eqz v0, :cond_0

    const-string v1, "stopped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    .line 431
    :goto_0
    return v1

    .line 428
    :cond_1
    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    .line 431
    goto :goto_0
.end method

.method private isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 248
    :goto_0
    return v1

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
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

.method private setHotspotStatus()V
    .locals 3

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 412
    .local v0, hotspotstate:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 418
    .end local v0           #hotspotstate:I
    :cond_1
    :goto_0
    return-void

    .line 415
    .restart local v0       #hotspotstate:I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private showRemindDialog(Z)V
    .locals 8
    .parameter "wifiapenable"

    .prologue
    .line 361
    move v3, p1

    .line 362
    .local v3, enable:Z
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08004c

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08004b

    new-instance v6, Lcom/android/systemui/statusbar/preference/HotSpot$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$5;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08004a

    new-instance v6, Lcom/android/systemui/statusbar/preference/HotSpot$4;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/preference/HotSpot$4;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 387
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mLayoutFactory:Landroid/view/LayoutInflater;

    const v5, 0x7f03000d

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 388
    .local v1, contentView:Landroid/widget/LinearLayout;
    const v4, 0x7f0a0048

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mDontRemind:Landroid/widget/CheckBox;

    .line 389
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 398
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 399
    .local v2, d:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 400
    new-instance v4, Lcom/android/systemui/statusbar/preference/HotSpot$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$6;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 405
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 406
    return-void
.end method

.method private showTurnoffWifiDialog()V
    .locals 3

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.hotspot.TurnOffWifi"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    const-string v1, "HotSpotStatusBarPreference"

    const-string v2, "turn off wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method private switchHotspotOnOff(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "wifi_saved_state"

    .line 336
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 338
    .local v2, wifiState:I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 340
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 341
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 346
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 351
    :goto_0
    if-nez p1, :cond_2

    .line 352
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 353
    .local v1, wifiSavedState:I
    if-ne v1, v6, :cond_2

    .line 354
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 355
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    .end local v1           #wifiSavedState:I
    :cond_2
    return-void

    .line 348
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateMhsUI(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "HotSpotStatusBarPreference"

    .line 321
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    .line 322
    :cond_0
    const-string v0, "HotSpotStatusBarPreference"

    const-string v0, "setchecked false summary starting"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 327
    :cond_2
    if-ne p1, v1, :cond_1

    .line 328
    const-string v0, "HotSpotStatusBarPreference"

    const-string v0, "setchecked true summary original"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z

    if-eqz v0, :cond_2

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsIntentFilter:Landroid/content/IntentFilter;

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/HotSpot;->checkMHSStatus()V

    .line 120
    :cond_1
    return-void

    .line 111
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
