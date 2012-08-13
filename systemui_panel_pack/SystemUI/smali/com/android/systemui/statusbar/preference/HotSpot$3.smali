.class Lcom/android/systemui/statusbar/preference/HotSpot$3;
.super Ljava/lang/Object;
.source "HotSpot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/HotSpot;
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
    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const-string v5, "HotSpotStatusBarPreference"

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v6

    .line 134
    .local v0, enable:Z
    :goto_0
    const-string v2, "HotSpotStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wifi enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$200(Lcom/android/systemui/statusbar/preference/HotSpot;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    :cond_0
    :goto_1
    return-void

    .line 133
    .end local v0           #enable:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 139
    .restart local v0       #enable:Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$300(Lcom/android/systemui/statusbar/preference/HotSpot;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 140
    const-string v2, "HotSpotStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$400(Lcom/android/systemui/statusbar/preference/HotSpot;Z)Z

    move-result v1

    .line 142
    .local v1, mhsResult:Z
    const-string v2, "HotSpotStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMhs result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-nez v1, :cond_0

    .line 148
    .end local v1           #mhsResult:Z
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v6, :cond_4

    .line 201
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$600(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V

    goto :goto_1
.end method
