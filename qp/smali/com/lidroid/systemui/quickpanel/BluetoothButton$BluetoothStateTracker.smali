.class final Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;
.super Lcom/lidroid/systemui/quickpanel/StateTracker;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/systemui/quickpanel/BluetoothButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/systemui/quickpanel/BluetoothButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 63
    packed-switch p0, :pswitch_data_0

    .line 73
    const/4 v0, 0x6

    :goto_0
    return v0

    .line 65
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 67
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 71
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 18
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 19
    .local v0, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 20
    const/4 v1, 0x6

    .line 22
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 33
    new-instance v0, Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker$1;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker$1;-><init>(Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/BluetoothButton$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method
