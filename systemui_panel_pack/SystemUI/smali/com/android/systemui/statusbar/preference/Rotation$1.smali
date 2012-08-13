.class Lcom/android/systemui/statusbar/preference/Rotation$1;
.super Ljava/lang/Object;
.source "Rotation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Rotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Rotation;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Rotation;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Rotation;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/Rotation;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mSummary:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    :goto_1
    return-void

    .line 45
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
