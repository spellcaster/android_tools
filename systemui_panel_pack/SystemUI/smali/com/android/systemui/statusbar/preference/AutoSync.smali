.class public Lcom/android/systemui/statusbar/preference/AutoSync;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "AutoSync.java"


# static fields
.field public static final SYNC_SETTING_CHANGED_INTENT:Ljava/lang/String; = "com.android.sync.SYNC_CONN_STATUS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "AutoSyncStatusBarPreference"


# instance fields
.field private mAutoSyncFilter:Landroid/content/IntentFilter;

.field private final mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mResContext:Landroid/content/Context;

.field mbAutoSyncSetting:Z

.field private mbRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncFilter:Landroid/content/IntentFilter;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbRegistered:Z

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/preference/AutoSync$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/AutoSync$1;-><init>(Lcom/android/systemui/statusbar/preference/AutoSync;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mClickListener:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/preference/AutoSync$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/AutoSync$2;-><init>(Lcom/android/systemui/statusbar/preference/AutoSync;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mResContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->init()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/AutoSync;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->updateUI()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncFilter:Landroid/content/IntentFilter;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->registerReceiver()V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->updateUI()V

    .line 51
    return-void
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->getAutoSyncSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mSummary:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAutoSyncSetting()Z
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->getAutoSyncSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    .line 56
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    const-string v1, "AutoSyncStatusBarPreference"

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 87
    const-string v0, "AutoSyncStatusBarPreference"

    const-string v0, "mAutoSyncFilter == null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbRegistered:Z

    if-nez v0, :cond_0

    .line 91
    const-string v0, "AutoSyncStatusBarPreference"

    const-string v0, "registerReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbRegistered:Z

    goto :goto_0
.end method

.method public setAutoSyncSetting(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 27
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 28
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbRegistered:Z

    .line 102
    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    return-void
.end method
