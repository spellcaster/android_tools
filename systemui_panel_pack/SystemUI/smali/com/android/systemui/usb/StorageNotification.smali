.class public Lcom/android/systemui/usb/StorageNotification;
.super Landroid/os/storage/StorageEventListener;
.source "StorageNotification.java"


# static fields
.field private static final MEDIA_STORAGE_SHOW_NOTIFICATION:I = 0x1

.field private static final MSG_SET_MEDIA_STORAGE_NOTIFICATION:I = 0x15666

.field private static final MSG_SET_MEDIA_STORAGE_TOAST:I = 0x15667

.field private static final POP_UMS_ACTIVITY_ON_CONNECT:Z = true

.field private static final TAG:Ljava/lang/String; = "StorageNotification"


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;

.field mWakelockScreen:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 120
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 77
    new-instance v3, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 123
    const-string v3, "storage"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 124
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 125
    .local v0, connected:Z
    const-string v3, "StorageNotification"

    const-string v4, "Startup with UMS connection %s (media state %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 130
    .local v1, pm:Landroid/os/PowerManager;
    const v3, 0x3000000a

    const-string v4, "StorageNotification_SWake"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    .line 134
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 136
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SystemUI StorageNotification"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, thr:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChanged(Z)V

    .line 141
    return-void
.end method

