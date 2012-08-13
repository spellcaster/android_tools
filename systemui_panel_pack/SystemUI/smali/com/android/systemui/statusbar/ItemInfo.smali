.class public Lcom/android/systemui/statusbar/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field private Icon:Landroid/graphics/drawable/Drawable;

.field private Intent:Landroid/content/Intent;

.field private PKGname:Ljava/lang/String;

.field private Title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .locals 1
    .parameter "packagename"
    .parameter "title"
    .parameter "icon"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/ItemInfo;->Icon:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/ItemInfo;->PKGname:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/ItemInfo;->Intent:Landroid/content/Intent;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/ItemInfo;->Title:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/ItemInfo;->PKGname:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/ItemInfo;->Title:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/android/systemui/statusbar/ItemInfo;->Icon:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object p4, p0, Lcom/android/systemui/statusbar/ItemInfo;->Intent:Landroid/content/Intent;

    .line 21
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/ItemInfo;->Icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/ItemInfo;->Intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPkgname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/ItemInfo;->PKGname:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/ItemInfo;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/ItemInfo;->Icon:Landroid/graphics/drawable/Drawable;

    .line 44
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/ItemInfo;->Intent:Landroid/content/Intent;

    .line 51
    return-void
.end method

.method public setPKGname(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgname"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/ItemInfo;->PKGname:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/ItemInfo;->Title:Ljava/lang/String;

    .line 40
    return-void
.end method
