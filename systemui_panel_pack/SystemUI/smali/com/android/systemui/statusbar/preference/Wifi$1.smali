.class Lcom/android/systemui/statusbar/preference/Wifi$1;
.super Landroid/content/BroadcastReceiver;
.source "Wifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Wifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Wifi;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Wifi;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/Wifi;->access$000(Lcom/android/systemui/statusbar/preference/Wifi;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/SettingUtil;->setForWifiEASPolicyDisable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 45
    sget-boolean v3, Lcom/android/systemui/statusbar/preference/SettingUtil;->SENSE_30_SUPPORT:Z

    if-eqz v3, :cond_1

    .line 46
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f08002b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 54
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/preference/Wifi;->access$100(Lcom/android/systemui/statusbar/preference/Wifi;I)V

    goto :goto_0

    .line 58
    :cond_3
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 60
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v5, v3, :cond_0

    .line 61
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/Wifi;->access$200(Lcom/android/systemui/statusbar/preference/Wifi;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 63
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f080011

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$1;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
