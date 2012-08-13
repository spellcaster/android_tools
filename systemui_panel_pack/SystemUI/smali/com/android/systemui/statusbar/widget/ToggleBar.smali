.class public Lcom/android/systemui/statusbar/widget/ToggleBar;
.super Landroid/view/View;
.source "ToggleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;,
        Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;
    }
.end annotation


# instance fields
.field private bFocus:Z

.field private bTouchable:Z

.field private bound:Landroid/graphics/Rect;

.field private context:Landroid/content/Context;

.field private curProgress1:I

.field private curProgress2:I

.field private drawback:Landroid/graphics/drawable/Drawable;

.field private drawplayed:Landroid/graphics/drawable/Drawable;

.field private drawplayed2:Landroid/graphics/drawable/Drawable;

.field private drawthumb:Landroid/graphics/drawable/Drawable;

.field private drawthumbToggle:Landroid/graphics/drawable/Drawable;

.field private height:I

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private maxProgress:I

.field private measuredWidth:I

.field private secAlpha:I

.field private secEnable:Z

.field private seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

.field private startLeft:I

.field private startTop:I

.field private tglEnable:Z

.field private thumbHeight:I

.field private thumbStartTop:I

.field private thumbWidth:I

.field private toggleListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

.field private toggleSize:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    const v1, 0x101007b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/widget/ToggleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 69
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/widget/ToggleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrset"
    .parameter "defstyle"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0201c0

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    .line 26
    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    .line 27
    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    .line 31
    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    .line 32
    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    .line 33
    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    .line 35
    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    .line 36
    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress2:I

    .line 38
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->secAlpha:I

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleSize:I

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    .line 42
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->secEnable:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->tglEnable:Z

    .line 44
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bTouchable:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bFocus:Z

    .line 47
    iput-object v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    .line 48
    iput-object v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    .line 301
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->context:Landroid/content/Context;

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setFocusable(Z)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setFocusableInTouchMode(Z)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawback:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    .line 105
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->updateResources()V

    .line 110
    return-void
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    .line 119
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    .line 127
    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawback:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->secAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 143
    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    return v0
.end method

.method public getProgress1()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    return v0
.end method

.method public getProgress2()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress2:I

    return v0
.end method

.method public getToggleSize()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleSize:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->secEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 248
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 249
    .local v1, widthSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 251
    .local v0, widthMode:I
    iput v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    .line 254
    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    if-lt v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->initialize()V

    .line 261
    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->width:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setMeasuredDimension(II)V

    .line 264
    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    .line 265
    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress2:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress2(I)V

    .line 266
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 306
    .local v3, xpos:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 307
    .local v4, ypos:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 309
    .local v1, seekbarBound:Landroid/graphics/Rect;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bTouchable:Z

    if-nez v5, :cond_0

    move v5, v9

    .line 381
    :goto_0
    return v5

    .line 311
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    mul-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 312
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 313
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    mul-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 314
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    move v5, v9

    .line 381
    goto :goto_0

    .line 318
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bFocus:Z

    .line 321
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    if-eqz v5, :cond_1

    .line 322
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;->onStartTrackingTouch()V

    goto :goto_1

    .line 328
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bFocus:Z

    if-eqz v5, :cond_1

    .line 329
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->tglEnable:Z

    if-nez v5, :cond_1

    .line 331
    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    sub-int v5, v3, v5

    int-to-double v5, v5

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v0, v5

    .line 337
    .local v0, progress:I
    if-gez v0, :cond_2

    move v0, v10

    .line 338
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    if-le v0, v5, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    move v0, v5

    .line 340
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    .line 342
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    if-eqz v5, :cond_1

    .line 343
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    invoke-interface {v5, v6, v9}, Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;->onProgressChanged(IZ)V

    goto :goto_1

    .line 346
    .end local v0           #progress:I
    :cond_4
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bFocus:Z

    goto :goto_1

    .line 352
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bFocus:Z

    if-eqz v5, :cond_1

    .line 353
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->tglEnable:Z

    if-eqz v5, :cond_7

    .line 356
    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    sub-int v5, v3, v5

    int-to-double v5, v5

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v0, v5

    .line 358
    .restart local v0       #progress:I
    int-to-double v5, v0

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleSize:I

    sub-int/2addr v7, v9

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v2, v5

    .line 360
    .local v2, stage:I
    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v5, v5

    int-to-double v7, v2

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleSize:I

    sub-int/2addr v7, v9

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 364
    if-gez v0, :cond_5

    move v0, v10

    .line 365
    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    if-le v0, v5, :cond_6

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    move v0, v5

    .line 367
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    .line 369
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    if-eqz v5, :cond_1

    .line 370
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    invoke-interface {v5, v2, v0}, Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;->onToggleChanged(II)V

    goto/16 :goto_1

    .line 373
    .end local v0           #progress:I
    .end local v2           #stage:I
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    if-eqz v5, :cond_1

    .line 374
    iget-object v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;->onStopTrackingTouch()V

    goto/16 :goto_1

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setMaxProgress(I)V
    .locals 1
    .parameter "maximum"

    .prologue
    .line 154
    if-lez p1, :cond_0

    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    .line 155
    return-void

    .line 154
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public setOnToggleBarChangeListener(Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->seekbarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleBarChangeListener;

    .line 147
    return-void
.end method

.method public setOnToggleChangeListener(Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    .line 151
    return-void
.end method

.method public setProgress(I)V
    .locals 7
    .parameter "progress"

    .prologue
    const/4 v5, 0x0

    .line 174
    if-gez p1, :cond_0

    move p1, v5

    .line 175
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    move p1, v1

    .line 177
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    .line 178
    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress1:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 182
    .local v0, xlength:I
    if-gez v0, :cond_2

    move v0, v5

    .line 183
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    if-le v0, v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    move v0, v1

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbStartTop:I

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->invalidate()V

    .line 194
    return-void
.end method

.method public setProgress2(I)V
    .locals 7
    .parameter "progress"

    .prologue
    const/4 v5, 0x0

    .line 200
    if-gez p1, :cond_0

    move p1, v5

    .line 201
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    move p1, v1

    .line 203
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress2:I

    .line 204
    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->curProgress2:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->maxProgress:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 208
    .local v0, xlength:I
    if-gez v0, :cond_2

    move v0, v5

    .line 209
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    if-le v0, v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->measuredWidth:I

    move v0, v1

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->thumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->startTop:I

    iget v6, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->height:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ToggleBar;->invalidate()V

    .line 216
    return-void
.end method

.method public setSecondEnable(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->secEnable:Z

    .line 159
    return-void
.end method

.method public setToggleEnable(Z)V
    .locals 0
    .parameter "isecEnable"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->tglEnable:Z

    .line 234
    return-void
.end method

.method public setToggleSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 237
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->toggleSize:I

    .line 238
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bTouchable:Z

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->bTouchable:Z

    if-eqz v0, :cond_0

    .line 168
    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ToggleBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 407
    :cond_0
    return-void
.end method
