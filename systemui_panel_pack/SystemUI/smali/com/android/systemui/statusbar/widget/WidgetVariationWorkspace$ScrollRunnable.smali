.class Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;
.super Ljava/lang/Object;
.source "WidgetVariationWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private isAbort:Z

.field private isFinished:Z

.field private mScroller:Lcom/android/systemui/statusbar/widget/HtcScroller;

.field final synthetic this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;Z)V
    .locals 2
    .parameter
    .parameter "fixFps"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isFinished:Z

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isAbort:Z

    .line 440
    new-instance v0, Lcom/android/systemui/statusbar/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->mScroller:Lcom/android/systemui/statusbar/widget/HtcScroller;

    .line 441
    return-void
.end method

.method private start()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isFinished:Z

    .line 463
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isAbort:Z

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->post(Ljava/lang/Runnable;)Z

    .line 465
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isFinished:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 477
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isFinished:Z

    if-eqz v3, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->mScroller:Lcom/android/systemui/statusbar/widget/HtcScroller;

    .line 480
    .local v1, scroller:Lcom/android/systemui/statusbar/widget/HtcScroller;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/HtcScroller;->computeScrollOffset()Z

    move-result v0

    .line 481
    .local v0, more:Z
    if-eqz v0, :cond_3

    .line 482
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/HtcScroller;->getCurrX()I

    move-result v2

    .line 483
    .local v2, x:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-static {v3}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->access$000(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;)I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 484
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->access$102(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;I)I

    .line 485
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->invalidate()V

    .line 486
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 488
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 490
    .end local v2           #x:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isAbort:Z

    if-nez v3, :cond_0

    .line 491
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->access$202(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;Z)Z

    .line 492
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/HtcScroller;->getFinalX()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->access$302(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;I)I

    .line 494
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isFinished:Z

    .line 495
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->invalidate()V

    .line 496
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-static {v3}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->access$400(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;)Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 497
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-static {v3}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->access$400(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;)Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getCurrentScreenIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;->onItemSelect(I)V

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isAbort:Z

    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->mScroller:Lcom/android/systemui/statusbar/widget/HtcScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/widget/HtcScroller;->startScroll(IIII)V

    .line 446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->start()V

    .line 447
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isAbort:Z

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->mScroller:Lcom/android/systemui/statusbar/widget/HtcScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/widget/HtcScroller;->startScroll(IIIII)V

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->start()V

    .line 453
    return-void
.end method

.method public startScroll(IIIIILcom/android/systemui/statusbar/widget/EasingFunction;)V
    .locals 7
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"
    .parameter "function"

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isAbort:Z

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->mScroller:Lcom/android/systemui/statusbar/widget/HtcScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/widget/HtcScroller;->startScroll(IIIIILcom/android/systemui/statusbar/widget/EasingFunction;)V

    .line 458
    invoke-direct {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->start()V

    .line 459
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isAbort:Z

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->mScroller:Lcom/android/systemui/statusbar/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/widget/HtcScroller;->abortAnimation()V

    .line 470
    return-void
.end method
