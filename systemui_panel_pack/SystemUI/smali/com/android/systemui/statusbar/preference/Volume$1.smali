.class Lcom/android/systemui/statusbar/preference/Volume$1;
.super Ljava/lang/Object;
.source "Volume.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Volume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Volume;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Volume;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 78
    const/4 v0, 0x1

    .line 80
    .local v0, flags:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/Volume;->access$000(Lcom/android/systemui/statusbar/preference/Volume;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Volume;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 82
    return-void
.end method
