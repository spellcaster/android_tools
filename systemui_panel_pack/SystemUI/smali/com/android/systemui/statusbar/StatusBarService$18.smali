.class Lcom/android/systemui/statusbar/StatusBarService$18;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 2585
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$18;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, -0x1

    .line 2587
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$18;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$3000(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2588
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$18;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setVisibility(I)V

    .line 2589
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$18;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0201a5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2590
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$18;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$900(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0201a6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2593
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$18;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/QuickSettings;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2594
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2595
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2596
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$18;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2597
    return-void
.end method
