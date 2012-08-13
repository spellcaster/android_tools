.class Lcom/android/systemui/statusbar/StatusBarService$MyTicker;
.super Lcom/android/systemui/statusbar/Ticker;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "sb"

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    .line 1747
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/Ticker;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V

    .line 1748
    return-void
.end method


# virtual methods
.method tickerDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x10a0024

    const/4 v2, 0x0

    .line 1769
    const-string v0, "StatusBarService"

    const-string v1, "tickerDone"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$1602(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 1771
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$1700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1779
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$1800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1780
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$1700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x10a0025

    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$1800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1781
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1784
    :cond_0
    return-void
.end method

.method tickerHalting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x10a

    const/4 v2, 0x0

    .line 1787
    const-string v0, "StatusBarService"

    const-string v1, "tickerHalting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$1602(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 1789
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1790
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$1700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1791
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$1800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1792
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$1700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x10a0001

    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$1800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1796
    :cond_0
    return-void
.end method

.method tickerStarting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x10a0027

    const/4 v3, 0x0

    .line 1752
    const-string v0, "StatusBarService"

    const-string v1, "tickerStarting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$1602(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 1754
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1755
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$1700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$1700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x10a0026

    invoke-static {v1, v2, v5}, Lcom/android/systemui/statusbar/StatusBarService;->access$1800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1761
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/StatusBarService;->access$1800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1765
    :cond_0
    return-void
.end method
