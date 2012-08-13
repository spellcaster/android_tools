.class public Lcom/android/systemui/statusbar/UpdateShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateShortcutReceiver.java"


# static fields
.field private static final DBG_FORCE_EMPTY_LIST:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "UpdateShortcutReceiver"

.field private static final MAX_RECENT_TASKS:I = 0x12

.field private static final NUM_BUTTONS:I = 0x9

.field private static UpdateHandler:Landroid/os/Handler; = null

.field private static bNew:Z = false

.field private static iteminfo:[Lcom/android/systemui/statusbar/ItemInfo; = null

.field private static final localLOGV:Z = true

.field private static mIndex:I

.field private static mLock:Ljava/lang/Object;

.field private static mRefresh:I

.field private static shortcut:[Lcom/android/systemui/statusbar/ItemInfo;


# instance fields
.field private context:Landroid/content/Context;

.field private mContext:Landroid/content/Context;

.field private tasknumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 50
    new-array v0, v2, [Lcom/android/systemui/statusbar/ItemInfo;

    sput-object v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    .line 53
    new-array v0, v2, [Lcom/android/systemui/statusbar/ItemInfo;

    sput-object v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    .line 54
    sput v1, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    .line 55
    sput v1, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mRefresh:I

    .line 56
    sput-boolean v1, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->bNew:Z

    .line 385
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->UpdateHandler:Landroid/os/Handler;

    .line 386
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "contxt"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mContext:Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    .line 57
    iput-object v1, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->context:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->context:Landroid/content/Context;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/UpdateShortcutReceiver;Landroid/content/Context;JLandroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->updateShortcut(Landroid/content/Context;JLandroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 10
    .parameter "inBitmap"

    .prologue
    const/4 v9, 0x0

    const-string v8, "UpdateShortcutReceiver"

    .line 359
    if-eqz p0, :cond_1

    .line 361
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v3, v5, 0x4

    .line 366
    .local v3, size:I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 368
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 369
    .local v4, success:Z
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 370
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 372
    if-eqz v4, :cond_0

    .line 373
    const-string v5, "UpdateShortcutReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitmap compressed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 383
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    .end local v4           #success:Z
    :goto_0
    return-object v5

    .line 376
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #size:I
    .restart local v4       #success:Z
    :cond_0
    const-string v5, "UpdateShortcutReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitmap doesn\'t compressed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v9

    .line 377
    goto :goto_0

    .line 379
    .end local v4           #success:Z
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 380
    .local v1, e:Ljava/io/IOException;
    const-string v5, "UpdateShortcutReceiver"

    const-string v5, "Could not write icon"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    :cond_1
    move-object v5, v9

    .line 383
    goto :goto_0
.end method

.method public static setUpdateHandler(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 388
    sget-object v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_0
    sput-object p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->UpdateHandler:Landroid/os/Handler;

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateShortcut(Landroid/content/Context;JLandroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "itemId"
    .parameter "iconParcel"
    .parameter "parceIntent"
    .parameter "pkgname"
    .parameter "title"

    .prologue
    .line 157
    const/4 v6, 0x0

    .line 158
    .local v6, bmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 159
    .local v5, Btn:Landroid/widget/ImageButton;
    const/4 v7, 0x0

    .line 160
    .local v7, compressedBitmap:[B
    const/4 v11, 0x0

    .line 162
    .local v11, intent:Landroid/content/Intent;
    const/4 v8, 0x0

    .line 164
    .local v8, d:Landroid/graphics/drawable/Drawable;
    sget-object v12, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 165
    :try_start_0
    move-object/from16 v0, p4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v6, v0

    .line 166
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 168
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    .local v9, d:Landroid/graphics/drawable/Drawable;
    :try_start_1
    sget v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    if-nez v13, :cond_2

    .line 169
    sget-object v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    sget v14, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    new-instance v15, Lcom/android/systemui/statusbar/ItemInfo;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object v3, v9

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/ItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    aput-object v15, v13, v14

    .line 170
    sget v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    .line 208
    :cond_0
    :goto_0
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    sget-object v12, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 210
    :try_start_2
    sget-object v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->UpdateHandler:Landroid/os/Handler;

    if-eqz v13, :cond_1

    .line 211
    sget-object v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->UpdateHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    :cond_1
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    return-void

    .line 172
    :cond_2
    const/4 v13, 0x1

    :try_start_3
    sput-boolean v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->bNew:Z

    .line 173
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    sget v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    if-ge v10, v13, :cond_5

    .line 175
    sget-object v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v13, v13, v10

    if-eqz v13, :cond_3

    .line 177
    sget-object v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4

    .line 173
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 180
    :cond_4
    sget-object v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 181
    sget-object v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    if-eqz p7, :cond_6

    .line 182
    sget-object v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 183
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->bNew:Z

    .line 184
    sput v10, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mRefresh:I

    .line 197
    :cond_5
    :goto_2
    sget-boolean v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->bNew:Z

    if-eqz v13, :cond_7

    .line 198
    sget v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    const/16 v14, 0x9

    if-ge v13, v14, :cond_0

    .line 199
    sget-object v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    sget v14, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    new-instance v15, Lcom/android/systemui/statusbar/ItemInfo;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object v3, v9

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/ItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    aput-object v15, v13, v14

    .line 200
    sget v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 208
    .end local v10           #i:I
    :catchall_0
    move-exception v13

    move-object v8, v9

    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    .restart local v8       #d:Landroid/graphics/drawable/Drawable;
    :goto_3
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v13

    .line 188
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    .restart local v9       #d:Landroid/graphics/drawable/Drawable;
    .restart local v10       #i:I
    :cond_6
    const/4 v13, 0x0

    :try_start_5
    sput-boolean v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->bNew:Z

    .line 189
    sput v10, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mRefresh:I

    goto :goto_2

    .line 203
    :cond_7
    sget v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    const/16 v14, 0x9

    if-ge v13, v14, :cond_0

    .line 204
    sget-object v13, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    sget v14, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mRefresh:I

    aget-object v13, v13, v14

    invoke-virtual {v13, v9}, Lcom/android/systemui/statusbar/ItemInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 212
    .end local v10           #i:I
    :catchall_1
    move-exception v13

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v13

    .line 208
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    .restart local v8       #d:Landroid/graphics/drawable/Drawable;
    :catchall_2
    move-exception v13

    goto :goto_3
.end method


# virtual methods
.method public getRecentItem(I)Lcom/android/systemui/statusbar/ItemInfo;
    .locals 1
    .parameter "Index"

    .prologue
    .line 349
    sget-object v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRecentTask()V
    .locals 26

    .prologue
    .line 229
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 232
    .local v15, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 237
    .local v6, am:Landroid/app/ActivityManager;
    const/16 v22, 0x12

    const/16 v23, 0x2

    move-object v0, v6

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v16

    .line 240
    .local v16, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "android.intent.category.HOME"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    const/16 v23, 0x0

    move-object v0, v15

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 247
    .local v8, homeInfo:Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x0

    .line 248
    .local v7, button:I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    .line 249
    .local v14, numTasks:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v14, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    move/from16 v22, v0

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 250
    move-object/from16 v0, v16

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 255
    .local v11, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v12, Landroid/content/Intent;

    move-object v0, v11

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 256
    .local v12, intent:Landroid/content/Intent;
    move-object v0, v11

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 257
    move-object v0, v11

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    :cond_0
    if-eqz v8, :cond_2

    .line 262
    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 249
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v22

    const v23, -0x200001

    and-int v22, v22, v23

    const/high16 v23, 0x1000

    or-int v22, v22, v23

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 272
    const/16 v22, 0x0

    move-object v0, v15

    move-object v1, v12

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v17

    .line 273
    .local v17, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v17, :cond_1

    .line 274
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    .line 275
    .local v5, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 277
    .local v21, title:Ljava/lang/String;
    const/4 v10, 0x0

    .line 304
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v15}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 307
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_1

    if-eqz v10, :cond_1

    .line 308
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    if-nez v22, :cond_3

    .line 309
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    move/from16 v23, v0

    new-instance v24, Lcom/android/systemui/statusbar/ItemInfo;

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    move-object v3, v10

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/ItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    aput-object v24, v22, v23

    .line 317
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    goto :goto_1

    .line 312
    :cond_3
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ItemInfo;->setTitle(Ljava/lang/String;)V

    .line 313
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ItemInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 314
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/statusbar/ItemInfo;->setPKGname(Ljava/lang/String;)V

    .line 315
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ItemInfo;->setIntent(Landroid/content/Intent;)V

    goto :goto_2

    .line 323
    .end local v5           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v17           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v21           #title:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 324
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v22, v22, v9

    if-eqz v22, :cond_5

    .line 325
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_6

    .line 323
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 328
    :cond_6
    sget v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    if-nez v22, :cond_8

    .line 347
    :cond_7
    return-void

    .line 330
    :cond_8
    const/4 v13, 0x0

    .local v13, j:I
    :goto_4
    sget v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->mIndex:I

    move v0, v13

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 331
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v22, v22, v13

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v19

    .line 332
    .local v19, shortcut_pkgname:Ljava/lang/String;
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v22, v22, v13

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v20

    .line 333
    .local v20, shortcut_title:Ljava/lang/String;
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v22, v22, v13

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 334
    .local v18, shortcut_icon:Landroid/graphics/drawable/Drawable;
    if-nez v19, :cond_a

    .line 330
    :cond_9
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 336
    :cond_a
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 337
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_b

    if-eqz v20, :cond_b

    .line 338
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 339
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v22, v22, v9

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ItemInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 342
    :cond_b
    sget-object v22, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/ItemInfo;

    aget-object v22, v22, v9

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ItemInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5
.end method

.method public getTaskNumber()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->tasknumber:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "data"

    .prologue
    .line 128
    new-instance v0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;-><init>(Lcom/android/systemui/statusbar/UpdateShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    .line 149
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method
