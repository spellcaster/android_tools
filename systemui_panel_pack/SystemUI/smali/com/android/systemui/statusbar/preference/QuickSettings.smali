.class public Lcom/android/systemui/statusbar/preference/QuickSettings;
.super Landroid/widget/LinearLayout;
.source "QuickSettings.java"


# static fields
.field private static final AIRPLANE_MODE:I = 0xc

.field private static final BRIGHTNESS:I = 0x4

.field private static final BT:I = 0x2

.field private static final CARRIER_APP:I = 0xb

.field private static final GPS:I = 0x7

.field private static final HOTSPOT:I = 0x5

.field static final HTC_DEBUG:Z = true

.field private static final ITEM_NUMBER:I = 0xe

.field private static final MOBILE_NETWORK:I = 0x3

.field private static final POWER_EFFICIENCY:I = 0xd

.field private static final ROTATION:I = 0x0

.field private static final SETTINGS:I = 0x6

.field static final TAG:Ljava/lang/String; = "QuickSettings"

.field private static final TASK_MANAGER:I = 0x9

.field private static final VOLUME:I = 0xa

.field private static final WIFI:I = 0x1

.field private static final WIMAX:I = 0x8


# instance fields
.field private bSettingItems:[Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mScrollList:Landroid/widget/LinearLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

.field private mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

.field private mStart:Z

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mTitleBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0xe

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-array v0, v1, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    .line 42
    new-array v0, v1, [Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStart:Z

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    .line 54
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->init()V

    .line 58
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 12

    .prologue
    const/4 v7, 0x2

    const/16 v11, 0x8

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 68
    const v3, 0x7f0a0016

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    .line 69
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :cond_0
    const v3, 0x7f0a0017

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollView:Landroid/widget/ScrollView;

    .line 75
    const v3, 0x7f0a0018

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    .line 76
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    if-eqz v3, :cond_1

    .line 81
    const v3, 0x7f0a0019

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    iput-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    .line 87
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    .line 88
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    .line 89
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0019

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 98
    .restart local v2       #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    .line 99
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 100
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    new-instance v5, Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001b

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/android/systemui/statusbar/preference/Rotation;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v5, v4, v8

    .line 106
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    sget-boolean v4, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    if-nez v4, :cond_6

    move v4, v9

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v9

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 108
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    new-instance v5, Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/android/systemui/statusbar/preference/Wifi;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v5, v4, v9

    .line 114
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    .line 115
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 116
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    new-instance v5, Lcom/android/systemui/statusbar/preference/BT;

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0020

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/android/systemui/statusbar/preference/BT;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v5, v4, v7

    .line 122
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/4 v4, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 123
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 124
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/4 v5, 0x3

    new-instance v6, Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/statusbar/preference/MobileNetwork;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, v4, v5

    .line 130
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/4 v4, 0x4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 131
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 132
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/4 v5, 0x4

    new-instance v6, Lcom/android/systemui/statusbar/preference/Brightness;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/statusbar/preference/Brightness;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, v4, v5

    .line 138
    :goto_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v10

    .line 140
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 141
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 142
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, hotspotRegexs:[Ljava/lang/String;
    array-length v3, v1

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v3

    if-nez v3, :cond_4

    .line 145
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v10

    .line 149
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #hotspotRegexs:[Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 150
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    new-instance v5, Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/android/systemui/statusbar/preference/HotSpot;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v5, v4, v10

    .line 156
    :goto_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/4 v4, 0x6

    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    if-nez v5, :cond_c

    move v5, v9

    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 157
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 158
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/4 v5, 0x6

    new-instance v6, Lcom/android/systemui/statusbar/preference/Settings;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0024

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/statusbar/preference/Settings;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, v4, v5

    .line 164
    :goto_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/4 v4, 0x7

    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    if-nez v5, :cond_e

    move v5, v9

    :goto_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 165
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 166
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/4 v5, 0x7

    new-instance v6, Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0021

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/statusbar/preference/GPS;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, v4, v5

    .line 172
    :goto_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v11

    .line 173
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 174
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    new-instance v5, Lcom/android/systemui/statusbar/preference/WiMAX;

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/android/systemui/statusbar/preference/WiMAX;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v5, v4, v11

    .line 180
    :goto_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/16 v4, 0x9

    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_TASK_MANAGER:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 182
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/16 v5, 0x9

    new-instance v6, Lcom/android/systemui/statusbar/preference/TaskManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0025

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/statusbar/preference/TaskManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, v4, v5

    .line 188
    :goto_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/16 v4, 0xa

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 189
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 190
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/16 v5, 0xa

    new-instance v6, Lcom/android/systemui/statusbar/preference/Volume;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0027

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/statusbar/preference/Volume;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, v4, v5

    .line 196
    :goto_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/16 v4, 0xb

    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 197
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 198
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/16 v5, 0xb

    new-instance v6, Lcom/android/systemui/statusbar/preference/CarrierApp;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0026

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/statusbar/preference/CarrierApp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, v4, v5

    .line 204
    :goto_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/16 v4, 0xc

    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 205
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 206
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/16 v5, 0xc

    new-instance v6, Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0022

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/statusbar/preference/AirplaneMode;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, v4, v5

    .line 212
    :goto_11
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/16 v4, 0xd

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 213
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->bSettingItems:[Ljava/lang/Boolean;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 214
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/16 v5, 0xd

    new-instance v6, Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0023

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, v4, v5

    .line 219
    :goto_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->updateResources()V

    .line 220
    return-void

    .line 102
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a001b

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_6
    move v4, v8

    .line 106
    goto/16 :goto_3

    .line 110
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a001c

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 118
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0020

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 126
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a001e

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 134
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a001a

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 152
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a001d

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_c
    move v5, v8

    .line 156
    goto/16 :goto_9

    .line 160
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0024

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_a

    :cond_e
    move v5, v8

    .line 164
    goto/16 :goto_b

    .line 168
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0021

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_c

    .line 176
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a001f

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_d

    .line 184
    :cond_11
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0025

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_e

    .line 192
    :cond_12
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0027

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_f

    .line 200
    :cond_13
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0026

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_10

    .line 208
    :cond_14
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0022

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_11

    .line 216
    :cond_15
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0023

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_12
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 305
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 306
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 223
    const-string v1, "QuickSettings"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->onStart()V

    .line 227
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->onStart()V

    .line 227
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStart:Z

    .line 233
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const-string v2, "QuickSettings"

    .line 236
    const-string v1, "QuickSettings"

    const-string v1, "onStop"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStart:Z

    if-nez v1, :cond_0

    .line 238
    const-string v1, "QuickSettings"

    const-string v1, "onStop: not start"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->onStop()V

    .line 244
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->onStop()V

    .line 244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStart:Z

    goto :goto_0
.end method

.method public scrollToZero()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 312
    :cond_0
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->setService(Lcom/android/systemui/statusbar/StatusBarService;)V

    .line 257
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->setService(Lcom/android/systemui/statusbar/StatusBarService;)V

    .line 257
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_2
    return-void
.end method

.method public updateResources()V
    .locals 9

    .prologue
    .line 266
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 267
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v5, :cond_0

    .line 268
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 270
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    .line 271
    .local v2, tempPaddingLeft:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 272
    .local v4, tempPaddingTop:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 273
    .local v3, tempPaddingRight:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 274
    .local v1, tempPaddingBottom:I
    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S30_HEADER:Z

    if-eqz v5, :cond_4

    .line 275
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v7, "status_bar_titlebar_2round_rest"

    const v8, 0x7f0201a7

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 289
    .end local v1           #tempPaddingBottom:I
    .end local v2           #tempPaddingLeft:I
    .end local v3           #tempPaddingRight:I
    .end local v4           #tempPaddingTop:I
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    const v6, 0x7f080014

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 292
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    if-eqz v5, :cond_2

    .line 293
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->updateResources()V

    .line 295
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v5, 0xe

    if-ge v0, v5, :cond_5

    .line 296
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v5, v5, v0

    if-eqz v5, :cond_3

    .line 297
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 295
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    .end local v0           #i:I
    .restart local v1       #tempPaddingBottom:I
    .restart local v2       #tempPaddingLeft:I
    .restart local v3       #tempPaddingRight:I
    .restart local v4       #tempPaddingTop:I
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mTitleBar:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v7, "status_bar_header_background"

    const v8, 0x7f02019c

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 300
    .end local v1           #tempPaddingBottom:I
    .end local v2           #tempPaddingLeft:I
    .end local v3           #tempPaddingRight:I
    .end local v4           #tempPaddingTop:I
    .restart local v0       #i:I
    :cond_5
    return-void
.end method
