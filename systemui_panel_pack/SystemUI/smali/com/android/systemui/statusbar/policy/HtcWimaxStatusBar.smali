.class public Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;
.super Ljava/lang/Object;
.source "HtcWimaxStatusBar.java"


# static fields
.field public static final ICON_SLOT_WIMAX:Ljava/lang/String; = "wimax"

.field private static final LOG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HtcWimaxStatusBar"

.field public static final WIMAX_SIGNAL_CHANGED:Ljava/lang/String; = "android.intent.action.WIMAX_SIGNAL_CHANGED"

.field private static final mHtcResourcePackage:Ljava/lang/String; = "com.htc"


# instance fields
.field private final WIMAX_LEVEL_0:I

.field private final WIMAX_LEVEL_1:I

.field private final WIMAX_LEVEL_2:I

.field private final WIMAX_LEVEL_3:I

.field private final WIMAX_LEVEL_4:I

.field private final WIMAX_LEVEL_5:I

.field public mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMtWimaxSignal:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStatusBarPolicy:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

.field private mWimaxController:Lcom/htc/net/wimax/WimaxController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V
    .locals 3
    .parameter "context"
    .parameter "statusbarmanager"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->WIMAX_LEVEL_0:I

    .line 61
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->WIMAX_LEVEL_1:I

    .line 62
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->WIMAX_LEVEL_2:I

    .line 63
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->WIMAX_LEVEL_3:I

    .line 64
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->WIMAX_LEVEL_4:I

    .line 66
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->WIMAX_LEVEL_5:I

    .line 89
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mMtWimaxSignal:I

    .line 134
    new-instance v1, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;-><init>(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "wimax"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/WimaxController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->initMtWimaxIcon()V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->updateMtWimaxIcon()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mMtWimaxSignal:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mMtWimaxSignal:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->updateMtWimaxIcon()V

    return-void
.end method

.method private initMtWimaxIcon()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "wimax"

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f02017e

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v3, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method private setWibroQhdResourceID5Level(I)V
    .locals 5
    .parameter "iWimaxType"

    .prologue
    const v4, 0x7f02016a

    const/4 v2, 0x0

    const-string v3, "wimax"

    .line 206
    packed-switch p1, :pswitch_data_0

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 226
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f02016b

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f02016c

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f02016d

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 220
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f02016e

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setWibroResourceID5Level(I)V
    .locals 5
    .parameter "iWimaxType"

    .prologue
    const v4, 0x7f020170

    const/4 v2, 0x0

    const-string v3, "wimax"

    .line 182
    packed-switch p1, :pswitch_data_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 202
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f020171

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f020172

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 193
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f020173

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 196
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f020174

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setWimaxResourceID5Level(I)V
    .locals 5
    .parameter "iWimaxType"

    .prologue
    const v4, 0x7f020184

    const/4 v2, 0x0

    const-string v3, "wimax"

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 178
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f020185

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f020186

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f020187

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 172
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f020188

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setWimaxResourceID6LevelWX(I)V
    .locals 5
    .parameter "iWimaxType"

    .prologue
    const v4, 0x7f020189

    const/4 v2, 0x0

    const-string v3, "wimax"

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 253
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f02018a

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f02018b

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 241
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f02018c

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 244
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f02018d

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 247
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v1, 0x7f02018e

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateMtWimaxIcon()V
    .locals 7

    .prologue
    const-string v6, "wimax"

    const-string v5, "HtcWimaxStatusBar"

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, blConnected:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 102
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 103
    .local v2, info:Landroid/net/NetworkInfo;
    const-string v3, "HtcWimaxStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.getDetailedState():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 121
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mMtWimaxSignal:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->setWimaxResourceID5Level(I)V

    .line 123
    const-string v3, "HtcWimaxStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update WiMAX Signal Status Bar, Signal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mMtWimaxSignal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v4, "wimax"

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v3, "HtcWimaxStatusBar"

    const-string v3, "set WiMAX Signal Bar invisible"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v4, "wimax"

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method
