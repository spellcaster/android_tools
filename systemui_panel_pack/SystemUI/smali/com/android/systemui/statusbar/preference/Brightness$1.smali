.class Lcom/android/systemui/statusbar/preference/Brightness$1;
.super Ljava/lang/Object;
.source "Brightness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Brightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Brightness;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Brightness;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Brightness;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    .line 77
    .local v0, status:Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Brightness;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/Brightness;->access$000(Landroid/content/Context;Z)Z

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    if-nez v0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/preference/Brightness;->setBrightnessBarVisibility(Z)V

    .line 84
    if-nez v0, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/Brightness;->access$100(Lcom/android/systemui/statusbar/preference/Brightness;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/Brightness;->access$200(I)Z

    .line 88
    :cond_1
    return-void

    .end local v0           #status:Z
    :cond_2
    move v0, v2

    .line 75
    goto :goto_0
.end method