.method private WakeScreenOn()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mWakelockScreen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 620
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized getMediaStorageNotificationDismissable()Z
    .locals 2

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 508
    const/4 v0, 0x1

    .line 510
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getRemoveableStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 605
    .local v0, StoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    .line 608
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 190
    const-string v4, "StorageNotification"

    const-string v5, "Media {%s} state changed from {%s} -> {%s}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/usb/StorageNotification;->getRemoveableStorageDirectory()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    move/from16 v22, v4

    .line 197
    .local v22, externalStorage:Z
    :goto_0
    const-string v4, "shared"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const v5, 0x15666

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const v5, 0x15667

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 221
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 409
    :cond_1
    :goto_1
    return-void

    .line 194
    .end local v22           #externalStorage:Z
    :cond_2
    const/4 v4, 0x0

    move/from16 v22, v4

    goto :goto_0

    .line 223
    .restart local v22       #externalStorage:Z
    :cond_3
    const-string v4, "checking"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 231
    if-eqz v22, :cond_4

    .line 232
    const v5, 0x1040386

    .line 233
    .local v5, titleId:I
    const v6, 0x1040387

    .line 234
    .local v6, msgId:I
    const v7, 0x10800ab

    .line 235
    .local v7, drawableId:I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    .line 242
    :goto_2
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 245
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    .line 237
    .end local v5           #titleId:I
    .end local v6           #msgId:I
    .end local v7           #drawableId:I
    :cond_4
    const v5, 0x20c018a

    .line 238
    .restart local v5       #titleId:I
    const v6, 0x20c018b

    .line 239
    .restart local v6       #msgId:I
    const v7, 0x10800ab

    .restart local v7       #drawableId:I
    goto :goto_2

    .line 246
    .end local v5           #titleId:I
    .end local v6           #msgId:I
    .end local v7           #drawableId:I
    :cond_5
    const-string v4, "mounted"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 251
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 252
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    .line 253
    :cond_6
    const-string v4, "mounted_ro"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 258
    const-string v4, "StorageNotification"

    const-string v5, "Media Mounted, read only"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sd_encryption"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 263
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v23, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-class v5, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v23

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v23

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 266
    .local v14, pi:Landroid/app/PendingIntent;
    const v9, 0x10400e7

    const v10, 0x10400e8

    const v11, 0x108007b

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 271
    .end local v14           #pi:Landroid/app/PendingIntent;
    .end local v23           #intent:Landroid/content/Intent;
    :cond_7
    new-instance v24, Landroid/content/Intent;

    const-string v4, "android.intent.action.REMOUNT_MEDIA"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v24, intents:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v24

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 273
    .restart local v14       #pi:Landroid/app/PendingIntent;
    const v9, 0x20c01bf

    const v10, 0x20c01c0

    const v11, 0x108007b

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 280
    .end local v14           #pi:Landroid/app/PendingIntent;
    .end local v24           #intents:Landroid/content/Intent;
    :cond_8
    const-string v4, "unmounted"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    .line 287
    const-string v4, "shared"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 292
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 324
    :goto_3
    if-eqz v22, :cond_1

    const-string v4, "removed"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto/16 :goto_1

    .line 301
    :cond_9
    if-eqz v22, :cond_a

    .line 302
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 303
    const v16, 0x104038e

    const v17, 0x104038f

    const v18, 0x108007a

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 313
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_3

    .line 310
    :cond_b
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_4

    .line 320
    :cond_c
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 321
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_3

    .line 327
    :cond_d
    const-string v4, "nofs"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 333
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 334
    .restart local v23       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-class v5, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v23

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 335
    const-string v4, "formatPath"

    move-object/from16 v0, v23

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v23

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 339
    .restart local v14       #pi:Landroid/app/PendingIntent;
    if-eqz v22, :cond_e

    .line 340
    const v5, 0x1040388

    .line 341
    .restart local v5       #titleId:I
    const v6, 0x1040389

    .line 342
    .restart local v6       #msgId:I
    const v7, 0x108007b

    .line 349
    .restart local v7       #drawableId:I
    :goto_5
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v10, v14

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 344
    .end local v5           #titleId:I
    .end local v6           #msgId:I
    .end local v7           #drawableId:I
    :cond_e
    const v5, 0x20c018c

    .line 345
    .restart local v5       #titleId:I
    const v6, 0x20c018d

    .line 346
    .restart local v6       #msgId:I
    const v7, 0x108007b

    .restart local v7       #drawableId:I
    goto :goto_5

    .line 353
    .end local v5           #titleId:I
    .end local v6           #msgId:I
    .end local v7           #drawableId:I
    .end local v14           #pi:Landroid/app/PendingIntent;
    .end local v23           #intent:Landroid/content/Intent;
    :cond_f
    const-string v4, "unmountable"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 359
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 360
    .restart local v23       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-class v5, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v23

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 361
    const-string v4, "formatPath"

    move-object/from16 v0, v23

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v23

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 365
    .restart local v14       #pi:Landroid/app/PendingIntent;
    if-eqz v22, :cond_10

    .line 366
    const v5, 0x104038a

    .line 367
    .restart local v5       #titleId:I
    const v6, 0x104038b

    .line 368
    .restart local v6       #msgId:I
    const v7, 0x108007b

    .line 375
    .restart local v7       #drawableId:I
    :goto_6
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v10, v14

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 378
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 370
    .end local v5           #titleId:I
    .end local v6           #msgId:I
    .end local v7           #drawableId:I
    :cond_10
    const v5, 0x20c018e

    .line 371
    .restart local v5       #titleId:I
    const v6, 0x20c018f

    .line 372
    .restart local v6       #msgId:I
    const v7, 0x108007b

    .restart local v7       #drawableId:I
    goto :goto_6

    .line 379
    .end local v5           #titleId:I
    .end local v6           #msgId:I
    .end local v7           #drawableId:I
    .end local v14           #pi:Landroid/app/PendingIntent;
    .end local v23           #intent:Landroid/content/Intent;
    :cond_11
    const-string v4, "removed"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 385
    const v16, 0x1040390

    const v17, 0x1040391

    const v18, 0x108007b

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 391
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto/16 :goto_1

    .line 394
    :cond_12
    const-string v4, "bad_removal"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 399
    const v16, 0x104038c

    const v17, 0x104038d

    const v18, 0x108008a

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 404
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/usb/StorageNotification;->WakeScreenOn()V

    goto/16 :goto_1

    .line 407
    :cond_13
    const-string v4, "StorageNotification"

    const-string v5, "Ignoring unknown state {%s}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 6
    .parameter "connected"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    .line 162
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, st:Ljava/lang/String;
    const-string v1, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    const/4 p1, 0x0

    .line 173
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 174
    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 17
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"

    .prologue
    .line 519
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_1

    .line 599
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 523
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "notification"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 526
    .local v11, notificationManager:Landroid/app/NotificationManager;
    if-eqz v11, :cond_0

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0

    if-eqz v14, :cond_2

    if-eqz p4, :cond_2

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0

    iget v10, v14, Landroid/app/Notification;->icon:I

    .line 536
    .local v10, notificationId:I
    invoke-virtual {v11, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object v14, v0

    const v15, 0x15667

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    .end local v10           #notificationId:I
    :cond_2
    if-eqz p4, :cond_5

    .line 544
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 545
    .local v12, r:Landroid/content/res/Resources;
    move-object v0, v12

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 546
    .local v13, title:Ljava/lang/CharSequence;
    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 548
    .local v6, message:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0

    if-nez v14, :cond_3

    .line 549
    new-instance v14, Landroid/app/Notification;

    invoke-direct {v14}, Landroid/app/Notification;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0

    const-wide/16 v15, 0x0

    iput-wide v15, v14, Landroid/app/Notification;->when:J

    .line 553
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0

    iget v15, v14, Landroid/app/Notification;->defaults:I

    and-int/lit8 v15, v15, -0x2

    iput v15, v14, Landroid/app/Notification;->defaults:I

    .line 555
    if-eqz p5, :cond_8

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0

    const/16 v15, 0x10

    iput v15, v14, Landroid/app/Notification;->flags:I

    .line 561
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0

    iput-object v13, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 562
    if-nez p6, :cond_4

    .line 563
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 564
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move v1, v15

    move-object v2, v5

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 567
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0

    move/from16 v0, p3

    move-object v1, v14

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v15, v0

    move-object v0, v14

    move-object v1, v15

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 573
    .end local v6           #message:Ljava/lang/CharSequence;
    .end local v12           #r:Landroid/content/res/Resources;
    .end local v13           #title:Ljava/lang/CharSequence;
    :cond_5
    const v8, 0x15666

    .line 574
    .local v8, nMessage:I
    const/4 v9, 0x0

    .line 576
    .local v9, nMessageArg:I
    const/4 v14, 0x1

    move/from16 v0, p4

    move v1, v14

    if-ne v0, v1, :cond_7

    .line 577
    const/4 v9, 0x1

    .line 579
    const v14, 0x1040386

    move/from16 v0, p1

    move v1, v14

    if-eq v0, v1, :cond_6

    const v14, 0x20c018a

    move/from16 v0, p1

    move v1, v14

    if-eq v0, v1, :cond_6

    const v14, 0x104038e

    move/from16 v0, p1

    move v1, v14

    if-eq v0, v1, :cond_6

    const v14, 0x1040390

    move/from16 v0, p1

    move v1, v14

    if-ne v0, v1, :cond_7

    .line 584
    :cond_6
    const v8, 0x15667

    .line 589
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v9, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 590
    .local v7, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    move-object v14, v0

    const-wide/16 v15, 0x1f4

    move-object v0, v14

    move-object v1, v7

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 519
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #nMessage:I
    .end local v9           #nMessageArg:I
    .end local v11           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 558
    .restart local v6       #message:Ljava/lang/CharSequence;
    .restart local v11       #notificationManager:Landroid/app/NotificationManager;
    .restart local v12       #r:Landroid/content/res/Resources;
    .restart local v13       #title:Ljava/lang/CharSequence;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object v14, v0

    const/4 v15, 0x2

    iput v15, v14, Landroid/app/Notification;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 16
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "sound"
    .parameter "visible"
    .parameter "pi"

    .prologue
    .line 439
    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_1

    .line 502
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 443
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 446
    .local v9, notificationManager:Landroid/app/NotificationManager;
    if-eqz v9, :cond_0

    .line 450
    if-eqz p5, :cond_4

    .line 451
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 452
    .local v10, r:Landroid/content/res/Resources;
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 453
    .local v11, title:Ljava/lang/CharSequence;
    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 455
    .local v7, message:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    if-nez v12, :cond_2

    .line 456
    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12}, Landroid/app/Notification;-><init>()V

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move/from16 v0, p3

    move-object v1, v12

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Landroid/app/Notification;->when:J

    .line 461
    :cond_2
    if-eqz p4, :cond_5

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v13, v12, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v12, Landroid/app/Notification;->defaults:I

    .line 467
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    const/4 v13, 0x2

    iput v13, v12, Landroid/app/Notification;->flags:I

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iput-object v11, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 470
    if-nez p6, :cond_3

    .line 471
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 472
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v6, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 475
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v13, v0

    move-object v0, v12

    move-object v1, v13

    move-object v2, v11

    move-object v3, v7

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 476
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "adb_enabled"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    move v5, v12

    .line 481
    .local v5, adbOn:Z
    :goto_2
    if-nez v5, :cond_4

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move-object/from16 v0, p6

    move-object v1, v12

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 495
    .end local v5           #adbOn:Z
    .end local v7           #message:Ljava/lang/CharSequence;
    .end local v10           #r:Landroid/content/res/Resources;
    .end local v11           #title:Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v8, v12, Landroid/app/Notification;->icon:I

    .line 496
    .local v8, notificationId:I
    if-eqz p5, :cond_7

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    invoke-virtual {v9, v8, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 439
    .end local v8           #notificationId:I
    .end local v9           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 464
    .restart local v7       #message:Ljava/lang/CharSequence;
    .restart local v9       #notificationManager:Landroid/app/NotificationManager;
    .restart local v10       #r:Landroid/content/res/Resources;
    .restart local v11       #title:Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v13, v12, Landroid/app/Notification;->defaults:I

    and-int/lit8 v13, v13, -0x2

    iput v13, v12, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 476
    :cond_6
    const/4 v12, 0x0

    move v5, v12

    goto :goto_2

    .line 499
    .end local v7           #message:Ljava/lang/CharSequence;
    .end local v10           #r:Landroid/content/res/Resources;
    .end local v11           #title:Ljava/lang/CharSequence;
    .restart local v8       #notificationId:I
    :cond_7
    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification$3;-><init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 0
    .parameter "available"

    .prologue
    .line 431
    return-void
.end method
