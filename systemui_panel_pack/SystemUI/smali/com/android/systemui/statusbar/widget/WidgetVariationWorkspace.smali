.class public Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;
.super Landroid/widget/LinearLayout;
.source "WidgetVariationWorkspace.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;,
        Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WidgetVariationWorkspace"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static localLOGV:Z

.field private static mScrollSpeedScale:F


# instance fields
.field private mCurrentScreen:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsFling:Z

.field private mIsScrolling:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastTouchEventTime:J

.field private mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

.field private mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

.field private mStartScreen:I

.field private mStartScrollX:I

.field private mStartX:F

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    .line 28
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollSpeedScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsFling:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsScrolling:Z

    .line 32
    iput v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mCurrentScreen:I

    .line 43
    iput v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mTouchState:I

    .line 431
    new-instance v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;-><init>(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$2;-><init>(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsFling:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsScrolling:Z

    .line 32
    iput v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mCurrentScreen:I

    .line 43
    iput v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mTouchState:I

    .line 431
    new-instance v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;-><init>(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$1;-><init>(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;)Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    return-object v0
.end method

.method private getRightBoundary()I
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private getScreenIndex(I)I
    .locals 5
    .parameter "scrollX"

    .prologue
    const/4 v4, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getWidth()I

    move-result v0

    .line 349
    .local v0, width:I
    if-gtz v0, :cond_0

    move v1, v4

    .line 352
    :goto_0
    return v1

    :cond_0
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p1

    div-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private onUp()V
    .locals 2

    .prologue
    .line 338
    sget-boolean v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "DEBUG"

    const-string v1, "onUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->snapToScreen(I)V

    .line 340
    return-void
.end method

.method private snapToScreen(I)V
    .locals 10
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    sub-int v3, v0, v1

    .line 391
    .local v3, deltaX:I
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v8, 0x3ff8

    mul-double/2addr v4, v8

    sget v6, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollSpeedScale:F

    float-to-double v8, v6

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4084

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v5, v4

    new-instance v6, Lcom/android/systemui/statusbar/widget/EaseOutBack;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/widget/EaseOutBack;-><init>()V

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->startScroll(IIIIILcom/android/systemui/statusbar/widget/EasingFunction;)V

    .line 393
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.htc.widget.workaspace.PAGE_SCROLLED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "index"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    return-void
.end method

.method private snapToScreen(IF)V
    .locals 10
    .parameter "whichScreen"
    .parameter "velocityX"

    .prologue
    const/4 v9, 0x1

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 402
    .local v8, newX:I
    iget v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    sub-int v3, v8, v0

    .line 403
    .local v3, delta:I
    sget-boolean v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "WidgetVariationWorkspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snapToScreen() with velocityX("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "), delta = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    cmpl-float v0, p2, v5

    if-nez v0, :cond_1

    .line 406
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->snapToScreen(I)V

    .line 424
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.htc.widget.workaspace.PAGE_SCROLLED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "index"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->invalidate()V

    .line 429
    return-void

    .line 408
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    if-gez v3, :cond_3

    .line 409
    iget v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v9

    mul-int/2addr v1, v4

    if-le v0, v1, :cond_2

    cmpg-float v0, p2, v5

    if-gez v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollSpeedScale:F

    mul-float/2addr v4, v5

    float-to-int v5, v4

    new-instance v6, Lcom/android/systemui/statusbar/widget/EaseInBack;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/widget/EaseInBack;-><init>()V

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->startScroll(IIIIILcom/android/systemui/statusbar/widget/EasingFunction;)V

    goto :goto_0

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    mul-int/lit16 v4, v3, 0x3e8

    int-to-float v4, v4

    div-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v6

    sget v5, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollSpeedScale:F

    mul-float/2addr v4, v5

    float-to-int v5, v4

    new-instance v6, Lcom/android/systemui/statusbar/widget/EaseOutBack;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/widget/EaseOutBack;-><init>()V

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->startScroll(IIIIILcom/android/systemui/statusbar/widget/EasingFunction;)V

    goto :goto_0

    .line 416
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    if-gez v0, :cond_4

    cmpl-float v0, p2, v5

    if-lez v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollSpeedScale:F

    mul-float/2addr v4, v5

    float-to-int v5, v4

    new-instance v6, Lcom/android/systemui/statusbar/widget/EaseInBack;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/widget/EaseInBack;-><init>()V

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->startScroll(IIIIILcom/android/systemui/statusbar/widget/EasingFunction;)V

    goto :goto_0

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    mul-int/lit16 v4, v3, 0x3e8

    int-to-float v4, v4

    div-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v6

    sget v5, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollSpeedScale:F

    mul-float/2addr v4, v5

    float-to-int v5, v4

    new-instance v6, Lcom/android/systemui/statusbar/widget/EaseOutBack;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/widget/EaseOutBack;-><init>()V

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->startScroll(IIIIILcom/android/systemui/statusbar/widget/EasingFunction;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentScreenIndex()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getScreenIndex(I)I

    move-result v0

    return v0
.end method

.method public next()V
    .locals 3

    .prologue
    .line 360
    sget-boolean v1, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "DEBUG"

    const-string v2, "next()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getCurrentScreenIndex()I

    move-result v0

    .line 362
    .local v0, currentScreen:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->stopScroll()V

    .line 366
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->snapToScreen(I)V

    .line 367
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;->onItemSelect(I)V

    .line 371
    :cond_2
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 272
    sget-boolean v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown() mScrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDownX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->stopScroll()V

    .line 276
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    iput v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mStartScrollX:I

    .line 277
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsFling:Z

    .line 278
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsScrolling:Z

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getCurrentScreenIndex()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mStartScreen:I

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mStartScreen:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;->onItemSelect(I)V

    .line 283
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 288
    sget-boolean v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "DEBUG"

    const-string v1, "onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsFling:Z

    .line 290
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 291
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 292
    iget v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mStartScreen:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, p3}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->snapToScreen(IF)V

    .line 298
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 294
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mStartScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->snapToScreen(IF)V

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 96
    iget v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mTouchState:I

    if-eqz v8, :cond_1

    .line 97
    iget-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v8, :cond_0

    .line 98
    new-instance v8, Landroid/view/GestureDetector;

    iget-object v9, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mGestureDetector:Landroid/view/GestureDetector;

    .line 99
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 116
    .local v0, action:I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    iget v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mTouchState:I

    if-eqz v8, :cond_2

    move v8, v10

    .line 248
    :goto_0
    return v8

    .line 120
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 121
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 123
    .local v5, y:F
    packed-switch v0, :pswitch_data_0

    .line 248
    :cond_3
    :goto_1
    iget v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mTouchState:I

    if-eqz v8, :cond_a

    move v8, v10

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_4

    .line 126
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 128
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 138
    iget v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mLastMotionX:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v3, v8

    .line 139
    .local v3, xDiff:I
    iget v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mLastMotionY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v6, v8

    .line 141
    .local v6, yDiff:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 142
    .local v1, touchSlop:I
    if-le v3, v1, :cond_6

    move v4, v10

    .line 149
    .local v4, xMoved:Z
    :goto_2
    if-lt v6, v1, :cond_7

    move v7, v10

    .line 150
    .local v7, yMoved:Z
    :goto_3
    if-nez v4, :cond_5

    if-eqz v7, :cond_3

    .line 154
    :cond_5
    iput v10, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mTouchState:I

    goto :goto_1

    .end local v4           #xMoved:Z
    .end local v7           #yMoved:Z
    :cond_6
    move v4, v11

    .line 142
    goto :goto_2

    .restart local v4       #xMoved:Z
    :cond_7
    move v7, v11

    .line 149
    goto :goto_3

    .line 178
    .end local v1           #touchSlop:I
    .end local v3           #xDiff:I
    .end local v4           #xMoved:Z
    .end local v6           #yDiff:I
    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mStartX:F

    .line 179
    iput v2, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mLastMotionX:F

    .line 180
    iput v5, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mLastMotionY:F

    .line 190
    iget-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v11

    :goto_4
    iput v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mTouchState:I

    goto :goto_1

    :cond_8
    move v8, v10

    goto :goto_4

    .line 224
    :pswitch_2
    iget v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mTouchState:I

    if-eq v8, v10, :cond_9

    .line 234
    :cond_9
    iput v11, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mTouchState:I

    .line 237
    iget-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_3

    .line 238
    iget-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 239
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :cond_a
    move v8, v11

    .line 248
    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 302
    sget-boolean v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "DEBUG"

    const-string v1, "onLongPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x1

    .line 307
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 309
    .local v0, deltaX:I
    iget v3, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mStartScrollX:I

    sub-int v2, v3, v0

    .line 310
    .local v2, to:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getRightBoundary()I

    move-result v1

    .line 311
    .local v1, rightBoundary:I
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsScrolling:Z

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getWidth()I

    move-result v3

    neg-int v3, v3

    add-int/lit16 v3, v3, 0x96

    const/16 v4, 0x96

    sub-int v4, v1, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 314
    sget-boolean v3, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    if-eqz v3, :cond_0

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScroll() scrollTo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ,deltaX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", distanceX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollX:I

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->invalidate()V

    .line 317
    return v6
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 321
    sget-boolean v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "DEBUG"

    const-string v1, "onShowPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 327
    sget-boolean v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "DEBUG"

    const-string v1, "onSingleTapUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;->onItemClick(I)V

    .line 330
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 255
    .local v0, action:I
    const/4 v1, 0x0

    .line 257
    .local v1, handle:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 260
    :cond_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 262
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsFling:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mIsScrolling:Z

    if-eqz v2, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->onUp()V

    .line 268
    :cond_2
    return v1
.end method

.method public prev()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 374
    sget-boolean v1, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "DEBUG"

    const-string v2, "prev()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->getCurrentScreenIndex()I

    move-result v0

    .line 376
    .local v0, currentScreen:I
    if-lez v0, :cond_2

    .line 377
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mScrollRunnable:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$ScrollRunnable;->stopScroll()V

    .line 380
    :cond_1
    sub-int v1, v0, v3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->snapToScreen(I)V

    .line 381
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    sub-int v2, v0, v3

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;->onItemSelect(I)V

    .line 385
    :cond_2
    return-void
.end method

.method public setWorkspaceListener(Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->mListener:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace$WorkspaceListener;

    .line 513
    return-void
.end method
