.class public Lcom/android/systemui/statusbar/preference/CarrierApp;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "CarrierApp.java"


# static fields
.field public static final CARRIER_APP_INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field public static final CARRIER_APP_METER_BAR_VISIBLE:Ljava/lang/String; = "meter_bar_visible"

.field public static final CARRIER_APP_SHORTCUT_VISIBLE:Ljava/lang/String; = "shortcut_visible"

.field public static final CARRIER_APP_UPDATE_ACTION:Ljava/lang/String; = "com.android.systemui.CARRIER_APP_UPDATE_ACTION"

.field private static final FILE_NAME:Ljava/lang/String; = "carrier_app_preferences"

.field private static final TAG:Ljava/lang/String; = "CarrierAppStatusBarPreference"


# instance fields
.field private mCarrierAppIcon:Landroid/graphics/drawable/Drawable;

.field private mCarrierAppIntentAction:Ljava/lang/String;

.field private mCarrierAppName:Ljava/lang/String;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIsVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "itemView"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mIsVisible:Z

    .line 22
    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppName:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/preference/CarrierApp$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/CarrierApp$1;-><init>(Lcom/android/systemui/statusbar/preference/CarrierApp;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/preference/CarrierApp$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/CarrierApp$2;-><init>(Lcom/android/systemui/statusbar/preference/CarrierApp;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mClickListener:Landroid/view/View$OnClickListener;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/CarrierApp;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/preference/CarrierApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mIsVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/CarrierApp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/preference/CarrierApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/CarrierApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/CarrierApp;->updateView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/CarrierApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/CarrierApp;->storePreferences()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 57
    const-string v1, "CarrierAppStatusBarPreference"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/CarrierApp;->loadPreferences()V

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.CARRIER_APP_UPDATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mContentView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/CarrierApp;->updateView()V

    .line 66
    return-void
.end method

.method private loadPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, "CarrierAppStatusBarPreference"

    .line 147
    const-string v1, "CarrierAppStatusBarPreference"

    const-string v1, "loadPreferences"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 150
    const-string v1, "CarrierAppStatusBarPreference"

    const-string v1, "loadPreferences: mContext is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mContext:Landroid/content/Context;

    const-string v2, "carrier_app_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "shortcut_visible"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mIsVisible:Z

    .line 156
    const-string v1, "intent_action"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    goto :goto_0
.end method

.method private storePreferences()V
    .locals 5

    .prologue
    const-string v3, "CarrierAppStatusBarPreference"

    .line 160
    const-string v2, "CarrierAppStatusBarPreference"

    const-string v2, "storePreferences"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 163
    const-string v2, "CarrierAppStatusBarPreference"

    const-string v2, "storePreferences: mContext is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mContext:Landroid/content/Context;

    const-string v3, "carrier_app_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 168
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "shortcut_visible"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mIsVisible:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v2, "intent_action"

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private updateView()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "CarrierAppStatusBarPreference"

    .line 94
    const-string v4, "CarrierAppStatusBarPreference"

    const-string v4, "updateView"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 97
    const-string v4, "CarrierAppStatusBarPreference"

    const-string v4, "No action to launch Carrier App."

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/preference/CarrierApp;->setEnable(Z)V

    .line 139
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, intentQueryInfo:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 104
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v7

    .line 106
    .local v2, isCarrierAppExisted:Z
    :goto_1
    if-nez v2, :cond_2

    .line 107
    const-string v4, "CarrierAppStatusBarPreference"

    const-string v4, "Cannot get info of carrier app."

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/preference/CarrierApp;->setEnable(Z)V

    goto :goto_0

    .end local v2           #isCarrierAppExisted:Z
    :cond_1
    move v2, v6

    .line 105
    goto :goto_1

    .line 112
    .restart local v2       #isCarrierAppExisted:Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 113
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppName:Ljava/lang/String;

    .line 116
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 117
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIcon:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 130
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mIsVisible:Z

    if-eqz v4, :cond_5

    .line 134
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/preference/CarrierApp;->setEnable(Z)V

    goto :goto_0

    .line 120
    :cond_4
    const-string v4, "CarrierAppStatusBarPreference"

    const-string v4, "Cannot get name of carrier app."

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/preference/CarrierApp;->setEnable(Z)V

    goto :goto_0

    .line 137
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/preference/CarrierApp;->setEnable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 144
    return-void
.end method
