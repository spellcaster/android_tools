.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;
.super Landroid/os/Handler;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 3784
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3784
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 3787
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 3807
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3789
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3790
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    goto :goto_0

    .line 3802
    :sswitch_2
    const-string v0, "StatusBarPolicy"

    const-string v1, "StatusBarHandler, EVENT_FORCE_UPDATE_DATA_ICON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    goto :goto_0

    .line 3787
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x32 -> :sswitch_0
        0x33 -> :sswitch_2
    .end sparse-switch
.end method
