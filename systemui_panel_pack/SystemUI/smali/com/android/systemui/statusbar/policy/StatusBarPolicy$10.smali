.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 2263
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const-string v2, "StatusBarPolicy"

    .line 2295
    const-string v0, "StatusBarPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged, call updateCallState(), state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    .line 2298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    const-string v0, "StatusBarPolicy"

    const-string v0, "onCallStateChanged"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 2302
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 2354
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity directtion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    .line 2356
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 2357
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4
    .parameter "state"
    .parameter "networkType"

    .prologue
    const-string v3, "StatusBarPolicy"

    .line 2306
    const-string v1, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged , state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", networkType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const-string v1, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2310
    const-string v1, "net.gprs.data.connected"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2312
    .local v0, DataConnectionState:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2313
    const-string v1, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged , SystemProperties.get(\"net.gprs.data.connected\")= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :goto_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2338
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    .line 2347
    .end local v0           #DataConnectionState:Ljava/lang/String;
    :goto_1
    const-string v1, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged , mDataState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    .line 2349
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 2350
    return-void

    .line 2315
    .restart local v0       #DataConnectionState:Ljava/lang/String;
    :cond_0
    const-string v1, "StatusBarPolicy"

    const-string v1, "onDataConnectionStateChanged , SystemProperties.get(\"net.gprs.data.connected\")= null"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2342
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    goto :goto_1

    .line 2346
    .end local v0           #DataConnectionState:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    goto :goto_1
.end method

.method public onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "voiceState"
    .parameter "dataState"

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    .line 2286
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p2, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceStateData:[Landroid/telephony/ServiceState;

    .line 2287
    const-string v0, "StatusBarPolicy"

    const-string v1, "onSeparateServiceStateChanged+"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 2289
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 2290
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    .line 2274
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged, mServiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 2281
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 2282
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 2266
    const-string v0, "StatusBarPolicy"

    const-string v1, "onSignalStrengthsChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 2269
    return-void
.end method
