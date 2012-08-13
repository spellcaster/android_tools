.class public Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.super Ljava/lang/Object;
.source "StatusBarPreference.java"


# instance fields
.field protected mCheckBox:Landroid/widget/CheckBox;

.field protected mContentView:Landroid/widget/LinearLayout;

.field protected mContext:Landroid/content/Context;

.field protected mDivider:Landroid/widget/ImageView;

.field private mEnable:Z

.field protected mIcon:Landroid/widget/ImageView;

.field protected mItemView:Landroid/widget/LinearLayout;

.field protected mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field protected mSummary:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "itemView"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 29
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    .line 33
    check-cast p2, Landroid/widget/LinearLayout;

    .end local p2
    iput-object p2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mItemView:Landroid/widget/LinearLayout;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mDivider:Landroid/widget/ImageView;

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->init()V

    .line 37
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 40
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0061

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0062

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0063

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/widget/SeekBar;->setWidth(I)V

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 56
    return-void
.end method


# virtual methods
.method public getEnable()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    if-nez v0, :cond_0

    .line 60
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    if-nez v0, :cond_0

    .line 64
    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setService(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 83
    return-void
.end method

.method public updateResources()V
    .locals 4

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mItemView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mItemView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v2, "status_bar_item_background"

    const v3, 0x7f0201a0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v2, "btn_check"

    const v3, 0x20800d5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/widget/SeekBar;->updateResources()V

    .line 102
    :cond_2
    return-void
.end method
