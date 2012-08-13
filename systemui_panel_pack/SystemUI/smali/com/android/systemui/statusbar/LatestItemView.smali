.class public Lcom/android/systemui/statusbar/LatestItemView;
.super Landroid/widget/FrameLayout;
.source "LatestItemView.java"


# instance fields
.field private mDispatchTouchEvent:Z

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->mDispatchTouchEvent:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 49
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->updateSkinResource()V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LatestItemView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isDispatchTouchEvent()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->mDispatchTouchEvent:Z

    return v0
.end method

.method public setDispatchTouchEvent(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LatestItemView;->mDispatchTouchEvent:Z

    .line 43
    return-void
.end method

.method public updateSkinResource()V
    .locals 4

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v2, "status_bar_item_background"

    const v3, 0x7f0201a0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/LatestItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/LatestItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    .local v0, icon:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LatestItemView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v2, "status_bar_icons_tile"

    const v3, 0x7f02019f

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .end local v0           #icon:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
