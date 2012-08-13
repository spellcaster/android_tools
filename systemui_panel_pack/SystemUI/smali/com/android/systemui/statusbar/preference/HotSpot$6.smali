.class Lcom/android/systemui/statusbar/preference/HotSpot$6;
.super Ljava/lang/Object;
.source "HotSpot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$6;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot$6;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$900(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    .line 403
    return-void
.end method
