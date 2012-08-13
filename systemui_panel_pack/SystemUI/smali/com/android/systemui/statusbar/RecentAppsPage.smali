.class public Lcom/android/systemui/statusbar/RecentAppsPage;
.super Lcom/android/systemui/statusbar/RecentApps;
.source "RecentAppsPage.java"


# static fields
.field private static bFirst:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mButtons:[Landroid/view/View;

.field private final mButtonsL:[Landroid/view/View;

.field private mRecentAppIndicator:Landroid/widget/LinearLayout;

.field private mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

.field private mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

.field private mWorkSpacePage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/RecentAppsPage;->bFirst:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x8

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/RecentApps;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    .line 33
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpacePage:I

    .line 255
    new-instance v0, Lcom/android/systemui/statusbar/RecentAppsPage$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/RecentAppsPage$1;-><init>(Lcom/android/systemui/statusbar/RecentAppsPage;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/RecentAppsPage;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/RecentAppsPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpacePage:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/RecentAppsPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpacePage:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/RecentAppsPage;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mRecentAppIndicator:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.widget.workaspace.PAGE_SCROLLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method


# virtual methods
.method protected loadButtons(Z)V
    .locals 15
    .parameter "bRefresh"

    .prologue
    const v14, 0x7f0a0038

    const/16 v13, 0x8

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, button:I
    if-eqz p1, :cond_0

    .line 206
    sget-object v8, Lcom/android/systemui/statusbar/RecentAppsPage;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->getRecentTask()V

    .line 209
    :cond_0
    sget-object v8, Lcom/android/systemui/statusbar/RecentAppsPage;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->getTaskNumber()I

    move-result v5

    .line 211
    .local v5, tasknumber:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 212
    sget-object v8, Lcom/android/systemui/statusbar/RecentAppsPage;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->getRecentItem(I)Lcom/android/systemui/statusbar/ItemInfo;

    move-result-object v4

    .line 213
    .local v4, iteminfo:Lcom/android/systemui/statusbar/ItemInfo;
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    aget-object v8, v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object v0, v8

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 214
    .local v6, tv:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    aget-object v8, v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object v0, v8

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    .line 215
    .local v7, tvL:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 218
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 219
    iget v8, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mRecentAppsIconSize:I

    iget v9, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mRecentAppsIconSize:I

    invoke-virtual {v3, v10, v10, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    :cond_1
    invoke-virtual {v6, v11, v3, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual {v6, v12, v10, v12, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 223
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 224
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    aget-object v8, v8, v2

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setPressed(Z)V

    .line 226
    invoke-virtual {v6}, Landroid/widget/TextView;->clearFocus()V

    .line 228
    invoke-virtual {v7, v11, v3, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {v7, v12, v10, v12, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 230
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 231
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    aget-object v8, v8, v2

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setPressed(Z)V

    .line 233
    invoke-virtual {v7}, Landroid/widget/TextView;->clearFocus()V

    .line 235
    add-int/lit8 v1, v1, 0x1

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #iteminfo:Lcom/android/systemui/statusbar/ItemInfo;
    .end local v6           #tv:Landroid/widget/TextView;
    .end local v7           #tvL:Landroid/widget/TextView;
    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mIsFirstLoadButton:Z

    if-eqz v8, :cond_3

    if-lez v1, :cond_3

    .line 239
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentAppsPage;->setVisibility(I)V

    .line 240
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mIsFirstLoadButton:Z

    .line 244
    :cond_3
    :goto_1
    if-ge v5, v13, :cond_4

    .line 245
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    aget-object v8, v8, v5

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v8, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    aget-object v8, v8, v5

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 244
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 248
    :cond_4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 117
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/RecentAppsPage;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    iput-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    .line 118
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentAppsPage;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    iput-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    .line 119
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v7, 0x7f0a003a

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v13

    .line 120
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v7, 0x7f0a003b

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v9

    .line 121
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v7, 0x7f0a003c

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v10

    .line 122
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v7, 0x7f0a003d

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v11

    .line 123
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    const/4 v7, 0x4

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v8, 0x7f0a003e

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v7

    .line 124
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    const/4 v7, 0x5

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v8, 0x7f0a003f

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v7

    .line 125
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    const/4 v7, 0x6

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v8, 0x7f0a0040

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v7

    .line 126
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    const/4 v7, 0x7

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v8, 0x7f0a0041

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v7

    .line 128
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v7, 0x7f0a003a

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v13

    .line 129
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v7, 0x7f0a003b

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v9

    .line 130
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v7, 0x7f0a003c

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v10

    .line 131
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v7, 0x7f0a003d

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v11

    .line 132
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    const/4 v7, 0x4

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v8, 0x7f0a003e

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v7

    .line 133
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    const/4 v7, 0x5

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v8, 0x7f0a003f

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v7

    .line 134
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    const/4 v7, 0x6

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v8, 0x7f0a0040

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v7

    .line 135
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    const/4 v7, 0x7

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const v8, 0x7f0a0041

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    aput-object v5, v6, v7

    .line 137
    const v5, 0x7f0a0039

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/RecentAppsPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mRecentAppTitle:Landroid/widget/TextView;

    .line 138
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mRecentAppTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    const v5, 0x7f0a0042

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/RecentAppsPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mRecentAppIndicator:Landroid/widget/LinearLayout;

    .line 141
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mRecentAppIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 144
    .local v1, b:Landroid/view/View;
    const v5, 0x7f0a0038

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 145
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f0200ad

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 146
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mRecentAppIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v1           #b:Landroid/view/View;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 150
    .restart local v1       #b:Landroid/view/View;
    const v5, 0x7f0a0038

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 151
    .restart local v4       #tv:Landroid/widget/TextView;
    const v5, 0x7f0200ad

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 152
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mRecentAppIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    .end local v1           #b:Landroid/view/View;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->setVisibility(I)V

    .line 157
    invoke-virtual {p0, v12}, Lcom/android/systemui/statusbar/RecentAppsPage;->setVisibility(I)V

    .line 158
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/RecentApps;->onSizeChanged(IIII)V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RecentAppsPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mNewOrient:I

    .line 165
    iget v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mOldOrient:I

    iget v1, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mNewOrient:I

    if-eq v0, v1, :cond_0

    .line 166
    iget v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mNewOrient:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 167
    const v0, 0x7f02008b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/RecentAppsPage;->setBackgroundResource(I)V

    .line 169
    iget v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpacePage:I

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->scrollTo(II)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->setVisibility(I)V

    .line 187
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mNewOrient:I

    iput v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mOldOrient:I

    .line 189
    :cond_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->scrollTo(II)V

    goto :goto_0

    .line 177
    :cond_2
    const v0, 0x7f02008a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/RecentAppsPage;->setBackgroundResource(I)V

    .line 179
    iget v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpacePage:I

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->scrollTo(II)V

    .line 184
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->setVisibility(I)V

    goto :goto_1

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->scrollTo(II)V

    goto :goto_2
.end method

.method public scrollToZero()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/RecentAppsPage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->scrollTo(II)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mRecentAppIndicator:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50
    iput v2, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpacePage:I

    .line 51
    return-void
.end method

.method protected setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 0
    .parameter "theButton"
    .parameter "theTitle"
    .parameter "icon"
    .parameter "tag"

    .prologue
    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/RecentApps;->setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method public setRecentApplications()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 55
    sget-boolean v4, Lcom/android/systemui/statusbar/RecentAppsPage;->bFirst:Z

    if-eqz v4, :cond_1

    .line 57
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "favorite_item_id"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v4, "favorite_intent"

    const-string v5, "component=com.htc.android.mail/.MailListTab"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v4, Lcom/android/systemui/statusbar/RecentAppsPage;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    if-nez v4, :cond_0

    .line 68
    new-instance v4, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/systemui/statusbar/RecentAppsPage;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    .line 69
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/statusbar/RecentAppsPage;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mShortcutHandler:Landroid/os/Handler;

    invoke-static {v4}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->setUpdateHandler(Landroid/os/Handler;)V

    .line 75
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/RecentAppsPage;->loadButtons(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RecentAppsPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    .line 78
    .local v3, orientation:I
    if-ne v3, v7, :cond_5

    .line 79
    iget v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpacePage:I

    if-nez v4, :cond_4

    .line 80
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v4, v6, v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->scrollTo(II)V

    .line 84
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->setVisibility(I)V

    .line 85
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->setVisibility(I)V

    .line 96
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 97
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleChanged()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RecentAppsPage;->updateStyleableResource()V

    .line 99
    :cond_3
    return-void

    .line 62
    .end local v3           #orientation:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #orientation:I
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->scrollTo(II)V

    goto :goto_1

    .line 86
    :cond_5
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 87
    iget v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpacePage:I

    if-nez v4, :cond_6

    .line 88
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v4, v6, v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->scrollTo(II)V

    .line 92
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceP:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->setVisibility(I)V

    .line 93
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->setVisibility(I)V

    goto :goto_2

    .line 90
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mWorkSpaceL:Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;

    const/16 v5, 0x320

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/widget/WidgetVariationWorkspace;->scrollTo(II)V

    goto :goto_3
.end method

.method protected updateStyleableResource()V
    .locals 10

    .prologue
    const v8, 0x7f0a0038

    const v7, 0x7f0200ad

    const-string v9, "shortcut_selector"

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtons:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 104
    .local v1, b:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 105
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v6, "shortcut_selector"

    invoke-virtual {v5, v9, v7}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v1           #b:Landroid/view/View;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mButtonsL:[Landroid/view/View;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 109
    .restart local v1       #b:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 110
    .restart local v4       #tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/RecentAppsPage;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v6, "shortcut_selector"

    invoke-virtual {v5, v9, v7}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    .end local v1           #b:Landroid/view/View;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_1
    return-void
.end method
