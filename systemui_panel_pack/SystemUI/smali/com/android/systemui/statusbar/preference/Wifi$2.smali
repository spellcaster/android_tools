.class Lcom/android/systemui/statusbar/preference/Wifi$2;
.super Ljava/lang/Object;
.source "Wifi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 126
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/Wifi;->access$300(Lcom/android/systemui/statusbar/preference/Wifi;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 131
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 150
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    move v0, v3

    .line 135
    .local v0, enable:Z
    :goto_1
    const-string v3, "WifiStatusBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set wifi enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/preference/Wifi;->access$400(Lcom/android/systemui/statusbar/preference/Wifi;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/Wifi;->access$200(Lcom/android/systemui/statusbar/preference/Wifi;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 140
    .local v2, wifiApState:I
    if-eqz v0, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 142
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/Wifi;->access$200(Lcom/android/systemui/statusbar/preference/Wifi;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 144
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/Wifi;->access$200(Lcom/android/systemui/statusbar/preference/Wifi;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 145
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #enable:Z
    .end local v2           #wifiApState:I
    :cond_5
    move v0, v6

    .line 134
    goto :goto_1

    .line 147
    .restart local v0       #enable:Z
    .restart local v2       #wifiApState:I
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
