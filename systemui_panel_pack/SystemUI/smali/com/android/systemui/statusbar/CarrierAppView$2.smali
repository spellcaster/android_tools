.class Lcom/android/systemui/statusbar/CarrierAppView$2;
.super Ljava/lang/Object;
.source "CarrierAppView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CarrierAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CarrierAppView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/CarrierAppView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierAppView$2;->this$0:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 77
    const-string v0, "CarrierAppView"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView$2;->this$0:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CarrierAppView;->access$400(Lcom/android/systemui/statusbar/CarrierAppView;)Lcom/android/systemui/statusbar/StatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/CarrierAppView$2;->this$0:Lcom/android/systemui/statusbar/CarrierAppView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CarrierAppView;->access$400(Lcom/android/systemui/statusbar/CarrierAppView;)Lcom/android/systemui/statusbar/StatusBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 81
    :cond_0
    return-void
.end method
