.class Lcom/android/systemui/statusbar/RecentApps$2;
.super Ljava/lang/Object;
.source "RecentApps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/RecentApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/RecentApps;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/RecentApps;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui/statusbar/RecentApps$2;->this$0:Lcom/android/systemui/statusbar/RecentApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 320
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 321
    const/high16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentApps$2;->this$0:Lcom/android/systemui/statusbar/RecentApps;

    iget-object v3, v3, Lcom/android/systemui/statusbar/RecentApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 323
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_UB_LOG:Z

    if-eqz v3, :cond_0

    .line 324
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v2

    .line 325
    .local v2, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    sget-object v3, Lcom/android/systemui/statusbar/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/UpdateShortcutReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/RecentApps$2;->this$0:Lcom/android/systemui/statusbar/RecentApps;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/RecentApps;->getViewIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/UpdateShortcutReceiver;->getRecentItem(I)Lcom/android/systemui/statusbar/ItemInfo;

    move-result-object v1

    .line 327
    .local v1, iteminfo:Lcom/android/systemui/statusbar/ItemInfo;
    const-string v3, "system_server"

    invoke-virtual {v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v3

    const-string v4, "MRU_click"

    invoke-virtual {v3, v4}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v3

    const-string v4, "package"

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v3

    const-string v4, "method"

    const-string v5, "notification_bar"

    invoke-virtual {v3, v4, v5}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogData;

    .line 331
    invoke-static {v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 332
    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 335
    .end local v1           #iteminfo:Lcom/android/systemui/statusbar/ItemInfo;
    .end local v2           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/RecentApps$2;->this$0:Lcom/android/systemui/statusbar/RecentApps;

    iget-object v3, v3, Lcom/android/systemui/statusbar/RecentApps;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 336
    return-void
.end method
