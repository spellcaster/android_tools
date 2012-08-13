.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$9;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 2186
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 2188
    const-string v0, "StatusBarPolicy"

    const-string v1, "mLowBatteryListener2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2102(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;

    .line 2190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2191
    return-void
.end method
