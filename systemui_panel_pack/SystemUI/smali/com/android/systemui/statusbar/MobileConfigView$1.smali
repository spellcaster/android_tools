.class Lcom/android/systemui/statusbar/MobileConfigView$1;
.super Ljava/lang/Object;
.source "MobileConfigView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MobileConfigView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MobileConfigView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MobileConfigView;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/MobileConfigView$1;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView$1;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/MobileConfigView;->access$000(Lcom/android/systemui/statusbar/MobileConfigView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView$1;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/MobileConfigView;->access$100(Lcom/android/systemui/statusbar/MobileConfigView;)Lcom/android/systemui/statusbar/StatusBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/MobileConfigView$1;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/MobileConfigView;->access$100(Lcom/android/systemui/statusbar/MobileConfigView;)Lcom/android/systemui/statusbar/StatusBarService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 114
    :cond_0
    return-void
.end method
