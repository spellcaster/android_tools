.class public Lcom/android/systemui/statusbar/preference/Settings;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Settings.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/preference/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Settings$1;-><init>(Lcom/android/systemui/statusbar/preference/Settings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Settings;->mClickListener:Landroid/view/View$OnClickListener;

    .line 13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Settings;->init()V

    .line 14
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Settings;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Settings;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Settings;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Settings;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Settings;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Settings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Settings;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    return-void
.end method
