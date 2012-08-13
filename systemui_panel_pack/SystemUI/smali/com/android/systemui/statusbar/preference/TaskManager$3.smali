.class Lcom/android/systemui/statusbar/preference/TaskManager$3;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/TaskManager;->updateResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/TaskManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/TaskManager;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$400(Lcom/android/systemui/statusbar/preference/TaskManager;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$102(Lcom/android/systemui/statusbar/preference/TaskManager;J)J

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$500(Lcom/android/systemui/statusbar/preference/TaskManager;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$302(Lcom/android/systemui/statusbar/preference/TaskManager;J)J

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$100(Lcom/android/systemui/statusbar/preference/TaskManager;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$300(Lcom/android/systemui/statusbar/preference/TaskManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$202(Lcom/android/systemui/statusbar/preference/TaskManager;J)J

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$600(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$600(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$600(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
