.class Lcom/android/systemui/statusbar/preference/MobileNetwork$3;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 343
    .local v0, enabled:Z
    :goto_0
    const-string v1, "MobileNetworkStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mobiledata enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$900(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)V

    .line 347
    return-void

    .line 342
    .end local v0           #enabled:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
