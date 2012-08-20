.class public Lcom/lidroid/systemui/quickpanel/ShutdownButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "ShutdownButton.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 11
    const-string v0, "toggleShutdown"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->mType:Ljava/lang/String;

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->mState:I

    .line 13
    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 22
    const-string v0, "qp_shutdown_text"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetStr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 2

    .prologue
    .line 20
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->mState:I

    .line 17
    const-string v0, "qp_act_shutdown"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton;->mIcon:I

    .line 18
    return-void
.end method
