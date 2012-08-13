.class Lcom/android/systemui/statusbar/CarrierAppView$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CarrierAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CarrierAppView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/CarrierAppView;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierAppView$1;->this$0:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    const-string v2, "CarrierAppView"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 59
    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierAppView$1;->this$0:Lcom/android/systemui/statusbar/CarrierAppView;

    const-string v3, "meter_bar_visible"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/CarrierAppView;->access$002(Lcom/android/systemui/statusbar/CarrierAppView;Z)Z

    .line 64
    const-string v2, "intent_action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, actionString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierAppView$1;->this$0:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/CarrierAppView;->access$102(Lcom/android/systemui/statusbar/CarrierAppView;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierAppView$1;->this$0:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CarrierAppView;->access$200(Lcom/android/systemui/statusbar/CarrierAppView;)V

    .line 70
    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierAppView$1;->this$0:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CarrierAppView;->access$300(Lcom/android/systemui/statusbar/CarrierAppView;)V

    goto :goto_0
.end method
