.class public Lcom/android/systemui/statusbar/preference/Volume;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Volume.java"

# interfaces
.implements Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMaxProgress:I

.field private mProgress:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field private sStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "itemView"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 19
    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    .line 20
    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/preference/Volume$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Volume$1;-><init>(Lcom/android/systemui/statusbar/preference/Volume;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mClickListener:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v0, Lcom/android/systemui/statusbar/preference/Volume$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/preference/Volume$2;-><init>(Lcom/android/systemui/statusbar/preference/Volume;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Volume;->init()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/Volume;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/Volume;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/Volume;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/Volume;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/preference/Volume;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    return p1
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    .line 42
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 106
    packed-switch p2, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 108
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    if-lez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setProgress(I)V

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setProgress(I)V

    :cond_1
    move v0, v2

    .line 114
    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(IZ)V
    .locals 3
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 60
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setMax(I)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setProgress(I)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/widget/SeekBar;->setOnSeekBarChangeListener(Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Volume;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setOnSeekBarChangeListener(Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    return-void
.end method
