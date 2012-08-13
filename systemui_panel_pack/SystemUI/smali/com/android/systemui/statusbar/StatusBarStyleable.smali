.class public Lcom/android/systemui/statusbar/StatusBarStyleable;
.super Ljava/lang/Object;
.source "StatusBarStyleable.java"


# static fields
.field private static final HTC_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "StatusBarStyleable"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNewSkinPackage:Ljava/lang/String;

.field private mOldSkinPackage:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mStyleChanged:Z

.field private mThemeRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const-string v1, ""

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mRes:Landroid/content/res/Resources;

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;

    .line 28
    const-string v0, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mOldSkinPackage:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mStyleChanged:Z

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->init()V

    .line 35
    return-void
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 72
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 73
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 74
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 75
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 77
    const-string v3, ""

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getSkinPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mRes:Landroid/content/res/Resources;

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "StatusBarStyleable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No skin package matches with the given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getStyleChanged()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mStyleChanged:Z

    return v0
.end method

.method public getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "drawableName"
    .parameter "drawableID"

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, resId:I
    if-eqz v0, :cond_2

    .line 45
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "StatusBarStyleable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No resource \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" exists in skin package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public updateStyleName()V
    .locals 4

    .prologue
    const-string v3, "StatusBarStyleable"

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getSkinPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mOldSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mStyleChanged:Z

    .line 83
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mStyleChanged:Z

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "StatusBarStyleable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateResources: mOldSkinPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mOldSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNewSkinPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mOldSkinPackage:Ljava/lang/String;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    :cond_1
    :goto_1
    return-void

    .line 82
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 89
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "StatusBarStyleable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No skin package matches with the given name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
