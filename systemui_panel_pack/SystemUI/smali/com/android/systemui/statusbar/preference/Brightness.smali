.class public Lcom/android/systemui/statusbar/preference/Brightness;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Brightness.java"

# interfaces
.implements Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final BRIGHTNESS_CHANGED:Ljava/lang/String; = "com.android.settings.action.BRIGHTNESS_CHANGED"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field protected mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/preference/Brightness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/preference/Brightness$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Brightness$1;-><init>(Lcom/android/systemui/statusbar/preference/Brightness;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mClickListener:Landroid/view/View$OnClickListener;

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->init()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/preference/Brightness;->setAutomaticBrightnessMode(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/Brightness;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    return v0
.end method

.method static synthetic access$200(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-static {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->syncUnderlyingBrightness(I)Z

    move-result v0

    return v0
.end method

.method private static getAutomaticBrightnessMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getBrightnessValue(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setEnabled(Z)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method private static setAutomaticBrightnessMode(Landroid/content/Context;Z)Z
    .locals 2
    .parameter "context"
    .parameter "automatic"

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static setBrightnessValue(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "brightness"

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static syncUnderlyingBrightness(I)Z
    .locals 6
    .parameter "brightness"

    .prologue
    const/4 v4, 0x0

    const-string v5, "Set the backlight brightness failed!"

    .line 163
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 166
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 167
    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 168
    const/4 v2, 0x1

    .line 176
    .end local v1           #power:Landroid/os/IPowerManager;
    :goto_0
    return v2

    .line 170
    .restart local v1       #power:Landroid/os/IPowerManager;
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/preference/Brightness;->TAG:Ljava/lang/String;

    const-string v3, "Set the backlight brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 171
    goto :goto_0

    .line 173
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/systemui/statusbar/preference/Brightness;->TAG:Ljava/lang/String;

    const-string v3, "Set the backlight brightness failed!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v4

    .line 176
    goto :goto_0
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Brightness;->syncUnderlyingBrightness(I)Z

    .line 98
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 46
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/Brightness;->getAutomaticBrightnessMode(Landroid/content/Context;)Z

    move-result v0

    .line 47
    .local v0, autoMode:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    if-eqz v0, :cond_0

    .line 49
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/Brightness;->setBrightnessBarVisibility(Z)V

    .line 53
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/preference/HtcBrightnessMappingSchemeWith226Levels;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/preference/HtcBrightnessMappingSchemeWith226Levels;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    .line 54
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;->setProgressMax(Lcom/android/systemui/statusbar/widget/SeekBar;)V

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/Brightness;->getBrightnessValue(Landroid/content/Context;)I

    move-result v1

    .line 58
    .local v1, brightness:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;->encodeBrightness(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    .line 59
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget v3, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/widget/SeekBar;->setProgress(I)V

    .line 60
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/widget/SeekBar;->setOnSeekBarChangeListener(Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 61
    return-void

    .line 49
    .end local v1           #brightness:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    iget v3, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/Brightness;->setBrightnessValue(Landroid/content/Context;I)Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.action.BRIGHTNESS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method protected setBrightnessBarVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setVisibility(I)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    return-void
.end method
