.class public Lcom/android/systemui/statusbar/preference/BT;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "BT.java"


# static fields
.field public static final INTENT_ALLOW_BT_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_BT_CHANGE"

.field private static final TAG:Ljava/lang/String; = "BTStatusBarPreference"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "itemView"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 21
    new-instance v0, Lcom/android/systemui/statusbar/preference/BT$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/BT$1;-><init>(Lcom/android/systemui/statusbar/preference/BT;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/preference/BT$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/BT$2;-><init>(Lcom/android/systemui/statusbar/preference/BT;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mClickListener:Landroid/view/View$OnClickListener;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/BT;->init()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/BT;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/preference/BT;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/BT;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/BT;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/BT;->handleStateChanged(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/BT;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/BT;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/BT;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/BT;->setBluetoothEnabled(Z)Z

    move-result v0

    return v0
.end method

.method private handleStateChanged(IZ)V
    .locals 4
    .parameter "state"
    .parameter "bEASDisable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    packed-switch p1, :pswitch_data_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    if-nez p2, :cond_6

    move v1, v3

    :goto_0
    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 150
    :goto_1
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    if-nez p2, :cond_0

    move v1, v3

    :goto_2
    and-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_2

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    if-nez p2, :cond_1

    move v1, v3

    :goto_3
    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_3

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    if-nez p2, :cond_2

    move v1, v3

    :goto_4
    and-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_4

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v1, 0x1040330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/preference/BT;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    if-nez p2, :cond_3

    move v1, v3

    :goto_5
    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_5

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    if-nez p2, :cond_5

    move v1, v3

    :goto_6
    and-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v2

    .line 148
    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 161
    :goto_0
    return v1

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private setBluetoothEnabled(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, ret:Z
    if-eqz p1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 68
    .local v0, state:I
    sget-boolean v1, Lcom/android/systemui/statusbar/preference/SettingUtil;->SENSE_30_SUPPORT:Z

    if-nez v1, :cond_1

    .line 82
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/preference/BT;->handleStateChanged(IZ)V

    .line 84
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mIntentFilter:Landroid/content/IntentFilter;

    .line 85
    sget-boolean v1, Lcom/android/systemui/statusbar/preference/SettingUtil;->SENSE_30_SUPPORT:Z

    if-nez v1, :cond_4

    .line 90
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/SettingUtil;->setForBTEASPolicyDisable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 71
    sget-boolean v1, Lcom/android/systemui/statusbar/preference/SettingUtil;->SENSE_30_SUPPORT:Z

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/preference/BT;->handleStateChanged(IZ)V

    goto :goto_0

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.app.admin.intent.ALLOW_BT_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    return-void
.end method
