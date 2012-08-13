.class public Lcom/lidroid/systemui/quickpanel/FlashlightActivity;
.super Landroid/app/Activity;
.source "FlashlightActivity.java"


# static fields
.field private static final SCREEN_TIMEOUT_MAX:I = 0x927c0


# instance fields
.field private mOrigScreenTimeout:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 42
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 43
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->mOrigScreenTimeout:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 45
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->finish()V

    .line 46
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const-string v5, "screen_off_timeout"

    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 25
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 26
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 27
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 28
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 31
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x6

    const-string v3, "Flashlight"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 32
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 33
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->mOrigScreenTimeout:I

    .line 35
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const v3, 0x927c0

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    return-void
.end method
