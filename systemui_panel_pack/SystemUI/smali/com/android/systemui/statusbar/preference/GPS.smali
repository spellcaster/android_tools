.class public Lcom/android/systemui/statusbar/preference/GPS;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "GPS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GPSStatusBarPreference"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGpsSettingsObserver:Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 27
    new-instance v0, Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;-><init>(Lcom/android/systemui/statusbar/preference/GPS;Lcom/android/systemui/statusbar/preference/GPS$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mGpsSettingsObserver:Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/preference/GPS$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/GPS$1;-><init>(Lcom/android/systemui/statusbar/preference/GPS;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/preference/GPS$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/GPS$3;-><init>(Lcom/android/systemui/statusbar/preference/GPS;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mClickListener:Landroid/view/View$OnClickListener;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/GPS;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/GPS;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/GPS;->updateToggles()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/GPS;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/preference/GPS;Landroid/content/ContentQueryMap;)Landroid/content/ContentQueryMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/GPS;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/GPS;)Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mGpsSettingsObserver:Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/preference/GPS;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method private updateToggles()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 90
    .local v0, gpsEnabled:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS;->mSummary:Landroid/widget/TextView;

    const v2, 0x104032f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS;->mSummary:Landroid/widget/TextView;

    const v2, 0x1040330

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/preference/GPS$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/preference/GPS$2;-><init>(Lcom/android/systemui/statusbar/preference/GPS;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/GPS;->updateToggles()V

    .line 67
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mGpsSettingsObserver:Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS;->mGpsSettingsObserver:Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 74
    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    return-void
.end method
