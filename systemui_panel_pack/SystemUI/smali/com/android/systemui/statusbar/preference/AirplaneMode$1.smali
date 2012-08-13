.class Lcom/android/systemui/statusbar/preference/AirplaneMode$1;
.super Ljava/lang/Object;
.source "AirplaneMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/AirplaneMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/AirplaneMode;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->access$000(Lcom/android/systemui/statusbar/preference/AirplaneMode;Z)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 79
    return-void

    :cond_0
    move v1, v2

    .line 76
    goto :goto_0
.end method
