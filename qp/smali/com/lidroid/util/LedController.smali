.class public Lcom/lidroid/util/LedController;
.super Ljava/lang/Object;
.source "LedController.java"


# static fields
.field private static sInstance:Lcom/lidroid/util/LedController;


# instance fields
.field private mCamera:Landroid/hardware/Camera;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    .line 10
    return-void
.end method

.method public static getInstance()Lcom/lidroid/util/LedController;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/lidroid/util/LedController;->sInstance:Lcom/lidroid/util/LedController;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/lidroid/util/LedController;

    invoke-direct {v0}, Lcom/lidroid/util/LedController;-><init>()V

    sput-object v0, Lcom/lidroid/util/LedController;->sInstance:Lcom/lidroid/util/LedController;

    .line 16
    :cond_0
    sget-object v0, Lcom/lidroid/util/LedController;->sInstance:Lcom/lidroid/util/LedController;

    return-object v0
.end method


# virtual methods
.method public getFlashMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_2

    move v0, v6

    .line 43
    .local v0, cameraOpenned:Z
    :goto_0
    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 48
    .local v1, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v6

    .line 50
    .local v2, result:Z
    :goto_1
    if-nez v0, :cond_1

    .line 51
    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 52
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    .line 55
    :cond_1
    return v2

    .end local v0           #cameraOpenned:Z
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    .end local v2           #result:Z
    :cond_2
    move v0, v5

    .line 42
    goto :goto_0

    .restart local v0       #cameraOpenned:Z
    .restart local v1       #params:Landroid/hardware/Camera$Parameters;
    :cond_3
    move v2, v5

    .line 48
    goto :goto_1
.end method

.method public isFlashSupported()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_2

    move v0, v5

    .line 60
    .local v0, cameraOpenned:Z
    :goto_0
    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 65
    .local v1, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    move v2, v5

    .line 67
    .local v2, result:Z
    :goto_1
    if-nez v0, :cond_1

    .line 68
    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 69
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    .line 72
    :cond_1
    return v2

    .end local v0           #cameraOpenned:Z
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    .end local v2           #result:Z
    :cond_2
    move v0, v4

    .line 59
    goto :goto_0

    .restart local v0       #cameraOpenned:Z
    .restart local v1       #params:Landroid/hardware/Camera$Parameters;
    :cond_3
    move v2, v4

    .line 65
    goto :goto_1
.end method

.method public off()V
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 33
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 35
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 36
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    .line 39
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

.method public on()V
    .locals 3

    .prologue
    .line 20
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 21
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 24
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 26
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 27
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 28
    return-void
.end method
