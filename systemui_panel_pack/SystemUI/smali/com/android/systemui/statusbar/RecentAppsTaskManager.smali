.class public Lcom/android/systemui/statusbar/RecentAppsTaskManager;
.super Lcom/android/systemui/statusbar/RecentApps;
.source "RecentAppsTaskManager.java"


# static fields
.field protected static final MAX_RECENT_TASKS:I = 0x12

.field protected static final NUM_BUTTONS:I = 0x9

.field protected static final Update_Icon:I

.field private static bFirst:Z


# instance fields
.field protected final mButtons:[Landroid/view/View;

.field private mLine1:Landroid/view/View;

.field private mLine2:Landroid/view/View;

.field private mTaskManagerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->bFirst:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/RecentApps;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mTaskManagerIndex:I

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mRecentAppsIconSize:I

    .line 47
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarStyleable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 49
    new-instance v1, Lcom/android/systemui/statusbar/RecentAppsTaskManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/RecentAppsTaskManager$1;-><init>(Lcom/android/systemui/statusbar/RecentAppsTaskManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mShortcutHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method


# virtual methods
.method protected loadButtons(Z)V
    .locals 13
    .parameter "bRefresh"

    .prologue
    .line 106
    const/4 v7, 0x0

    .line 108
    .local v7, button:I
    if-eqz p1, :cond_0

    .line 109
    sget-object v0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->getRecentTask()V

    .line 112
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->getTaskNumber()I

    move-result v12

    .line 114
    .local v12, tasknumber:I
    const/4 v0, 0x4

    if-le v12, v0, :cond_1

    .line 115
    const v0, 0x7f02018f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->setBackgroundResource(I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mLine2:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v0, 0x9

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 120
    sget-object v0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->getRecentItem(I)Lcom/android/systemui/statusbar/ItemInfo;

    move-result-object v9

    .line 121
    .local v9, iteminfo:Lcom/android/systemui/statusbar/ItemInfo;
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    aget-object v1, v0, v8

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v2, "shortcut_selector"

    const v3, 0x7f0200ad

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    aget-object v0, v0, v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    aget-object v0, v0, v8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    add-int/lit8 v7, v7, 0x1

    .line 119
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 128
    .end local v9           #iteminfo:Lcom/android/systemui/statusbar/ItemInfo;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v4, intent:Landroid/content/Intent;
    const-string v0, "com.htc.taskmanager"

    const-string v1, "com.htc.taskmanager.MainActivity"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v0, "from"

    const-string v1, "recent_apps"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/high16 v0, 0x1000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 133
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    invoke-virtual {v10, v4, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 134
    .local v11, resolveInfo:Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 135
    .local v2, title:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 136
    iget-object v6, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 137
    .local v6, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v6, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .end local v6           #activityInfo:Landroid/content/pm/ActivityInfo;
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    aget-object v1, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02019e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v2, "statusbar_task_manager_selector"

    .end local v2           #title:Ljava/lang/String;
    const v3, 0x7f0201be

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    aget-object v0, v0, v7

    const/4 v1, 0x2

    const/16 v2, 0x9

    const/4 v3, 0x2

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    .end local v4           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    aget-object v0, v0, v7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iput v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mTaskManagerIndex:I

    .line 144
    add-int/lit8 v7, v7, 0x1

    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mIsFirstLoadButton:Z

    if-eqz v0, :cond_4

    if-lez v7, :cond_4

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->setVisibility(I)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mIsFirstLoadButton:Z

    .line 152
    :cond_4
    move v8, v7

    :goto_1
    const/16 v0, 0x9

    if-ge v8, v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    aget-object v0, v0, v8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 155
    :cond_5
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const v9, 0x7f0a0038

    .line 62
    iget-object v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    const/4 v8, 0x0

    const v6, 0x7f0a003a

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 63
    iget-object v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    const/4 v8, 0x1

    const v6, 0x7f0a003b

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 64
    iget-object v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    const/4 v8, 0x2

    const v6, 0x7f0a003c

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 65
    iget-object v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    const/4 v8, 0x3

    const v6, 0x7f0a003d

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 66
    iget-object v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    const/4 v8, 0x4

    const v6, 0x7f0a003e

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 67
    iget-object v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    const/4 v8, 0x5

    const v6, 0x7f0a003f

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 68
    iget-object v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    const/4 v8, 0x6

    const v6, 0x7f0a0040

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 69
    iget-object v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    const/4 v8, 0x7

    const v6, 0x7f0a0041

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 70
    iget-object v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    const v6, 0x7f0a0045

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v10

    .line 71
    iget-object v7, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    const/16 v8, 0x9

    const v6, 0x7f0a0046

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 72
    const v6, 0x7f0a0039

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mRecentAppTitle:Landroid/widget/TextView;

    .line 73
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mRecentAppTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    const v6, 0x7f0a0043

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mLine1:Landroid/view/View;

    .line 75
    const v6, 0x7f0a0044

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mLine2:Landroid/view/View;

    .line 76
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mLine2:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    .local v1, arr$:[Landroid/view/View;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 79
    .local v2, b:Landroid/view/View;
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 80
    .local v5, tv:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v7, "shortcut_selector"

    const v8, 0x7f0200ad

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v6, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mRecentAppIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v2           #b:Landroid/view/View;
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->setVisibility(I)V

    .line 85
    return-void
.end method

.method protected setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V
    .locals 6
    .parameter "theButton"
    .parameter "theTitle"
    .parameter "icon"
    .parameter "tag"
    .parameter "taskManager"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 88
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 89
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    if-eqz p3, :cond_0

    .line 91
    if-eqz p5, :cond_1

    .line 92
    iget v2, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mRecentAppsIconSize:I

    const/16 v3, 0x29

    invoke-virtual {p3, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    :goto_0
    invoke-virtual {v1, v5, p3, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_0
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 100
    invoke-virtual {v1}, Landroid/widget/TextView;->clearFocus()V

    .line 101
    return-void

    .line 94
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mRecentAppsIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mRecentAppsIconSize:I

    invoke-virtual {p3, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setRecentApplications()V
    .locals 5

    .prologue
    .line 166
    sget-boolean v3, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->bFirst:Z

    if-eqz v3, :cond_1

    .line 168
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "favorite_item_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v3, "favorite_intent"

    const-string v4, "component=com.htc.android.mail/.MailListTab"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    if-nez v3, :cond_0

    .line 179
    new-instance v3, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    .line 180
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mShortcutHandler:Landroid/os/Handler;

    invoke-static {v3}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->setUpdateHandler(Landroid/os/Handler;)V

    .line 186
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->loadButtons(Z)V

    .line 188
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 189
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->updateStyleableResource()V

    .line 191
    :cond_2
    return-void

    .line 173
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 174
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected updateStyleableResource()V
    .locals 5

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mTaskManagerIndex:I

    if-ge v0, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mButtons:[Landroid/view/View;

    aget-object v1, v2, v0

    check-cast v1, Landroid/widget/TextView;

    .line 160
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/RecentAppsTaskManager;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v3, "shortcut_selector"

    const v4, 0x7f0200ad

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
