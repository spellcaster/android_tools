.class public Lcom/android/systemui/statusbar/preference/TaskManager;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "TaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mFreeMemory:J

.field private mHandler:Landroid/os/Handler;

.field private mTotalMemory:J

.field private mUsedMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/preference/TaskManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "itemView"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 25
    iput-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    .line 26
    iput-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 28
    iput-wide v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mTotalMemory:J

    .line 29
    iput-wide v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J

    .line 30
    iput-wide v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mUsedMemory:J

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/preference/TaskManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/TaskManager$1;-><init>(Lcom/android/systemui/statusbar/preference/TaskManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/preference/TaskManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/TaskManager$2;-><init>(Lcom/android/systemui/statusbar/preference/TaskManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/preference/TaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/TaskManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mTotalMemory:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/preference/TaskManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mTotalMemory:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/TaskManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mUsedMemory:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/preference/TaskManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mUsedMemory:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/TaskManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/preference/TaskManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/preference/TaskManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->readTotalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/preference/TaskManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->readFreeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/systemui/statusbar/preference/TaskManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getActivityManagerInstance()Landroid/app/ActivityManager;
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 118
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 60
    return-void
.end method

.method private readFreeMemory()J
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->getActivityManagerInstance()Landroid/app/ActivityManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 127
    const-wide/16 v1, 0x0

    .line 131
    :goto_0
    return-wide v1

    .line 129
    :cond_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 130
    .local v0, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 131
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    goto :goto_0
.end method

.method private readTotalMemory()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->getActivityManagerInstance()Landroid/app/ActivityManager;

    move-result-object v8

    if-nez v8, :cond_0

    move-wide v8, v10

    .line 157
    :goto_0
    return-wide v8

    .line 139
    :cond_0
    const-wide/16 v5, 0x0

    .line 142
    .local v5, totalKb:J
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "cat /proc/meminfo"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 143
    .local v3, process:Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 145
    .local v4, r:Ljava/io/BufferedReader;
    const/4 v1, 0x1

    .line 146
    .local v1, loop:Z
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, memInfoLine:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 147
    const-string v8, "MemTotal"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, vals:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v5, v8

    .line 150
    const/4 v1, 0x0

    .line 151
    goto :goto_1

    .line 154
    .end local v2           #memInfoLine:Ljava/lang/String;
    .end local v7           #vals:[Ljava/lang/String;
    :cond_2
    const-wide/16 v8, 0x400

    mul-long/2addr v8, v5

    goto :goto_0

    .line 155
    .end local v1           #loop:Z
    .end local v3           #process:Ljava/lang/Process;
    .end local v4           #r:Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 156
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide v8, v10

    .line 157
    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 7

    .prologue
    const-string v6, ": "

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080022

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mTotalMemory:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080023

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mUsedMemory:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080024

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->updateResources()V

    .line 71
    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    const-string v5, ": "

    .line 86
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 87
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080022

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080023

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080024

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0           #summary:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/statusbar/preference/TaskManager$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/preference/TaskManager$3;-><init>(Lcom/android/systemui/statusbar/preference/TaskManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 110
    return-void
.end method
