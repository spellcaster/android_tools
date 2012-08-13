.class Lcom/android/systemui/statusbar/StatusBarService$6;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 2166
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 2168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2169
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2170
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 2242
    :cond_0
    :goto_0
    return-void

    .line 2171
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2172
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    goto :goto_0

    .line 2177
    :cond_2
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2178
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$1100(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2179
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$1900(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/StatusBarStyleable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 2180
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarService;->updateResources()V

    .line 2182
    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v2, :cond_0

    .line 2184
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/preference/QuickSettings;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2185
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2186
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2187
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2210
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2215
    :cond_4
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/statusbar/StatusBarService$6$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/StatusBarService$6$1;-><init>(Lcom/android/systemui/statusbar/StatusBarService$6;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2223
    :cond_5
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2234
    const-string v2, "com.android.systemui.statusbar.TRANSPARENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2235
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$2100(Lcom/android/systemui/statusbar/StatusBarService;I)V

    .line 2236
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$2202(Lcom/android/systemui/statusbar/StatusBarService;I)I

    goto/16 :goto_0

    .line 2237
    :cond_7
    const-string v2, "com.android.systemui.statusbar.OPAQUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2238
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/StatusBarService;->access$2100(Lcom/android/systemui/statusbar/StatusBarService;I)V

    .line 2239
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/StatusBarService;->access$2202(Lcom/android/systemui/statusbar/StatusBarService;I)I

    goto/16 :goto_0
.end method
