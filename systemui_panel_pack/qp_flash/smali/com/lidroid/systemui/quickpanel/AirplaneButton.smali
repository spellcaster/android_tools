.class public Lcom/lidroid/systemui/quickpanel/AirplaneButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "AirplaneButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->OBSERVED_URIS:Ljava/util/List;

    .line 16
    sget-object v0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleAirplane"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getState(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 65
    const-string v0, "qp_airplane_text"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetStr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 34
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->getState(Landroid/content/Context;)Z

    move-result v2

    .line 36
    .local v2, state:Z
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    if-eqz v2, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "state"

    if-nez v2, :cond_1

    move v4, v7

    :goto_1
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    move v5, v7

    .line 36
    goto :goto_0

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    move v4, v6

    .line 41
    goto :goto_1
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->getState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "qp_airplane_on"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->mIcon:I

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->mState:I

    .line 30
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v0, "qp_airplane_off"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->mIcon:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/AirplaneButton;->mState:I

    goto :goto_0
.end method
