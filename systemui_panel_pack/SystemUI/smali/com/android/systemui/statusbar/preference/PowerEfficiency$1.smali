.class Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;
.super Ljava/lang/Object;
.source "PowerEfficiency.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/PowerEfficiency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x1f4

    const/4 v2, 0x0

    const-string v5, "PowerEfficiencyStatusBarPreference"

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.powerefficiency.SWITCH_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->access$000(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    const-string v1, "PowerEfficiencyStatusBarPreference"

    const-string v1, "not checkd"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->access$100(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    :goto_0
    return-void

    .line 55
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.powerefficiency.SWITCH_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->access$000(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    const-string v1, "PowerEfficiencyStatusBarPreference"

    const-string v1, "checkd"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->access$100(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
