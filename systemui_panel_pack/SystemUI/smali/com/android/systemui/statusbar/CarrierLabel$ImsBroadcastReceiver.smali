.class Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CarrierLabel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CarrierLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CarrierLabel;Lcom/android/systemui/statusbar/CarrierLabel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/CarrierLabel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel$ImsBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v1, "IMS_REG_STATUS"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->access$102(Lcom/android/systemui/statusbar/CarrierLabel;Z)Z

    .line 170
    return-void
.end method
