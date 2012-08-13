.class public Lcom/android/systemui/statusbar/CarrierAppView;
.super Landroid/widget/LinearLayout;
.source "CarrierAppView.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "carrier_app_preferences"

.field private static final TAG:Ljava/lang/String; = "CarrierAppView"


# instance fields
.field private mCarrierAppIntentAction:Ljava/lang/String;

.field private mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

.field private mContext:Landroid/content/Context;

.field private mIsVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/systemui/statusbar/StatusBarService;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mTitleButtonListener:Landroid/view/View$OnClickListener;

.field private mUsageInfoViewsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 50
    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mIsVisible:Z

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/CarrierAppView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/CarrierAppView$1;-><init>(Lcom/android/systemui/statusbar/CarrierAppView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/CarrierAppView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/CarrierAppView$2;-><init>(Lcom/android/systemui/statusbar/CarrierAppView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mContext:Landroid/content/Context;

    .line 89
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierAppView;->init()V

    .line 93
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/CarrierAppView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mIsVisible:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/CarrierAppView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierAppIntentAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/CarrierAppView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierAppView;->updateView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/CarrierAppView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierAppView;->storePreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/CarrierAppView;)Lcom/android/systemui/statusbar/StatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 106
    const-string v1, "CarrierAppView"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierAppView;->loadPreferences()V

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.CARRIER_APP_UPDATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method private loadPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, "CarrierAppView"

    .line 188
    const-string v1, "CarrierAppView"

    const-string v1, "loadPreferences"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 191
    const-string v1, "CarrierAppView"

    const-string v1, "loadPreferences: mContext is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mContext:Landroid/content/Context;

    const-string v2, "carrier_app_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "meter_bar_visible"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mIsVisible:Z

    .line 197
    const-string v1, "intent_action"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierAppIntentAction:Ljava/lang/String;

    goto :goto_0
.end method

.method private removeAllUsageInfoViews()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "CarrierAppView"

    const-string v1, "removeAllUsageInfoViews"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierAppView;->removeView(Landroid/view/View;)V

    .line 185
    :cond_0
    return-void
.end method

.method private storePreferences()V
    .locals 5

    .prologue
    const-string v3, "CarrierAppView"

    .line 201
    const-string v2, "CarrierAppView"

    const-string v2, "storePreferences"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 204
    const-string v2, "CarrierAppView"

    const-string v2, "storePreferences: mContext is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mContext:Landroid/content/Context;

    const-string v3, "carrier_app_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "meter_bar_visible"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mIsVisible:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 211
    const-string v2, "intent_action"

    iget-object v3, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierAppIntentAction:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private updateUsageInfoViews()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "CarrierAppView"

    const-string v1, "updateUsageInfoView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierAppView;->removeAllUsageInfoViews()V

    .line 174
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierAppView;->addView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method private updateView()V
    .locals 10

    .prologue
    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v9, "CarrierAppView"

    .line 135
    const-string v6, "CarrierAppView"

    const-string v6, "updateView"

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const v6, 0x7f0a0036

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/CarrierAppView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/TitleView;

    iput-object v6, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    .line 139
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mIsVisible:Z

    if-nez v6, :cond_0

    .line 140
    iget-object v6, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/TitleView;->setVisibility(I)V

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierAppView;->removeAllUsageInfoViews()V

    .line 168
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierAppIntentAction:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, intentQueryInfo:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 147
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 148
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    move v2, v6

    .line 149
    .local v2, isCarrierAppExisted:Z
    :goto_1
    if-nez v2, :cond_2

    .line 150
    const-string v6, "CarrierAppView"

    const-string v6, "Cannot get info of carrier app."

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v6, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/TitleView;->setVisibility(I)V

    goto :goto_0

    .end local v2           #isCarrierAppExisted:Z
    :cond_1
    move v2, v8

    .line 148
    goto :goto_1

    .line 155
    .restart local v2       #isCarrierAppExisted:Z
    :cond_2
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, carrierAppName:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 157
    iget-object v6, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    const v7, 0x7f0a0061

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 158
    .local v5, title:Landroid/widget/TextView;
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v6, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/TitleView;->setVisibility(I)V

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierAppView;->updateUsageInfoViews()V

    goto :goto_0

    .line 162
    .end local v5           #title:Landroid/widget/TextView;
    :cond_3
    const-string v6, "CarrierAppView"

    const-string v6, "Cannot get name of carrier app."

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v6, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/TitleView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 98
    const-string v0, "CarrierAppView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierAppView;->updateView()V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierAppView;->updateResources()V

    .line 103
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 132
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/TitleView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/TitleView;->updateResources()V

    .line 122
    :cond_1
    return-void
.end method
