.class Lcom/android/systemui/statusbar/preference/HotSpot$4;
.super Ljava/lang/Object;
.source "HotSpot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/HotSpot;->showRemindDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$4;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/preference/HotSpot$4;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v3, "hotspot_remind_dialog"

    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$4;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$700(Lcom/android/systemui/statusbar/preference/HotSpot;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$4;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$4;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$800(Lcom/android/systemui/statusbar/preference/HotSpot;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$4;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$800(Lcom/android/systemui/statusbar/preference/HotSpot;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 380
    .local v0, currentstate:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$4;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot$4;->val$enable:Z

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$600(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V

    .line 384
    .end local v0           #currentstate:I
    :cond_0
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$4;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
