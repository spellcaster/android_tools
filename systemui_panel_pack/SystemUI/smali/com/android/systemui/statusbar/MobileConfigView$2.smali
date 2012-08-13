.class Lcom/android/systemui/statusbar/MobileConfigView$2;
.super Ljava/lang/Object;
.source "MobileConfigView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MobileConfigView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MobileConfigView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MobileConfigView;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggleChanged(II)V
    .locals 7
    .parameter "toggle"
    .parameter "progrss"

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 120
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/MobileConfigView;->getAutoSyncSetting()Z

    move-result v0

    .line 121
    .local v0, bAutoSyncSetting:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/MobileConfigView;->getBackgroundDataSetting()Z

    move-result v1

    .line 122
    .local v1, bBackgroundDataSetting:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/MobileConfigView;->access$200(Lcom/android/systemui/statusbar/MobileConfigView;)Z

    move-result v2

    .line 128
    .local v2, bMobileDataEnabled:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/MobileConfigView;->isNetworkAvailableButNotMobile()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 129
    if-nez v0, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/MobileConfigView;->setAutoSyncSetting(Z)V

    .line 131
    :cond_0
    if-nez v1, :cond_1

    .line 132
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/MobileConfigView;->setBackgroundDataSetting(Z)V

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    .line 160
    :cond_2
    :goto_0
    return-void

    .line 135
    :cond_3
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 136
    if-ne v0, v4, :cond_4

    .line 137
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/MobileConfigView;->setAutoSyncSetting(Z)V

    .line 138
    :cond_4
    if-ne v1, v4, :cond_5

    .line 139
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/MobileConfigView;->setBackgroundDataSetting(Z)V

    .line 140
    :cond_5
    if-ne v2, v4, :cond_2

    .line 141
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/MobileConfigView;->access$300(Lcom/android/systemui/statusbar/MobileConfigView;Z)V

    goto :goto_0

    .line 142
    :cond_6
    if-ne p1, v4, :cond_9

    const/16 v3, 0x32

    if-ne p2, v3, :cond_9

    .line 143
    if-ne v0, v4, :cond_7

    .line 144
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/MobileConfigView;->setAutoSyncSetting(Z)V

    .line 145
    :cond_7
    if-nez v1, :cond_8

    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/MobileConfigView;->setBackgroundDataSetting(Z)V

    .line 147
    :cond_8
    if-nez v2, :cond_2

    .line 148
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/MobileConfigView;->access$300(Lcom/android/systemui/statusbar/MobileConfigView;Z)V

    goto :goto_0

    .line 149
    :cond_9
    const/4 v3, 0x2

    if-ne p1, v3, :cond_c

    if-ne p2, v6, :cond_c

    .line 150
    if-nez v0, :cond_a

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/MobileConfigView;->setAutoSyncSetting(Z)V

    .line 152
    :cond_a
    if-nez v1, :cond_b

    .line 153
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/MobileConfigView;->setBackgroundDataSetting(Z)V

    .line 154
    :cond_b
    if-nez v2, :cond_2

    .line 155
    iget-object v3, p0, Lcom/android/systemui/statusbar/MobileConfigView$2;->this$0:Lcom/android/systemui/statusbar/MobileConfigView;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/MobileConfigView;->access$300(Lcom/android/systemui/statusbar/MobileConfigView;Z)V

    goto :goto_0

    .line 157
    :cond_c
    const-string v3, "MobileConfigView"

    const-string v4, "onToggleChanged() State Error!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
