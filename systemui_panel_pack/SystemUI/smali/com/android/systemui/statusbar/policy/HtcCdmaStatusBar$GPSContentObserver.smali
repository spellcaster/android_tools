.class Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;
.super Landroid/database/ContentObserver;
.source "HtcCdmaStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPSContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const-string v3, "HtcCdmaStatusBar"

    .line 107
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->access$002(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;Z)Z

    .line 110
    const-string v0, "HtcCdmaStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange, isGpsEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->access$000(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vzw_lbs"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->access$102(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;Z)Z

    .line 115
    const-string v0, "HtcCdmaStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange, isVerizonLbsEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->access$100(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;->access$200(Lcom/android/systemui/statusbar/policy/HtcCdmaStatusBar;)V

    .line 118
    return-void
.end method
