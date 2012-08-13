.class public Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;
.super Landroid/widget/LinearLayout;
.source "QuickSettingsConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickSettingsConfig"


# instance fields
.field private mCarrierAppView:Lcom/android/systemui/statusbar/CarrierAppView;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/systemui/statusbar/StatusBarService;

.field private mSettingTitle:Lcom/android/systemui/statusbar/TitleView;

.field private mSettingTitleListener:Landroid/view/View$OnClickListener;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mWlanConfigView:Lcom/android/systemui/statusbar/WlanConfigView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig$1;-><init>(Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitleListener:Landroid/view/View$OnClickListener;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mContext:Landroid/content/Context;

    .line 66
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->init()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;)Lcom/android/systemui/statusbar/StatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 80
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/WlanConfigView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mWlanConfigView:Lcom/android/systemui/statusbar/WlanConfigView;

    .line 83
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CarrierAppView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mCarrierAppView:Lcom/android/systemui/statusbar/CarrierAppView;

    .line 86
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/TitleView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitle:Lcom/android/systemui/statusbar/TitleView;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitle:Lcom/android/systemui/statusbar/TitleView;

    const v1, 0x7f080049

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/systemui/statusbar/TitleView;->updateName(ZIZ)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitle:Lcom/android/systemui/statusbar/TitleView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/TitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mWlanConfigView:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/WlanConfigView;->onStart()V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mCarrierAppView:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CarrierAppView;->onStart()V

    .line 110
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mWlanConfigView:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/WlanConfigView;->onStop()V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mCarrierAppView:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CarrierAppView;->onStop()V

    .line 116
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mWlanConfigView:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/WlanConfigView;->setService(Lcom/android/systemui/statusbar/StatusBarService;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mCarrierAppView:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/CarrierAppView;->setService(Lcom/android/systemui/statusbar/StatusBarService;)V

    .line 123
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mWlanConfigView:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/WlanConfigView;->updateResources()V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mCarrierAppView:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CarrierAppView;->updateResources()V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitle:Lcom/android/systemui/statusbar/TitleView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/TitleView;->updateResources()V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitle:Lcom/android/systemui/statusbar/TitleView;

    const v1, 0x7f080049

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/systemui/statusbar/TitleView;->updateName(ZIZ)V

    .line 104
    return-void
.end method
