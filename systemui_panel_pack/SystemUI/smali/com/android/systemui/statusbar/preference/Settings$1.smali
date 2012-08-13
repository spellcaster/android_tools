.class Lcom/android/systemui/statusbar/preference/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Settings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Settings$1;->this$0:Lcom/android/systemui/statusbar/preference/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Settings$1;->this$0:Lcom/android/systemui/statusbar/preference/Settings;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Settings$1;->this$0:Lcom/android/systemui/statusbar/preference/Settings;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Settings;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 40
    return-void
.end method
