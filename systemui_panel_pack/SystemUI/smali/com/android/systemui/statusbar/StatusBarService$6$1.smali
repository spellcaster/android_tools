.class Lcom/android/systemui/statusbar/StatusBarService$6$1;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/StatusBarService$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService$6;)V
    .locals 0
    .parameter

    .prologue
    .line 2215
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$6$1;->this$1:Lcom/android/systemui/statusbar/StatusBarService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2217
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$6$1;->this$1:Lcom/android/systemui/statusbar/StatusBarService$6;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$2000(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2218
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2219
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$6$1;->this$1:Lcom/android/systemui/statusbar/StatusBarService$6;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$2000(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2220
    return-void
.end method
