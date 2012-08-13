.class Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcWimaxStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "WiMAX Signal Strength changed: "

    const-string v4, "HtcWimaxStatusBar"

    .line 137
    const-string v1, "HtcWimaxStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiver intent, aciton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;

    const-string v2, "newRssiLevel"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->access$002(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;I)I

    .line 141
    const-string v1, "HtcWimaxStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiMAX Signal Strength changed: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->access$000(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->access$100(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    const-string v1, "HtcWimaxStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiMAX Signal Strength changed: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->access$000(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v1, "HtcWimaxStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiMAX ENABLED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "curWimaxEnabledState"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->access$100(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;)V

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "HtcWimaxStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiMAX Signal Strength changed: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->access$000(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v1, "HtcWimaxStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiMAX State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;->access$100(Lcom/android/systemui/statusbar/policy/HtcWimaxStatusBar;)V

    goto/16 :goto_0
.end method
