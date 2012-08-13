.class Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;
.super Landroid/os/Handler;
.source "PowerEfficiency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/PowerEfficiency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mSummary:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
