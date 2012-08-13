.class public Lcom/android/systemui/statusbar/RecentApps;
.super Landroid/widget/LinearLayout;
.source "RecentApps.java"


# static fields
.field protected static final MAX_RECENT_TASKS:I = 0x10

.field protected static final NUM_BUTTONS:I = 0x8

.field protected static final Update_Icon:I

.field private static bFirst:Z

.field protected static mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;


# instance fields
.field protected final mButtons:[Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field protected mIsFirstLoadButton:Z

.field protected mNewOrient:I

.field protected mOldOrient:I

.field protected mRecentAppIconListener:Landroid/view/View$OnClickListener;

.field protected mRecentAppTitle:Landroid/widget/TextView;

.field protected mRecentAppsIconSize:I

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field protected mShortcutHandler:Landroid/os/Handler;

.field protected mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/RecentApps;->bFirst:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/RecentApps;->mNewOrient:I

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/RecentApps;->mOldOrient:I

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/RecentApps;->mRecentAppsIconSize:I

    .line 31
    iput-object v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mContext:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/RecentApps;->mIsFirstLoadButton:Z

    .line 35
    iput-object v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mRecentAppTitle:Landroid/widget/TextView;

    .line 36
    iput-object v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mShortcutHandler:Landroid/os/Handler;

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    .line 44
    iput-object v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 316
    new-instance v0, Lcom/android/systemui/statusbar/RecentApps$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/RecentApps$2;-><init>(Lcom/android/systemui/statusbar/RecentApps;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RecentApps;->mRecentAppIconListener:Landroid/view/View$OnClickListener;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/RecentApps;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/RecentApps;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mRecentAppsIconSize:I

    .line 226
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarStyleable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/RecentApps;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 228
    new-instance v1, Lcom/android/systemui/statusbar/RecentApps$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/RecentApps$1;-><init>(Lcom/android/systemui/statusbar/RecentApps;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mShortcutHandler:Landroid/os/Handler;

    .line 237
    return-void
.end method


# virtual methods
.method protected getViewIndex(I)I
    .locals 1
    .parameter "rsID"

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, index:I
    packed-switch p1, :pswitch_data_0

    .line 313
    :goto_0
    return v0

    .line 289
    :pswitch_0
    const/4 v0, 0x0

    .line 290
    goto :goto_0

    .line 292
    :pswitch_1
    const/4 v0, 0x1

    .line 293
    goto :goto_0

    .line 295
    :pswitch_2
    const/4 v0, 0x2

    .line 296
    goto :goto_0

    .line 298
    :pswitch_3
    const/4 v0, 0x3

    .line 299
    goto :goto_0

    .line 301
    :pswitch_4
    const/4 v0, 0x4

    .line 302
    goto :goto_0

    .line 304
    :pswitch_5
    const/4 v0, 0x5

    .line 305
    goto :goto_0

    .line 307
    :pswitch_6
    const/4 v0, 0x6

    .line 308
    goto :goto_0

    .line 310
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a003a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected loadButtons(Z)V
    .locals 10
    .parameter "bRefresh"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, button:I
    if-eqz p1, :cond_0

    .line 247
    sget-object v5, Lcom/android/systemui/statusbar/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->getRecentTask()V

    .line 250
    :cond_0
    sget-object v5, Lcom/android/systemui/statusbar/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->getTaskNumber()I

    move-result v3

    .line 252
    .local v3, tasknumber:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 253
    sget-object v5, Lcom/android/systemui/statusbar/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->getRecentItem(I)Lcom/android/systemui/statusbar/ItemInfo;

    move-result-object v2

    .line 254
    .local v2, iteminfo:Lcom/android/systemui/statusbar/ItemInfo;
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    aget-object v5, v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0038

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 255
    .local v4, tv:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/RecentApps;->setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 256
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v2           #iteminfo:Lcom/android/systemui/statusbar/ItemInfo;
    .end local v4           #tv:Landroid/view/View;
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/RecentApps;->mIsFirstLoadButton:Z

    if-eqz v5, :cond_2

    if-lez v0, :cond_2

    .line 261
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/RecentApps;->setVisibility(I)V

    .line 264
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mIsFirstLoadButton:Z

    .line 268
    :cond_2
    :goto_1
    if-ge v3, v9, :cond_3

    .line 269
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    aget-object v5, v5, v3

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 271
    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 103
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v9, 0x0

    const v10, 0x7f0a003a

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v8, v9

    .line 104
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v9, 0x1

    const v10, 0x7f0a003b

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v8, v9

    .line 105
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v9, 0x2

    const v10, 0x7f0a003c

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v8, v9

    .line 106
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v9, 0x3

    const v10, 0x7f0a003d

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v8, v9

    .line 107
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v9, 0x4

    const v10, 0x7f0a003e

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v8, v9

    .line 108
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v9, 0x5

    const v10, 0x7f0a003f

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v8, v9

    .line 109
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v9, 0x6

    const v10, 0x7f0a0040

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v8, v9

    .line 110
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v9, 0x7

    const v10, 0x7f0a0041

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v8, v9

    .line 111
    const v8, 0x7f0a0039

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/RecentApps;->mRecentAppTitle:Landroid/widget/TextView;

    .line 112
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mRecentAppTitle:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RecentApps;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 116
    .local v2, dm:Landroid/util/DisplayMetrics;
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v9, 0x21c

    if-ne v8, v9, :cond_0

    .line 117
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    .local v6, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x78

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 119
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v8, 0x8

    if-ge v3, v8, :cond_0

    .line 120
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    aget-object v8, v8, v3

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v3           #i:I
    .end local v6           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECEENT_APP_BACKGROUND:Z

    if-eqz v8, :cond_5

    .line 136
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_1

    .line 138
    const v8, 0x7f020192

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    .line 151
    :goto_1
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mOldOrient:I

    .line 156
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v1, v0, v4

    .line 157
    .local v1, b:Landroid/view/View;
    const v8, 0x7f0a0038

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 158
    .local v7, tv:Landroid/widget/TextView;
    const v8, 0x7f0200ad

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 159
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentApps;->mRecentAppIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 139
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #b:Landroid/view/View;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_1
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v9, 0x1e0

    if-ne v8, v9, :cond_2

    .line 141
    const v8, 0x7f020196

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    goto :goto_1

    .line 142
    :cond_2
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v9, 0x21c

    if-ne v8, v9, :cond_3

    .line 144
    const v8, 0x7f020194

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    goto :goto_1

    .line 145
    :cond_3
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v9, 0x2d0

    if-ne v8, v9, :cond_4

    .line 147
    const v8, 0x7f020190

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    goto :goto_1

    .line 149
    :cond_4
    const v8, -0xddddde

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundColor(I)V

    goto :goto_1

    .line 153
    :cond_5
    const v8, -0xddddde

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundColor(I)V

    goto :goto_2

    .line 162
    .restart local v0       #arr$:[Landroid/view/View;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RecentApps;->updateStyleableResource()V

    .line 163
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/RecentApps;->setVisibility(I)V

    .line 164
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/16 v4, 0x1e0

    const v3, -0xddddde

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 170
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECEENT_APP_BACKGROUND:Z

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RecentApps;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mNewOrient:I

    .line 179
    iget v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mOldOrient:I

    iget v2, p0, Lcom/android/systemui/statusbar/RecentApps;->mNewOrient:I

    if-eq v1, v2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RecentApps;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 181
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mNewOrient:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 182
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v4, :cond_1

    .line 184
    const v1, 0x7f020193

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    .line 214
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mNewOrient:I

    iput v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mOldOrient:I

    .line 217
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_0
    return-void

    .line 185
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x320

    if-ne v1, v2, :cond_2

    .line 187
    const v1, 0x7f020197

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    .line 188
    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x3c0

    if-ne v1, v2, :cond_3

    .line 190
    const v1, 0x7f020195

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    .line 191
    :cond_3
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_4

    .line 193
    const v1, 0x7f020191

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    .line 195
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundColor(I)V

    goto :goto_0

    .line 198
    :cond_5
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_6

    .line 200
    const v1, 0x7f020192

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    .line 201
    :cond_6
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v4, :cond_7

    .line 203
    const v1, 0x7f020196

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    .line 204
    :cond_7
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x21c

    if-ne v1, v2, :cond_8

    .line 206
    const v1, 0x7f020194

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    .line 207
    :cond_8
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_9

    .line 209
    const v1, 0x7f020190

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    .line 211
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/RecentApps;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public scrollToZero()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/RecentApps;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 56
    return-void
.end method

.method protected setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 5
    .parameter "theButton"
    .parameter "theTitle"
    .parameter "icon"
    .parameter "tag"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 274
    const v1, 0x7f0a0038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    if-eqz p3, :cond_0

    .line 277
    iget v1, p0, Lcom/android/systemui/statusbar/RecentApps;->mRecentAppsIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/RecentApps;->mRecentAppsIconSize:I

    invoke-virtual {p3, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    :cond_0
    invoke-virtual {v0, v4, p3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 280
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 282
    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 283
    return-void
.end method

.method public setRecentApplications()V
    .locals 5

    .prologue
    .line 60
    sget-boolean v3, Lcom/android/systemui/statusbar/RecentApps;->bFirst:Z

    if-eqz v3, :cond_1

    .line 62
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "favorite_item_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v3, "favorite_intent"

    const-string v4, "component=com.htc.android.mail/.MailListTab"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Lcom/android/systemui/statusbar/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    if-nez v3, :cond_0

    .line 72
    new-instance v3, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentApps;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/statusbar/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    .line 73
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentApps;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentApps;->mShortcutHandler:Landroid/os/Handler;

    invoke-static {v3}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->setUpdateHandler(Landroid/os/Handler;)V

    .line 78
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/statusbar/RecentApps;->bFirst:Z

    .line 81
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/RecentApps;->loadButtons(Z)V

    .line 87
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentApps;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 88
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentApps;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RecentApps;->updateStyleableResource()V

    .line 90
    :cond_2
    return-void

    .line 66
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 67
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected updateStyleableResource()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentApps;->mButtons:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 94
    .local v1, b:Landroid/view/View;
    const v5, 0x7f0a0038

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentApps;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v6, "shortcut_selector"

    const v7, 0x7f0200ad

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v1           #b:Landroid/view/View;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
