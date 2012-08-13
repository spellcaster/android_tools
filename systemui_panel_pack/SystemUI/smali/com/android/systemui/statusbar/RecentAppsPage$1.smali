.class Lcom/android/systemui/statusbar/RecentAppsPage$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentAppsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/RecentAppsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/RecentAppsPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/RecentAppsPage;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/RecentAppsPage$1;->this$0:Lcom/android/systemui/statusbar/RecentAppsPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.widget.workaspace.PAGE_SCROLLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsPage$1;->this$0:Lcom/android/systemui/statusbar/RecentAppsPage;

    const-string v2, "index"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/RecentAppsPage;->access$002(Lcom/android/systemui/statusbar/RecentAppsPage;I)I

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsPage$1;->this$0:Lcom/android/systemui/statusbar/RecentAppsPage;

    invoke-static {v1}, Lcom/android/systemui/statusbar/RecentAppsPage;->access$000(Lcom/android/systemui/statusbar/RecentAppsPage;)I

    move-result v1

    if-nez v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsPage$1;->this$0:Lcom/android/systemui/statusbar/RecentAppsPage;

    invoke-static {v1}, Lcom/android/systemui/statusbar/RecentAppsPage;->access$100(Lcom/android/systemui/statusbar/RecentAppsPage;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentAppsPage$1;->this$0:Lcom/android/systemui/statusbar/RecentAppsPage;

    invoke-static {v1}, Lcom/android/systemui/statusbar/RecentAppsPage;->access$100(Lcom/android/systemui/statusbar/RecentAppsPage;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method
