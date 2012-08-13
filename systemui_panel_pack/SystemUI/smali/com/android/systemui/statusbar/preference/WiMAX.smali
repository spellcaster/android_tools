.class public Lcom/android/systemui/statusbar/preference/WiMAX;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "WiMAX.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WiMAXStatusBarPreference"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWimaxController:Lcom/htc/net/wimax/WimaxController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/preference/WiMAX$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/WiMAX$1;-><init>(Lcom/android/systemui/statusbar/preference/WiMAX;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/preference/WiMAX$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/WiMAX$2;-><init>(Lcom/android/systemui/statusbar/preference/WiMAX;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mClickListener:Landroid/view/View$OnClickListener;

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/WiMAX;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/WiMAX;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/WiMAX;->updateToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/WiMAX;)Lcom/htc/net/wimax/WimaxController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/WiMAX;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/WiMAX;->persistWimaxSettingEnabled(Z)V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method private persistWimaxSettingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wimax_on"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    return-void

    .line 133
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateEnableState()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "WiMAXStatusBarPreference"

    .line 58
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    if-nez v5, :cond_1

    .line 59
    :cond_0
    const-string v5, "WiMAXStatusBarPreference"

    const-string v5, "get null WiMAX instance"

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v5}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v4

    .line 63
    .local v4, wimaxState:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, airmode:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v5}, Lcom/htc/net/wimax/HTCWimax4GManager;->isAvailable()Z

    move-result v1

    .line 65
    .local v1, available:Z
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    if-eqz v4, :cond_3

    if-eq v0, v7, :cond_3

    if-eqz v1, :cond_3

    move v3, v7

    .line 68
    .local v3, enable:Z
    :goto_1
    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    if-nez v4, :cond_4

    :cond_2
    if-eq v0, v7, :cond_4

    if-eqz v1, :cond_4

    move v2, v7

    .line 72
    .local v2, check:Z
    :goto_2
    const-string v5, "WiMAXStatusBarPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wimaxState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", airmode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "available:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", check:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 74
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 75
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .end local v2           #check:Z
    .end local v3           #enable:Z
    :cond_3
    move v3, v8

    .line 65
    goto :goto_1

    .restart local v3       #enable:Z
    :cond_4
    move v2, v8

    .line 68
    goto :goto_2
.end method

.method private updateSummary()V
    .locals 4

    .prologue
    const-string v3, "WiMAXStatusBarPreference"

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v1, :cond_0

    .line 80
    const-string v1, "WiMAXStatusBarPreference"

    const-string v1, "get null WiMAX instance"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v0

    .line 84
    .local v0, wimaxState:I
    const-string v1, "WiMAXStatusBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wimaxState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mSummary:Landroid/widget/TextView;

    const v2, 0x1040330

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 97
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mSummary:Landroid/widget/TextView;

    const v2, 0x104032f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updateToggles()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/WiMAX;->updateEnableState()V

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/WiMAX;->updateSummary()V

    .line 139
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mContext:Landroid/content/Context;

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mContext:Landroid/content/Context;

    const-string v1, "fourG_wimax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    if-nez v0, :cond_1

    .line 109
    :cond_0
    const-string v0, "WiMAXStatusBarPreference"

    const-string v1, "get null WiMAX instance"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mIntentFilter:Landroid/content/IntentFilter;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/WiMAX;->updateToggles()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    return-void
.end method
