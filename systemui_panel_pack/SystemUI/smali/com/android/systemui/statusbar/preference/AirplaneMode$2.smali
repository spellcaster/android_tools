.class Lcom/android/systemui/statusbar/preference/AirplaneMode$2;
.super Landroid/os/Handler;
.source "AirplaneMode.java"


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
    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$2;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 154
    :pswitch_0
    const-string v0, "AirplaneModeStatusBarPreference"

    const-string v1, "receive EVENT_SERVICE_STATE_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$2;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->access$100(Lcom/android/systemui/statusbar/preference/AirplaneMode;)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method
