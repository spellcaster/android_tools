.class public Lcom/android/systemui/statusbar/preference/Rotation;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Rotation.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/preference/Rotation$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Rotation$1;-><init>(Lcom/android/systemui/statusbar/preference/Rotation;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mClickListener:Landroid/view/View$OnClickListener;

    .line 12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Rotation;->init()V

    .line 13
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 4

    .prologue
    .line 26
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 30
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 31
    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mSummary:Landroid/widget/TextView;

    const v2, 0x104032f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mSummary:Landroid/widget/TextView;

    const v2, 0x1040330

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    return-void
.end method
