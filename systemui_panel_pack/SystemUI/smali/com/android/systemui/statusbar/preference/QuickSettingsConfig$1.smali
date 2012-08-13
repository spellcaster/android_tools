.class Lcom/android/systemui/statusbar/preference/QuickSettingsConfig$1;
.super Ljava/lang/Object;
.source "QuickSettingsConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig$1;->this$0:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig$1;->this$0:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->access$000(Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;)Lcom/android/systemui/statusbar/StatusBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig$1;->this$0:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->access$000(Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;)Lcom/android/systemui/statusbar/StatusBarService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 55
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig$1;->this$0:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->access$100(Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method
