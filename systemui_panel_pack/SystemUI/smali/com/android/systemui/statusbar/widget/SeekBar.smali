.class public Lcom/android/systemui/statusbar/widget/SeekBar;
.super Landroid/view/View;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mDrawBg:Landroid/graphics/drawable/Drawable;

.field private mDrawPlayed:Landroid/graphics/drawable/Drawable;

.field private mDrawThumb:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mFocusFlag:Z

.field private mHeight:I

.field private mListener:Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;

.field private mMax:I

.field private mMesureWidth:I

.field private mProgress:I

.field mShadow:Landroid/graphics/Paint;

.field private mStartLeft:I

.field private mStartTop:I

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mThumbHeight:I

.field private mThumbStartTop:I

.field private mThumbWidth:I

.field private mWidth:I

.field mX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    .line 34
    iput v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    .line 35
    iput v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbStartTop:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mShadow:Landroid/graphics/Paint;

    .line 84
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mFocusFlag:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mProgress:I

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    .line 143
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMax:I

    .line 153
    iput v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mX:I

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mShadow:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v1, "common_music_progress_fill"

    const v2, 0x7f02004c

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    .line 58
    const/16 v0, 0xfe

    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mWidth:I

    .line 59
    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mHeight:I

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbHeight:I

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMesureWidth:I

    .line 68
    iput v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    .line 71
    iget v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbStartTop:I

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mHeight:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mHeight:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbStartTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbStartTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 90
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 91
    .local v0, seekbarBound:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 93
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 94
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 97
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 99
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return v7

    .line 101
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mListener:Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mListener:Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch()V

    .line 104
    :cond_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mFocusFlag:Z

    goto :goto_0

    .line 108
    :pswitch_1
    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    sub-int v3, v1, v3

    int-to-double v3, v3

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMax:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMesureWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mProgress:I

    .line 110
    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mProgress:I

    if-gez v3, :cond_2

    .line 111
    iput v8, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mProgress:I

    .line 112
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mProgress:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMax:I

    if-le v3, v4, :cond_3

    .line 113
    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMax:I

    iput v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mProgress:I

    .line 114
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mProgress:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/widget/SeekBar;->setProgress(I)V

    .line 116
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mListener:Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mListener:Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mProgress:I

    invoke-interface {v3, v4, v7}, Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(IZ)V

    goto :goto_0

    .line 122
    :pswitch_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mFocusFlag:Z

    .line 123
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mListener:Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mListener:Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch()V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mEnabled:Z

    .line 151
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMax:I

    .line 146
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mListener:Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;

    .line 202
    return-void
.end method

.method public setProgress(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mProgress:I

    .line 156
    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mProgress:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMax:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMesureWidth:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 158
    .local v0, x:I
    if-gez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 164
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMesureWidth:I

    if-le v0, v1, :cond_1

    .line 165
    iget v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMesureWidth:I

    .line 167
    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mX:I

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbStartTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbStartTop:I

    iget v6, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    iget v6, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SeekBar;->invalidate()V

    .line 182
    return-void
.end method

.method public setWidth(I)V
    .locals 6
    .parameter "width"

    .prologue
    .line 136
    iput p1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mWidth:I

    .line 137
    iget v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mMesureWidth:I

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mHeight:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mHeight:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbStartTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbStartTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v1, "common_music_progress_fill"

    const v2, 0x7f02004c

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mThumbWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mStartTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/widget/SeekBar;->mHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 210
    return-void
.end method
