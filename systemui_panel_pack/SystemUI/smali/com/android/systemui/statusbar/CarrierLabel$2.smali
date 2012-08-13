.class Lcom/android/systemui/statusbar/CarrierLabel$2;
.super Ljava/lang/Object;
.source "CarrierLabel.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 419
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    iget v0, v0, Lcom/android/systemui/statusbar/CarrierLabel;->mServiceStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    iget v1, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mSearchingIdx:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    iget-object v2, v2, Lcom/android/systemui/statusbar/CarrierLabel;->mSearchingString:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/CarrierLabel;->mSearchingIdx:I

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CarrierLabel;->access$500(Lcom/android/systemui/statusbar/CarrierLabel;)Lcom/htc/widget/HtcBlinkingTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/CarrierLabel;->mSearchingString:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    iget v2, v2, Lcom/android/systemui/statusbar/CarrierLabel;->mSearchingIdx:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(I)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CarrierLabel;->access$700(Lcom/android/systemui/statusbar/CarrierLabel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CarrierLabel;->access$600(Lcom/android/systemui/statusbar/CarrierLabel;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CarrierLabel;->access$700(Lcom/android/systemui/statusbar/CarrierLabel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CarrierLabel;->access$600(Lcom/android/systemui/statusbar/CarrierLabel;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/CarrierLabel;->mSearchingIdx:I

    goto :goto_0
.end method
