.class public Lcom/android/systemui/statusbar/preference/MobileNetwork;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/preference/MobileNetwork$4;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final SENDER:Ljava/lang/String; = "MobileNetwork"

.field private static final TAG:Ljava/lang/String; = "MobileNetworkStatusBarPreference"

.field private static isConnecting:Z


# instance fields
.field private connectivity:Landroid/net/ConnectivityManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mMobileDataEnabledSetting:Z

.field private mMobileDataInService:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;-><init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork$2;-><init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 340
    new-instance v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;-><init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mClickListener:Landroid/view/View$OnClickListener;

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->init()V

    .line 209
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-static {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isEnabledByDependency()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataInService:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput-boolean p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isConnecting:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedAirplaneModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/preference/MobileNetwork;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->updateServiceState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 228
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 226
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 228
    goto :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 233
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v1, p0

    .line 237
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getPersistedAirplaneModeEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private getPersistedMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private isEnabledByDependency()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method private isNetworkAvailable(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    .line 266
    const-string v1, "MobileNetworkStatusBarPreference"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 269
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 271
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private persistMobileDataSettingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    .line 403
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const-string v1, "sender"

    const-string v2, "MobileNetwork"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "MobileNetworkStatusBarPreference"

    .line 352
    const-string v2, "MobileNetworkStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabled()...enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, processDataConnResult:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 360
    if-eqz p1, :cond_2

    .line 361
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->persistMobileDataSettingEnabled(Z)V

    .line 362
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    move-result v1

    .line 363
    const-string v2, "MobileNetworkStatusBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhoneService.enableDataConnectivity():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isNetworkAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 366
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    if-nez v1, :cond_0

    .line 370
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 371
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 396
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 379
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->persistMobileDataSettingEnabled(Z)V

    .line 380
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    move-result v1

    .line 381
    const-string v2, "MobileNetworkStatusBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processDataConnResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-nez v1, :cond_3

    .line 383
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 384
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 387
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    if-nez v2, :cond_4

    .line 388
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 389
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 392
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->persistMobileDataSettingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateServiceState(I)V
    .locals 3
    .parameter "currentStatus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    packed-switch p1, :pswitch_data_0

    .line 328
    sput-boolean v1, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isConnecting:Z

    .line 329
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataInService:Z

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 336
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataInService:Z

    .line 315
    sget-boolean v0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isConnecting:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 324
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public CheckMNetworkFunction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 185
    .local v0, enabled:Z
    if-eqz v0, :cond_2

    .line 186
    sget-boolean v1, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isConnecting:Z

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mSummary:Landroid/widget/TextView;

    const v2, 0x104032f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mSummary:Landroid/widget/TextView;

    const v2, 0x1040330

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "phone"

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_1

    .line 286
    const-string v1, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedMobileDataEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 296
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isConnecting:Z

    .line 303
    :cond_2
    :goto_0
    return-void

    .line 297
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_2

    .line 298
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 301
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 414
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mSummary:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
