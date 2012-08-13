.class Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;
.super Ljava/lang/Thread;
.source "UpdateShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/UpdateShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;->this$0:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    iput-object p2, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 130
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "favorite_item_id"

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 133
    .local v2, itemId:J
    iget-object v0, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "favorite_icon"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 134
    .local v4, iconParcel:Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "favorite_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 135
    .local v5, intent:Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "favorite_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, pkgname:Ljava/lang/String;
    cmp-long v0, v2, v8

    if-eqz v0, :cond_0

    if-nez v6, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;->this$0:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/UpdateShortcutReceiver$1;->val$context:Landroid/content/Context;

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->access$000(Lcom/android/systemui/statusbar/UpdateShortcutReceiver;Landroid/content/Context;JLandroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
