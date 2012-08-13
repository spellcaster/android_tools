.class Lcom/android/systemui/statusbar/preference/CarrierApp$2;
.super Ljava/lang/Object;
.source "CarrierApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/CarrierApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/CarrierApp;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$2;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$2;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/CarrierApp;->access$100(Lcom/android/systemui/statusbar/preference/CarrierApp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$2;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/CarrierApp;->access$100(Lcom/android/systemui/statusbar/preference/CarrierApp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$2;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/CarrierApp;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$2;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/CarrierApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$2;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/CarrierApp;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$2;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/CarrierApp;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 90
    :cond_1
    return-void
.end method
