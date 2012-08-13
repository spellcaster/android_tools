.class Lcom/android/systemui/statusbar/preference/AutoSync$1;
.super Ljava/lang/Object;
.source "AutoSync.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/AutoSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/AutoSync;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/AutoSync;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preference/AutoSync;->setAutoSyncSetting(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/AutoSync;->access$000(Lcom/android/systemui/statusbar/preference/AutoSync;)V

    .line 67
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
