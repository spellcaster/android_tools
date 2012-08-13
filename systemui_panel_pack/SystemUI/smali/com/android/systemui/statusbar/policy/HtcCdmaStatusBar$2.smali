.class Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 293
    const-string v1, "HtcCdmaStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver intent, aciton:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->access$400(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->access$500(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;Landroid/content/Context;I)V

    .line 310
    :cond_0
    return-void
.end method
