.class Lcom/android/systemui/statusbar/StatusBarService$17;
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
    .line 2576
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$17;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$17;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$3000(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2579
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$17;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setVisibility(I)V

    .line 2580
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$17;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0201a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2581
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$17;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$900(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0201a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2582
    return-void
.end method
