.class public Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "ScreenTimeoutButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREEN_TIMEOUT_HIGH:I = 0x1d4c0

.field private static final SCREEN_TIMEOUT_LOW:I = 0x7530

.field private static final SCREEN_TIMEOUT_MAX:I = 0x927c0

.field private static final SCREEN_TIMEOUT_MIN:I = 0x3a98

.field private static final SCREEN_TIMEOUT_NORMAL:I = 0xea60

.field private static TOAST:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    .line 33
    sget-object v0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleScreenTimeout"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getScreenTimeout(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static timeoutToString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "timeout"
    .parameter "context"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "qp_timeouts"

    invoke-static {v5}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetArr(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, tags:[Ljava/lang/String;
    div-int/lit16 v3, p0, 0x3e8

    .line 134
    .local v3, tmp:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, sTimeout:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_1

    .line 141
    :cond_0
    return-object v1

    .line 137
    :cond_1
    mul-int/lit8 v4, v0, 0x3c

    div-int/2addr v3, v4

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    add-int/lit8 v0, v0, 0x1

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
    .line 112
    sget-object v0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 147
    const-string v0, "qp_screen_timeout_text"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetStr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 56
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->getScreenTimeout(Landroid/content/Context;)I

    move-result v2

    .line 58
    .local v2, screentimeout:I
    const/4 v1, 0x0

    .line 60
    .local v1, currentMode:I
    const/16 v3, 0x3a98

    if-ge v2, v3, :cond_2

    .line 61
    const/16 v2, 0x3a98

    .line 92
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    sget-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 98
    const-string v3, ""

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    .line 102
    :cond_0
    sget-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 105
    sget-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "qp_screen_timeout_prefix"

    invoke-static {v5}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetStr(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->timeoutToString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    const/16 v4, 0x11

    sget-object v5, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sget-object v6, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getYOffset()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 107
    sget-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 108
    return-void

    .line 64
    :cond_1
    const/16 v2, 0x7530

    goto :goto_0

    .line 66
    :cond_2
    const/16 v3, 0x7530

    if-ge v2, v3, :cond_4

    .line 67
    const/16 v2, 0x7530

    goto :goto_0

    .line 72
    :cond_4
    const v3, 0xea60

    if-ge v2, v3, :cond_6

    .line 73
    const v2, 0xea60

    goto :goto_0

    .line 78
    :cond_6
    const v3, 0x1d4c0

    if-ge v2, v3, :cond_8

    .line 79
    const v2, 0x1d4c0

    goto :goto_0

    .line 84
    :cond_8
    const v3, 0x927c0

    if-ge v2, v3, :cond_9

    .line 85
    const v2, 0x927c0

    goto :goto_0

    .line 86
    :cond_9
    const/16 v2, 0x3a98

    goto :goto_0
.end method

.method protected updateState()V
    .locals 3

    .prologue
    const-string v2, "qp_screen_timeout_unknown"

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mState:I

    .line 41
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->getScreenTimeout(Landroid/content/Context;)I

    move-result v0

    .line 42
    .local v0, timeout:I
    const/16 v1, 0x3a98

    if-gt v0, v1, :cond_0

    .line 43
    const-string v2, "qp_screen_timeout_15s"

    .line 52
    :goto_0
    invoke-static {v2}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    return-void

    .line 45
    :cond_0
    const v1, 0x7530

    if-gt v0, v1, :cond_1

    .line 46
    const-string v2, "qp_screen_timeout_30s"

    goto :goto_0

    .line 47
    :cond_1
    const v1, 0xea60

    if-gt v0, v1, :cond_2

    .line 48
    const-string v2, "qp_screen_timeout_1m"

    goto :goto_0

    .line 49
    :cond_2
    const v1, 0x1d4c0

    if-gt v0, v1, :cond_3

    .line 50
    const-string v2, "qp_screen_timeout_2m"

    goto :goto_0

    .line 51
    :cond_3
    const v1, 0x927c0

    if-gt v0, v1, :cond_4

    .line 52
    const-string v2, "qp_screen_timeout_10m"

    goto :goto_0

    .line 55
    :cond_4
    const-string v2, "qp_screen_timeout_unknown"

    goto :goto_0
.end method
