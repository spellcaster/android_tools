.class Lcom/android/systemui/statusbar/WlanConfigView$2;
.super Ljava/lang/Object;
.source "WlanConfigView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/WlanConfigView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/WlanConfigView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/WlanConfigView;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/WlanConfigView$2;->this$0:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView$2;->this$0:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/WlanConfigView;->access$100(Lcom/android/systemui/statusbar/WlanConfigView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView$2;->this$0:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/WlanConfigView;->access$400(Lcom/android/systemui/statusbar/WlanConfigView;)Lcom/android/systemui/statusbar/StatusBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/WlanConfigView$2;->this$0:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/WlanConfigView;->access$400(Lcom/android/systemui/statusbar/WlanConfigView;)Lcom/android/systemui/statusbar/StatusBarService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 92
    :cond_0
    return-void
.end method
