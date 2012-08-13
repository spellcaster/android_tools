.class Lcom/android/systemui/statusbar/StatusBarService$2;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v10}, Lcom/android/systemui/statusbar/StatusBarService;->access$1200(Lcom/android/systemui/statusbar/StatusBarService;)J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 901
    .local v6, spendTime:J
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v8}, Lcom/android/systemui/statusbar/StatusBarService;->access$1300(Lcom/android/systemui/statusbar/StatusBarService;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 902
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    div-long v0, v8, v10

    .line 903
    .local v0, minute:J
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v4, v8, v10

    .line 904
    .local v4, second:J
    const-wide/16 v8, 0xa

    cmp-long v8, v0, v8

    if-gez v8, :cond_0

    const-string v8, "0"

    move-object v2, v8

    .line 905
    .local v2, sMinute:Ljava/lang/String;
    :goto_0
    const-wide/16 v8, 0xa

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    const-string v8, "0"

    move-object v3, v8

    .line 906
    .local v3, sSecond:Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v8}, Lcom/android/systemui/statusbar/StatusBarService;->access$1400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v8, v8, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, p0, v9, v10}, Lcom/android/systemui/statusbar/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 908
    return-void

    .line 904
    .end local v2           #sMinute:Ljava/lang/String;
    .end local v3           #sSecond:Ljava/lang/String;
    :cond_0
    const-string v8, ""

    move-object v2, v8

    goto :goto_0

    .line 905
    .restart local v2       #sMinute:Ljava/lang/String;
    :cond_1
    const-string v8, ""

    move-object v3, v8

    goto :goto_1
.end method
