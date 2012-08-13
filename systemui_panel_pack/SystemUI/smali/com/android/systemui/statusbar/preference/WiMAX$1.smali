.class Lcom/android/systemui/statusbar/preference/WiMAX$1;
.super Landroid/content/BroadcastReceiver;
.source "WiMAX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/WiMAX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/WiMAX;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/WiMAX;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/WiMAX$1;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX$1;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/WiMAX;->access$000(Lcom/android/systemui/statusbar/preference/WiMAX;)V

    .line 34
    return-void
.end method
