.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "StatusBarPolicy"

    .line 916
    const-string v0, "StatusBarPolicy"

    const-string v0, "createStorageManager+"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1802(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/os/storage/StorageManager;)Landroid/os/storage/StorageManager;

    .line 918
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/storage/StorageManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/usb/StorageNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 920
    const-string v0, "StatusBarPolicy"

    const-string v0, "createStorageManager-"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return-void
.end method
