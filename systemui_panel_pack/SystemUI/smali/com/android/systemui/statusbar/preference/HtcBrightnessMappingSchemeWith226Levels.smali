.class final Lcom/android/systemui/statusbar/preference/HtcBrightnessMappingSchemeWith226Levels;
.super Ljava/lang/Object;
.source "HtcBrightnessMappingSchemeWith226Levels.java"

# interfaces
.implements Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeBrightness(I)I
    .locals 1
    .parameter "progress"

    .prologue
    .line 9
    add-int/lit8 v0, p1, 0x1e

    return v0
.end method

.method public encodeBrightness(I)I
    .locals 1
    .parameter "brightness"

    .prologue
    .line 13
    const/16 v0, 0x1e

    sub-int v0, p1, v0

    return v0
.end method

.method public getMaximumBacklight()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0xff

    return v0
.end method

.method public getMinimumBacklight()I
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x1e

    return v0
.end method

.method public setProgressMax(Lcom/android/systemui/statusbar/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 17
    const/16 v0, 0xe1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/widget/SeekBar;->setMax(I)V

    .line 18
    return-void
.end method
