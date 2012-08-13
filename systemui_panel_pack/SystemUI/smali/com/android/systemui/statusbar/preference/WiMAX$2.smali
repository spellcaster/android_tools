.class Lcom/android/systemui/statusbar/preference/WiMAX$2;
.super Ljava/lang/Object;
.source "WiMAX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/WiMAX;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 127
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/WiMAX;->access$100(Lcom/android/systemui/statusbar/preference/WiMAX;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/net/wimax/WimaxController;->setWimaxEnabled(Z)Z

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/WiMAX;->access$200(Lcom/android/systemui/statusbar/preference/WiMAX;Z)V

    .line 129
    return-void

    .line 126
    .end local v0           #enabled:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
