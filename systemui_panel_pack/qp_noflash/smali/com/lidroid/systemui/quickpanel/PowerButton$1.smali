.class Lcom/lidroid/systemui/quickpanel/PowerButton$1;
.super Landroid/os/Handler;
.source "PowerButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/systemui/quickpanel/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/PowerButton;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;

    iget-object v2, v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 91
    const-string v0, "qp_button_image"

    .line 92
    .local v0, buttonIcon:I
    const-string v1, "qp_button_indic"

    .line 93
    .local v1, buttonState:I
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;

    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;

    iget v3, v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->mIcon:I

    invoke-static {v2, v0, v3}, Lcom/lidroid/systemui/quickpanel/PowerButton;->access$000(Lcom/lidroid/systemui/quickpanel/PowerButton;Ljava/lang/String;I)V

    .line 94
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-virtual {v2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateText()V

    .line 97
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;

    iget v2, v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 105
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;

    const-string v3, "qp_bg_mid"

    invoke-static {v3}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/lidroid/systemui/quickpanel/PowerButton;->access$000(Lcom/lidroid/systemui/quickpanel/PowerButton;Ljava/lang/String;I)V

    .line 109
    .end local v0           #buttonIcon:I
    .end local v1           #buttonState:I
    :cond_0
    :goto_0
    return-void

    .line 99
    .restart local v0       #buttonIcon:I
    .restart local v1       #buttonState:I
    :pswitch_0
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;

    const-string v3, "qp_bg_on"

    invoke-static {v3}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/lidroid/systemui/quickpanel/PowerButton;->access$000(Lcom/lidroid/systemui/quickpanel/PowerButton;Ljava/lang/String;I)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;

    const-string v3, "qp_bg_off"

    invoke-static {v3}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/lidroid/systemui/quickpanel/PowerButton;->access$000(Lcom/lidroid/systemui/quickpanel/PowerButton;Ljava/lang/String;I)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
