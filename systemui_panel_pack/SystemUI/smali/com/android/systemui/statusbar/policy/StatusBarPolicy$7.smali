.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2060
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2064
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2068
    :cond_0
    return-void
.end method
