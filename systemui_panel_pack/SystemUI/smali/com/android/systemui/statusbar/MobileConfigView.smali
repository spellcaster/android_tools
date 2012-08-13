.class public Lcom/android/systemui/statusbar/MobileConfigView;
.super Landroid/widget/LinearLayout;
.source "MobileConfigView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MobileConfigView"

.field private static final SENDER:Ljava/lang/String; = "MobileDataEnabler"


# instance fields
.field private mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/systemui/statusbar/StatusBarService;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mTitleButtonListener:Landroid/view/View$OnClickListener;

.field private mToggleBarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

.field private mToggleView:Landroid/widget/FrameLayout;

.field mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 105
    new-instance v0, Lcom/android/systemui/statusbar/MobileConfigView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MobileConfigView$1;-><init>(Lcom/android/systemui/statusbar/MobileConfigView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/MobileConfigView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MobileConfigView$2;-><init>(Lcom/android/systemui/statusbar/MobileConfigView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggleBarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mContext:Landroid/content/Context;

    .line 168
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MobileConfigView;->init()V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/MobileConfigView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/MobileConfigView;)Lcom/android/systemui/statusbar/StatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/MobileConfigView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MobileConfigView;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/MobileConfigView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MobileConfigView;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const-string v1, "sender"

    const-string v2, "MobileDataEnabler"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getAutoSyncSetting()Z
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public getBackgroundDataSetting()Z
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 88
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method public isNetworkAvailableButNotMobile()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MobileConfigView;->isNetworkAvailableExt()I

    move-result v0

    .line 50
    .local v0, Type:I
    if-eq v0, v2, :cond_0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    move v1, v2

    .line 54
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkAvailableExt()I
    .locals 4

    .prologue
    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 60
    const-string v2, "MobileConfigView"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 63
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 176
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MobileConfigView;->getAutoSyncSetting()Z

    move-result v0

    .line 178
    .local v0, bAutoSyncSetting:Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MobileConfigView;->getBackgroundDataSetting()Z

    move-result v1

    .line 181
    .local v1, bBackgroundDataSetting:Z
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/TitleView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    const v3, 0x7f080042

    invoke-virtual {v2, v4, v3, v4}, Lcom/android/systemui/statusbar/TitleView;->updateName(ZIZ)V

    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/TitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v2, 0x7f0a002a

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggleView:Landroid/widget/FrameLayout;

    .line 187
    const v2, 0x7f0a002b

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/widget/ToggleBar;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setToggleEnable(Z)V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setToggleSize(I)V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggleBarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setOnToggleChangeListener(Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;)V

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setMaxProgress(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MobileConfigView;->isNetworkAvailableButNotMobile()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 199
    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/MobileConfigView;->setAutoSyncSetting(Z)V

    .line 201
    :cond_0
    if-nez v1, :cond_1

    .line 202
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/MobileConfigView;->setBackgroundDataSetting(Z)V

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MobileConfigView;->updateResources()V

    .line 213
    return-void

    .line 204
    :cond_2
    if-ne v0, v4, :cond_3

    if-ne v1, v4, :cond_3

    .line 205
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    goto :goto_0

    .line 206
    :cond_3
    if-nez v0, :cond_4

    if-ne v1, v4, :cond_4

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    goto :goto_0

    .line 209
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public setAutoSyncSetting(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 101
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 102
    return-void
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 93
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 94
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 244
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 219
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/TitleView;->updateResources()V

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/ToggleBar;->updateResources()V

    .line 228
    :cond_2
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, tv:Landroid/widget/TextView;
    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tv:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 231
    .restart local v0       #tv:Landroid/widget/TextView;
    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    const v1, 0x7f0a002e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tv:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 233
    .restart local v0       #tv:Landroid/widget/TextView;
    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    return-void
.end method
