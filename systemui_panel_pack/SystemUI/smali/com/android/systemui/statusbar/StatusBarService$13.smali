.class Lcom/android/systemui/statusbar/StatusBarService$13;
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
    .line 2515
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$13;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2517
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$13;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewGreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2518
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$13;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewGreen:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2519
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$13;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewRed:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2521
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$13;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewRed:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$13;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$2300(Lcom/android/systemui/statusbar/StatusBarService;FFI)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2522
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$13;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$13;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$2700(Lcom/android/systemui/statusbar/StatusBarService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2524
    return-void
.end method
