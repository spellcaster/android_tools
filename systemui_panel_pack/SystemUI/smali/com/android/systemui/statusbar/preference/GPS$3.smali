.class Lcom/android/systemui/statusbar/preference/GPS$3;
.super Ljava/lang/Object;
.source "GPS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/GPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/GPS;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/GPS;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/GPS;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 79
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/GPS;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 81
    return-void

    .line 78
    .end local v0           #enabled:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
