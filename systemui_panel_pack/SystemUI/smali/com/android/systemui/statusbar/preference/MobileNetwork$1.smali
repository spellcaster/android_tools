.class Lcom/android/systemui/statusbar/preference/MobileNetwork$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetwork.java"


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
    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 44
    invoke-static {p2}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v6

    .line 45
    .local v6, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, reason:Ljava/lang/String;
    const-string v8, "apn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, apnName:Ljava/lang/String;
    const-string v8, "apnType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, capability:Ljava/lang/String;
    const-string v8, "networkUnvailable"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 50
    .local v7, unavailable:Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$200(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$102(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)Z

    .line 52
    const-string v8, "MobileNetworkStatusBarPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " broadcast - state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", unavailable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", capability = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v1, :cond_1

    const-string v10, "(unspecified)"

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", apnName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v0, :cond_2

    const-string v10, "(unspecified)"

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", reason = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_3

    const-string v10, "(unspecified)"

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v8, "MobileNetworkStatusBarPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive()...mMobileDataEnabledSetting:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v10}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-eqz v1, :cond_7

    const-string v8, "default"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 61
    const-string v8, "MobileNetworkStatusBarPreference"

    const-string v9, "This ACTION_ANY_DATA_CONNECTION_STATE_CHANGED intent is not for DEFAULT_APN_TYPE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 64
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$300(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 65
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const-string v9, "radioTurnedOff"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$400(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 173
    .end local v0           #apnName:Ljava/lang/String;
    .end local v1           #capability:Ljava/lang/String;
    .end local v4           #reason:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v7           #unavailable:Z
    :cond_0
    :goto_4
    return-void

    .restart local v0       #apnName:Ljava/lang/String;
    .restart local v1       #capability:Ljava/lang/String;
    .restart local v4       #reason:Ljava/lang/String;
    .restart local v6       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v7       #unavailable:Z
    :cond_1
    move-object v10, v1

    .line 52
    goto/16 :goto_0

    :cond_2
    move-object v10, v0

    goto/16 :goto_1

    :cond_3
    move-object v10, v4

    goto :goto_2

    .line 65
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 69
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$500(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 70
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$400(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_4

    .line 74
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_4

    .line 82
    :cond_7
    if-nez v1, :cond_8

    .line 83
    const-string v8, "MobileNetworkStatusBarPreference"

    const-string v9, "capability is null , return."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->CheckMNetworkFunction()V

    goto :goto_4

    .line 89
    :cond_8
    sget-object v8, Lcom/android/systemui/statusbar/preference/MobileNetwork$4;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 171
    .end local v0           #apnName:Ljava/lang/String;
    .end local v1           #capability:Ljava/lang/String;
    .end local v4           #reason:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v7           #unavailable:Z
    :cond_9
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->CheckMNetworkFunction()V

    goto :goto_4

    .line 91
    .restart local v0       #apnName:Ljava/lang/String;
    .restart local v1       #capability:Ljava/lang/String;
    .restart local v4       #reason:Ljava/lang/String;
    .restart local v6       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v7       #unavailable:Z
    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 95
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$602(Z)Z

    .line 96
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const-string v9, "radioTurnedOff"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_5

    .line 96
    :cond_a
    const/4 v9, 0x0

    goto :goto_6

    .line 102
    :pswitch_1
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$602(Z)Z

    .line 104
    const/4 v2, 0x1

    .line 105
    .local v2, checked:Z
    if-eqz v7, :cond_e

    .line 106
    const-string v8, "radioTurnedOff"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 107
    const/4 v2, 0x0

    .line 124
    :cond_b
    :goto_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$500(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 125
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v2, :cond_f

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$400(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_5

    .line 109
    :cond_c
    const-string v8, "pdpTeardown"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "gprsDetached"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 110
    :cond_d
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$700(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 111
    const/4 v2, 0x0

    goto :goto_7

    .line 116
    :cond_e
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    const-string v8, "radioTurnedOff"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 119
    const/4 v2, 0x0

    goto :goto_7

    .line 125
    :cond_f
    const/4 v9, 0x0

    goto :goto_8

    .line 128
    :cond_10
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_5

    .line 135
    .end local v2           #checked:Z
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 139
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$602(Z)Z

    .line 140
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const-string v9, "radioTurnedOff"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_5

    .line 140
    :cond_11
    const/4 v9, 0x0

    goto :goto_9

    .line 146
    :pswitch_3
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$602(Z)Z

    goto/16 :goto_5

    .line 150
    .end local v0           #apnName:Ljava/lang/String;
    .end local v1           #capability:Ljava/lang/String;
    .end local v4           #reason:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v7           #unavailable:Z
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 151
    const-string v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .restart local v4       #reason:Ljava/lang/String;
    const-string v8, "apn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0       #apnName:Ljava/lang/String;
    const-string v8, "MobileNetworkStatusBarPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " broadcast"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_13

    const-string v9, ""

    :goto_a
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 158
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContentView:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_5

    .line 155
    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    .line 160
    .end local v0           #apnName:Ljava/lang/String;
    .end local v4           #reason:Ljava/lang/String;
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 161
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 162
    .local v3, enabled:Z
    const-string v8, "sender"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, sender:Ljava/lang/String;
    const-string v8, "MobileNetworkStatusBarPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sender = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v8, "MobileNetwork"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 168
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$200(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$102(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)Z

    goto/16 :goto_5

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
