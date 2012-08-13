.class public Lcom/android/systemui/statusbar/preference/PowerEfficiency;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "PowerEfficiency.java"


# static fields
.field public static final KEY_ENABLE_POWEREFFICIENCY:Ljava/lang/String; = "enable_power_efficiency"

.field private static final TAG:Ljava/lang/String; = "PowerEfficiencyStatusBarPreference"

.field private static final UPDATE_UI_OFF:I = 0x2

.field private static final UPDATE_UI_ON:I = 0x1


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;-><init>(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mClickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;-><init>(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->init()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method private updateToggles()V
    .locals 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_power_efficiency"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 80
    .local v0, Enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    if-eqz v0, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mSummary:Landroid/widget/TextView;

    const v2, 0x104032f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :goto_1
    return-void

    .line 78
    .end local v0           #Enabled:Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #Enabled:Z
    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mSummary:Landroid/widget/TextView;

    const v2, 0x1040330

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->updateToggles()V

    .line 38
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    return-void
.end method
