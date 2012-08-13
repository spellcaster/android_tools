.class public Lcom/android/systemui/statusbar/TrackingPatternView;
.super Landroid/view/View;
.source "TrackingPatternView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mTexture:Landroid/graphics/Bitmap;

.field private mTextureHeight:I

.field private mTextureWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/TrackingPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020198

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mTextureWidth:I

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mTextureHeight:I

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 51
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    .line 52
    .local v2, texture:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mPaint:Landroid/graphics/Paint;

    .line 54
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/TrackingPatternView;->getWidth()I

    move-result v5

    .line 55
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/TrackingPatternView;->getHeight()I

    move-result v0

    .line 57
    .local v0, height:I
    iget v4, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mTextureWidth:I

    .line 58
    .local v4, textureWidth:I
    iget v3, p0, Lcom/android/systemui/statusbar/TrackingPatternView;->mTextureHeight:I

    .line 60
    .local v3, textureHeight:I
    const/4 v6, 0x0

    .line 63
    .local v6, x:I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 64
    const/4 v7, 0x0

    .line 65
    .local v7, y:I
    :goto_1
    if-ge v7, v0, :cond_0

    .line 66
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {p1, v2, v8, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 67
    add-int/2addr v7, v3

    goto :goto_1

    .line 69
    :cond_0
    add-int/2addr v6, v4

    goto :goto_0

    .line 71
    .end local v7           #y:I
    :cond_1
    return-void
.end method
