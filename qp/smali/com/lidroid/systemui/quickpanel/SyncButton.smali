.class public Lcom/lidroid/systemui/quickpanel/SyncButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "SyncButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncButton"


# instance fields
.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 16
    new-instance v0, Lcom/lidroid/systemui/quickpanel/SyncButton$1;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/SyncButton$1;-><init>(Lcom/lidroid/systemui/quickpanel/SyncButton;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserver:Landroid/content/SyncStatusObserver;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    .line 14
    const-string v0, "toggleSync"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getBackgroundDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 92
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 94
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private static getSyncState(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/SyncButton;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    .line 99
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 100
    .local v1, sync:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 104
    const-string v0, "qp_autosync_text"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetStr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    const/4 v1, 0x1

    return v1
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const-string v1, "SyncButton"

    .line 26
    invoke-super {p0, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 29
    const-string v0, "SyncButton"

    const-string v0, "Unregistering sync state listener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 33
    const-string v0, "SyncButton"

    const-string v0, "Registering sync state listener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected toggleState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 51
    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 52
    .local v2, context:Landroid/content/Context;
    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 54
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/lidroid/systemui/quickpanel/SyncButton;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    .line 55
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    .line 60
    .local v3, sync:Z
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    .line 61
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 62
    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 66
    :cond_0
    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    .line 67
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 71
    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 72
    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 77
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 78
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 80
    :cond_3
    return-void
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/SyncButton;->getSyncState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "qp_sync_on"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mIcon:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mState:I

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "qp_sync_off"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mIcon:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mState:I

    goto :goto_0
.end method
