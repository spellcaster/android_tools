.class Lcom/android/systemui/statusbar/preference/BT$1;
.super Landroid/content/BroadcastReceiver;
.source "BT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/BT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/BT;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/BT;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, bEASDisable:Z
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 26
    .local v2, state:I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/statusbar/preference/SettingUtil;->SENSE_30_SUPPORT:Z

    if-nez v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-static {v3, v2, v5}, Lcom/android/systemui/statusbar/preference/BT;->access$100(Lcom/android/systemui/statusbar/preference/BT;IZ)V

    .line 50
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/SettingUtil;->setForBTEASPolicyDisable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    const/4 v1, 0x1

    .line 30
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 31
    sget-boolean v3, Lcom/android/systemui/statusbar/preference/SettingUtil;->SENSE_30_SUPPORT:Z

    if-eqz v3, :cond_1

    .line 32
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f08002b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 39
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/BT;->access$000(Lcom/android/systemui/statusbar/preference/BT;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-nez v3, :cond_3

    .line 40
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/preference/BT;->access$002(Lcom/android/systemui/statusbar/preference/BT;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 42
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/BT;->access$000(Lcom/android/systemui/statusbar/preference/BT;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 43
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/BT;->access$000(Lcom/android/systemui/statusbar/preference/BT;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    .line 45
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-static {v3, v2, v1}, Lcom/android/systemui/statusbar/preference/BT;->access$100(Lcom/android/systemui/statusbar/preference/BT;IZ)V

    goto :goto_0
.end method
