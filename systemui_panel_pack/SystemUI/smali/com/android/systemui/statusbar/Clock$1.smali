.class Lcom/android/systemui/statusbar/Clock$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/Clock$1;->this$0:Lcom/android/systemui/statusbar/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const-string v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, tz:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock$1;->this$0:Lcom/android/systemui/statusbar/Clock;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Clock;->access$002(Lcom/android/systemui/statusbar/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock$1;->this$0:Lcom/android/systemui/statusbar/Clock;

    invoke-static {v2}, Lcom/android/systemui/statusbar/Clock;->access$100(Lcom/android/systemui/statusbar/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock$1;->this$0:Lcom/android/systemui/statusbar/Clock;

    invoke-static {v2}, Lcom/android/systemui/statusbar/Clock;->access$100(Lcom/android/systemui/statusbar/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/Clock$1;->this$0:Lcom/android/systemui/statusbar/Clock;

    invoke-static {v3}, Lcom/android/systemui/statusbar/Clock;->access$000(Lcom/android/systemui/statusbar/Clock;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 120
    .end local v1           #tz:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock$1;->this$0:Lcom/android/systemui/statusbar/Clock;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/Clock;->updateClock()V

    .line 121
    return-void
.end method
