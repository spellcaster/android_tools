.class public final Lcom/android/systemui/statusbar/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DateView"


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DateView;->mUpdating:Z

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/DateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/DateView$1;-><init>(Lcom/android/systemui/statusbar/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/DateView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DateView;->updateClock()V

    return-void
.end method

.method private final updateClock()V
    .locals 6

    .prologue
    .line 72
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 76
    .local v3, now:Ljava/util/Date;
    const-string v2, ""

    .line 77
    .local v2, format:Ljava/lang/String;
    const-string v0, "EE, MMM dd, yyyy"

    .line 79
    .local v0, DEFAULT_FORMAT:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    move-object v2, v0

    .line 88
    :cond_0
    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void

    .line 80
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 81
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DateView"

    const-string v5, "can\'t get system current date format"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 57
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    .line 63
    return-void
.end method

.method setUpdates(Z)V
    .locals 4
    .parameter "update"

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DateView;->mUpdating:Z

    if-eq p1, v1, :cond_0

    .line 94
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DateView;->mUpdating:Z

    .line 95
    if-eqz p1, :cond_1

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/DateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DateView;->updateClock()V

    .line 106
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/DateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
