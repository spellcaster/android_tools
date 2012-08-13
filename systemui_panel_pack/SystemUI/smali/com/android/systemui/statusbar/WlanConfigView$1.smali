.class Lcom/android/systemui/statusbar/WlanConfigView$1;
.super Landroid/content/BroadcastReceiver;
.source "WlanConfigView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/WlanConfigView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/WlanConfigView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/WlanConfigView;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/WlanConfigView$1;->this$0:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 66
    .local v1, state:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/WlanConfigView$1;->this$0:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/WlanConfigView;->access$000(Lcom/android/systemui/statusbar/WlanConfigView;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/WlanConfigView$1;->this$0:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/WlanConfigView;->access$200(Lcom/android/systemui/statusbar/WlanConfigView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/WlanConfigView$1;->this$0:Lcom/android/systemui/statusbar/WlanConfigView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/WlanConfigView;->access$100(Lcom/android/systemui/statusbar/WlanConfigView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080012

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .end local v1           #state:I
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local p0
    :cond_1
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/systemui/statusbar/WlanConfigView$1;->this$0:Lcom/android/systemui/statusbar/WlanConfigView;

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/WlanConfigView;->access$300(Lcom/android/systemui/statusbar/WlanConfigView;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method
