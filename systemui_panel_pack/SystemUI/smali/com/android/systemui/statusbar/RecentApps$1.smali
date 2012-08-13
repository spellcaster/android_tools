.class Lcom/android/systemui/statusbar/RecentApps$1;
.super Landroid/os/Handler;
.source "RecentApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/RecentApps;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/RecentApps;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/RecentApps;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/systemui/statusbar/RecentApps$1;->this$0:Lcom/android/systemui/statusbar/RecentApps;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentApps$1;->this$0:Lcom/android/systemui/statusbar/RecentApps;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RecentApps;->loadButtons(Z)V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
