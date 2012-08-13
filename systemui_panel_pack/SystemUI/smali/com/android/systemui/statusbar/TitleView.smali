.class public Lcom/android/systemui/statusbar/TitleView;
.super Landroid/widget/LinearLayout;
.source "TitleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TitleView"


# instance fields
.field private mButton:Landroid/widget/ImageView;

.field private mButtonId:I

.field private mContext:Landroid/content/Context;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/TitleView;->mContext:Landroid/content/Context;

    .line 52
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/TitleView;->init()V

    .line 56
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 61
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mLayout:Landroid/widget/LinearLayout;

    .line 62
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mButton:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/TitleView;->updateResources()V

    .line 66
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method public updateName(ZIZ)V
    .locals 4
    .parameter "bTitle"
    .parameter "title"
    .parameter "bButton"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 111
    if-eqz p1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    if-eqz p2, :cond_0

    .line 114
    iput p2, p0, Lcom/android/systemui/statusbar/TitleView;->mTitleId:I

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/TitleView;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    :goto_0
    if-eqz p3, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    :goto_1
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateResources()V
    .locals 8

    .prologue
    .line 72
    sget-boolean v4, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v4, :cond_1

    .line 73
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 79
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    .line 80
    .local v1, left:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    .line 81
    .local v3, top:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    .line 82
    .local v2, right:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    .line 83
    .local v0, bottom:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v5, "usage_monitor_titlebar_rest"

    const v6, 0x7f0201c7

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/TitleView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 87
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 88
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 89
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 90
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 91
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v6, "usage_monitor_titlebar_left_rest"

    const v7, 0x7f0201c6

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    iget v4, p0, Lcom/android/systemui/statusbar/TitleView;->mTitleId:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mTitle:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/systemui/statusbar/TitleView;->mTitleId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    .line 97
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    .line 98
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    .line 99
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    .line 100
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v6, "usage_monitor_titlebar_btn"

    const v7, 0x7f0201c3

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v4, p0, Lcom/android/systemui/statusbar/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 103
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :cond_1
    return-void
.end method
