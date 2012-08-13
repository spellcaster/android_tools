.class public Lcom/lidroid/systemui/quickpanel/FlashlightButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "FlashlightButton.java"


# instance fields
.field private mIsFlashSupported:Z

.field private mLedController:Lcom/lidroid/util/LedController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 13
    invoke-static {}, Lcom/lidroid/util/LedController;->getInstance()Lcom/lidroid/util/LedController;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/lidroid/util/LedController;

    .line 14
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/lidroid/util/LedController;

    invoke-virtual {v0}, Lcom/lidroid/util/LedController;->isFlashSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mIsFlashSupported:Z

    .line 15
    const-string v0, "toggleFlashlight"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mType:Ljava/lang/String;

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    .line 17
    return-void
.end method

.method private startFlashlightActivity()V
    .locals 3

    .prologue
    .line 32
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 57
    const-string v0, "qp_flashlight_text"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetStr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 39
    iget-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mIsFlashSupported:Z

    if-eqz v0, :cond_1

    .line 40
    iget v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    if-ne v0, v1, :cond_0

    .line 41
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    .line 42
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/lidroid/util/LedController;

    invoke-virtual {v0}, Lcom/lidroid/util/LedController;->off()V

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->update()V

    .line 54
    :goto_1
    return-void

    .line 45
    :cond_0
    iput v1, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    .line 46
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/lidroid/util/LedController;

    invoke-virtual {v0}, Lcom/lidroid/util/LedController;->on()V

    goto :goto_0

    .line 51
    :cond_1
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    .line 52
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->startFlashlightActivity()V

    goto :goto_1
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 26
    const-string v0, "qp_flashlight_off"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mIcon:I

    .line 29
    :goto_0
    return-void

    .line 22
    :pswitch_0
    const-string v0, "qp_flashlight_on"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mIcon:I

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
