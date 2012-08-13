.class public Lcom/android/systemui/statusbar/widget/EaseOutBack;
.super Ljava/lang/Object;
.source "EaseOutBack.java"

# interfaces
.implements Lcom/android/systemui/statusbar/widget/EasingFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentResult(FFFFF)F
    .locals 4
    .parameter "v0"
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 23
    div-float/2addr p2, p5

    .line 24
    mul-float v1, p2, p2

    .line 25
    .local v1, ts:F
    mul-float v0, v1, p2

    .line 26
    .local v0, tc:F
    const/high16 v2, 0x3f00

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/high16 v3, -0x4000

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, -0x3f20

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x4090

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    return v2
.end method
