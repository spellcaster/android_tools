.class Lcom/android/systemui/statusbar/StatusBarService$1;
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
    .line 510
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const-string v6, "StatusBarService"

    .line 513
    const-string v1, "StatusBarService"

    const-string v1, "makeStatusBarViewExtra+"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    if-eqz v1, :cond_0

    .line 523
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$200(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030008

    invoke-static {v1, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/RecentApps;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$102(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/RecentApps;)Lcom/android/systemui/statusbar/RecentApps;

    .line 524
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$100(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/RecentApps;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 525
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$100(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/RecentApps;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$300(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/StatusBarService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/RecentApps;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 528
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$200(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030005

    invoke-static {v1, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$402(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/preference/QuickSettings;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    .line 529
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const v3, 0x7f0a005c

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$502(Lcom/android/systemui/statusbar/StatusBarService;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 530
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$500(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandedView;->addView(Landroid/view/View;I)V

    .line 532
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$300(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/StatusBarService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setService(Lcom/android/systemui/statusbar/StatusBarService;)V

    .line 534
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$200(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 541
    .local v0, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    const v3, 0x7f0a0068

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$602(Lcom/android/systemui/statusbar/StatusBarService;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 542
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$600(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v3, 0x7f0a006a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$702(Lcom/android/systemui/statusbar/StatusBarService;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 543
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$800(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f080016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$600(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v3, 0x7f0a006b

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$902(Lcom/android/systemui/statusbar/StatusBarService;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 546
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$900(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$1000(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$900(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-nez v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$600(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateResources()V

    .line 557
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$1102(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 558
    const-string v1, "StatusBarService"

    const-string v1, "makeStatusBarViewExtra-"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void
.end method
