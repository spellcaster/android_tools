.class public Lcom/lidroid/systemui/quickpanel/SoundButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "SoundButton.java"


# static fields
.field public static AUDIO_MANAGER:Landroid/media/AudioManager; = null

.field public static final CM_MODE_SOUNDVIB_SOUND_VIB_SILENT:I = 0x5

.field public static final CM_MODE_SOUNDVIB_VIB:I = 0x0

.field public static final CM_MODE_SOUNDVIB_VIB_SILENT:I = 0x3

.field public static final CM_MODE_SOUND_SILENT:I = 0x2

.field public static final CM_MODE_SOUND_VIB:I = 0x1

.field public static final CM_MODE_SOUND_VIB_SILENT:I = 0x4

.field public static final CM_MODE_VIB_SILENT:I = 0x6

.field public static final RINGER_MODE_SILENT:I = 0x1

.field public static final RINGER_MODE_SOUND_AND_VIBRATE:I = 0x4

.field public static final RINGER_MODE_SOUND_ONLY:I = 0x3

.field public static final RINGER_MODE_UNKNOWN:I = 0x0

.field public static final RINGER_MODE_VIBRATE_ONLY:I = 0x2

.field public static final VIBRATE_DURATION:I = 0x1f4

.field public static VIBRATOR:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    .line 30
    sput-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleSound"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_ring_mode"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getSoundState(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 190
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->initServices(Landroid/content/Context;)V

    .line 192
    sget-object v2, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 193
    .local v0, ringMode:I
    sget-object v2, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 195
    .local v1, vibrateMode:I
    if-ne v0, v4, :cond_0

    if-ne v1, v3, :cond_0

    .line 196
    const/4 v2, 0x4

    .line 204
    :goto_0
    return v2

    .line 197
    :cond_0
    if-ne v0, v4, :cond_1

    .line 198
    const/4 v2, 0x3

    goto :goto_0

    .line 199
    :cond_1
    if-ne v0, v3, :cond_2

    move v2, v4

    .line 200
    goto :goto_0

    .line 201
    :cond_2
    if-nez v0, :cond_3

    move v2, v3

    .line 202
    goto :goto_0

    :cond_3
    move v2, v5

    .line 204
    goto :goto_0
.end method

.method private static hapticFeedbackEnabled(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_haptic_feedback"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 249
    .local v2, hfPwrWidg:I
    if-ne v2, v7, :cond_1

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 254
    .local v1, hfGlobl:I
    if-ne v1, v5, :cond_0

    move v0, v5

    .line 259
    .end local v1           #hfGlobl:I
    .local v0, hf:Z
    :goto_0
    return v0

    .end local v0           #hf:Z
    .restart local v1       #hfGlobl:I
    :cond_0
    move v0, v6

    .line 254
    goto :goto_0

    .line 256
    .end local v1           #hfGlobl:I
    :cond_1
    if-ne v2, v5, :cond_2

    move v0, v5

    .restart local v0       #hf:Z
    :goto_1
    goto :goto_0

    .end local v0           #hf:Z
    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method private static initServices(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 209
    sget-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 210
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    .line 212
    :cond_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 213
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/Vibrator;

    sput-object p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    .line 215
    :cond_1
    return-void
.end method

.method private supports(I)Z
    .locals 7
    .parameter "ringerMode"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 155
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/SoundButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v0

    .line 157
    .local v0, currentMode:I
    packed-switch p1, :pswitch_data_0

    .line 185
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 159
    :pswitch_0
    if-eq v0, v6, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    :cond_1
    move v1, v2

    .line 163
    goto :goto_0

    .line 166
    :pswitch_1
    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    :cond_2
    move v1, v2

    .line 171
    goto :goto_0

    .line 174
    :pswitch_2
    if-eq v0, v2, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_3

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    .line 177
    goto :goto_0

    .line 180
    :pswitch_3
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_0

    :cond_4
    move v1, v2

    .line 182
    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static updateSettings(Landroid/content/Context;IIIZ)V
    .locals 3
    .parameter "context"
    .parameter "vibrateInSilence"
    .parameter "amVibrateSetting"
    .parameter "amRingerMode"
    .parameter "doHapticFeedback"

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_in_silent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    sget-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 230
    sget-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v0, p3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 233
    if-eqz p4, :cond_0

    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->hapticFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "qp_sound_text"

    .line 277
    :goto_0
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetStr(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 265
    :pswitch_0
    const-string v0, "qp_sound_vibration_text"

    goto :goto_0

    :pswitch_1
    const-string v0, "qp_sound_text"

    .line 268
    goto :goto_0

    .line 271
    :pswitch_2
    const-string v0, "qp_vibration_text"

    goto :goto_0

    .line 274
    :pswitch_3
    const-string v0, "qp_silent_text"

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 59
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v1

    .line 63
    .local v1, currentState:I
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->initServices(Landroid/content/Context;)V

    .line 65
    packed-switch v1, :pswitch_data_0

    .line 129
    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    .line 132
    :goto_0
    return-void

    .line 68
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-static {v0, v3, v4, v4, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, v4}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-static {v0, v3, v3, v3, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    invoke-static {v0, v5, v5, v5, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v0, v3, v3, v3, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    invoke-static {v0, v3, v4, v3, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-direct {p0, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    invoke-static {v0, v5, v5, v5, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 89
    :cond_4
    invoke-direct {p0, v7}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 93
    :cond_5
    invoke-static {v0, v3, v3, v3, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 100
    invoke-static {v0, v5, v5, v5, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 102
    :cond_6
    invoke-direct {p0, v7}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 103
    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 105
    :cond_7
    invoke-direct {p0, v6}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 106
    invoke-static {v0, v3, v4, v4, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 109
    :cond_8
    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 114
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 115
    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 117
    :cond_9
    invoke-direct {p0, v6}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 118
    invoke-static {v0, v3, v4, v4, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 120
    :cond_a
    invoke-direct {p0, v4}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 121
    invoke-static {v0, v3, v4, v3, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto/16 :goto_0

    .line 124
    :cond_b
    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateState()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 36
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 38
    :pswitch_0
    const-string v0, "qp_sound_ring_vibrate"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mIcon:I

    .line 39
    iput v1, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "qp_sound_ring"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mIcon:I

    .line 43
    iput v1, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "qp_sound_vibrate"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mIcon:I

    .line 47
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    .line 50
    :pswitch_3
    const-string v0, "qp_sound_silent"

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/QPids;->qpGetDrwb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mIcon:I

    .line 51
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
