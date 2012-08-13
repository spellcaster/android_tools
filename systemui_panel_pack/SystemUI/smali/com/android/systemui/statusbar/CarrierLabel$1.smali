.class Lcom/android/systemui/statusbar/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/CarrierLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v7, "showPlmn"

    const-string v6, "plmn"

    const-string v4, "networkState"

    const-string v3, ""

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    const-string v1, "networkState"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v2, "unregistered_icc"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mUnregisteredSIM:Z

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v2, "networkState"

    const/4 v2, 0x1

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mServiceStatus:I

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    iget v1, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mServiceStatus:I

    if-nez v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v2, "showSpn"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mShowSpn:Z

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mSPN:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v2, "showPlmn"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mShowPlmn:Z

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v2, "plmn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mPLMN:Ljava/lang/String;

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkNameExt()V

    .line 207
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/CarrierLabel;)V

    .line 222
    :cond_0
    :goto_2
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mShowSpn:Z

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v2, ""

    iput-object v3, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mSPN:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mShowPlmn:Z

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v2, ""

    iput-object v3, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mPLMN:Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v2, "showSpn"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "spn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "showPlmn"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "plmn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 209
    :cond_3
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CarrierLabel;->updateResources()V

    goto :goto_2

    .line 213
    :cond_4
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/CarrierLabel;Landroid/content/Intent;)V

    goto :goto_2

    .line 215
    :cond_5
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CarrierLabel;->access$400(Lcom/android/systemui/statusbar/CarrierLabel;)V

    goto :goto_2
.end method
