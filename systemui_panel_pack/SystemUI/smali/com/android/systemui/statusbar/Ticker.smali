.class public abstract Lcom/android/systemui/statusbar/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/Ticker$Segment;
    }
.end annotation


# static fields
.field private static final TICKER_SEGMENT_DELAY:I = 0xbb8


# instance fields
.field private mAdvanceTicker:Ljava/lang/Runnable;

.field private mAnimatedImageView1:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mAnimatedImageView2:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mPaint:Landroid/text/TextPaint;

.field private mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/Ticker$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTickerView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 6
    .parameter "context"
    .parameter "sb"

    .prologue
    const v5, 0x10a0027

    const v4, 0x10a0026

    const/4 v3, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    .line 249
    new-instance v1, Lcom/android/systemui/statusbar/Ticker$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/Ticker$1;-><init>(Lcom/android/systemui/statusbar/Ticker;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/Ticker;->mContext:Landroid/content/Context;

    .line 150
    const v1, 0x7f0a004e

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mTickerView:Landroid/view/View;

    .line 152
    const v1, 0x7f0a004f

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageSwitcher;

    iput-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, v3}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mAnimatedImageView1:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mAnimatedImageView2:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mAnimatedImageView1:Lcom/android/systemui/statusbar/AnimatedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AnimatedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mAnimatedImageView2:Lcom/android/systemui/statusbar/AnimatedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AnimatedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    const v1, 0x7f0a0050

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextSwitcher;

    iput-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, v3}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mPaint:Landroid/text/TextPaint;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/Ticker;)Landroid/widget/TextSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/Ticker;)Landroid/text/TextPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/Ticker;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/Ticker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/Ticker;)Landroid/widget/ImageSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/Ticker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Ticker;->scheduleAdvance()V

    return-void
.end method

.method private scheduleAdvance()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    return-void
.end method


# virtual methods
.method addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 12
    .parameter "n"

    .prologue
    const/4 v11, 0x0

    .line 178
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 183
    .local v3, initialCount:I
    if-lez v3, :cond_1

    .line 184
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/Ticker$Segment;

    .line 185
    .local v5, seg:Lcom/android/systemui/statusbar/Ticker$Segment;
    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/systemui/statusbar/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, v5, Lcom/android/systemui/statusbar/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    if-ne v6, v7, :cond_1

    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->iconLevel:I

    iget-object v7, v5, Lcom/android/systemui/statusbar/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->iconLevel:I

    if-ne v6, v7, :cond_1

    iget-object v6, v5, Lcom/android/systemui/statusbar/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v6, v6, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v7, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Lcom/android/internal/util/CharSequences;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    .end local v5           #seg:Lcom/android/systemui/statusbar/Ticker$Segment;
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v8, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->icon:I

    iget-object v10, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 196
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/android/systemui/statusbar/Ticker$Segment;

    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct {v4, p0, p1, v2, v6}, Lcom/android/systemui/statusbar/Ticker$Segment;-><init>(Lcom/android/systemui/statusbar/Ticker;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 199
    .local v4, newSegment:Lcom/android/systemui/statusbar/Ticker$Segment;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 200
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/Ticker$Segment;

    .line 201
    .restart local v5       #seg:Lcom/android/systemui/statusbar/Ticker$Segment;
    iget v6, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget-object v7, v5, Lcom/android/systemui/statusbar/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    if-ne v6, v7, :cond_2

    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/systemui/statusbar/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 203
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, -0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 199
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    .end local v5           #seg:Lcom/android/systemui/statusbar/Ticker$Segment;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    if-nez v3, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 210
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/Ticker$Segment;

    .line 211
    .restart local v5       #seg:Lcom/android/systemui/statusbar/Ticker$Segment;
    iput-boolean v11, v5, Lcom/android/systemui/statusbar/Ticker$Segment;->first:Z

    .line 213
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v6, v11}, Landroid/widget/ImageSwitcher;->setAnimateFirstView(Z)V

    .line 214
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v6}, Landroid/widget/ImageSwitcher;->reset()V

    .line 215
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v7, v5, Lcom/android/systemui/statusbar/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v6, v11}, Landroid/widget/TextSwitcher;->setAnimateFirstView(Z)V

    .line 218
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v6}, Landroid/widget/TextSwitcher;->reset()V

    .line 219
    iget-object v6, p0, Lcom/android/systemui/statusbar/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Ticker;->tickerStarting()V

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Ticker;->scheduleAdvance()V

    goto/16 :goto_0
.end method

.method halt()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Ticker;->tickerHalting()V

    .line 239
    return-void
.end method

.method reflowText()V
    .locals 4

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/Ticker$Segment;

    .line 244
    .local v0, seg:Lcom/android/systemui/statusbar/Ticker$Segment;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 245
    .local v1, text:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/systemui/statusbar/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 247
    .end local v0           #seg:Lcom/android/systemui/statusbar/Ticker$Segment;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method removeEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 4
    .parameter "n"

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 228
    iget-object v2, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/Ticker$Segment;

    .line 229
    .local v1, seg:Lcom/android/systemui/statusbar/Ticker$Segment;
    iget v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget-object v3, v1, Lcom/android/systemui/statusbar/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/systemui/statusbar/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/systemui/statusbar/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 227
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 233
    .end local v1           #seg:Lcom/android/systemui/statusbar/Ticker$Segment;
    :cond_1
    return-void
.end method

.method abstract tickerDone()V
.end method

.method abstract tickerHalting()V
.end method

.method abstract tickerStarting()V
.end method
