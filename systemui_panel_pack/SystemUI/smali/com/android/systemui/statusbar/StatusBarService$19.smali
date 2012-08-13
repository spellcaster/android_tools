.class Lcom/android/systemui/statusbar/StatusBarService$19;
.super Landroid/os/Handler;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$19;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2603
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2608
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2610
    :goto_0
    return-void

    .line 2605
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$19;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$3100(Lcom/android/systemui/statusbar/StatusBarService;)V

    goto :goto_0

    .line 2603
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
