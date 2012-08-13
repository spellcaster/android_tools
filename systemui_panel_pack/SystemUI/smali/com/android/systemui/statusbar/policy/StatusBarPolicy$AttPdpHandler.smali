.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;
.super Landroid/os/Handler;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttPdpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 4194
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x384

    .line 4197
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 4216
    :cond_0
    :goto_0
    return-void

    .line 4199
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->removeMessages(I)V

    .line 4200
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)[I

    move-result-object v0

    .line 4201
    .local v0, type:[I
    if-eqz v0, :cond_0

    .line 4202
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3202(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)I

    .line 4203
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)I

    .line 4205
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I

    move-result v3

    rem-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3202(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)I

    .line 4206
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4209
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/StatusBarManager;

    move-result-object v1

    const-string v2, "data_connection"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I

    move-result v3

    aget v3, v0, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 4197
    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
    .end packed-switch
.end method
