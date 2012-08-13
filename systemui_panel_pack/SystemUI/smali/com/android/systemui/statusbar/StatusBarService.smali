.class public Lcom/android/systemui/statusbar/StatusBarService;
.super Landroid/app/Service;
.source "StatusBarService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarService$MyTicker;,
        Lcom/android/systemui/statusbar/StatusBarService$Launcher;,
        Lcom/android/systemui/statusbar/StatusBarService$H;,
        Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;
    }
.end annotation


# static fields
.field public static final ACTION_STATUSBAR_START:Ljava/lang/String; = "com.android.internal.policy.statusbar.START"

.field static final ANIM_FRAME_DURATION:I = 0x10

.field protected static final EVENT_UPDATE_CLOCK:I = 0x0

.field static final EXPANDED_FULL_OPEN:I = -0x2711

.field static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field static final HTC_CHINA:Z = false

.field static final HTC_DEBUG:Z = true

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final MSG_ANIMATE_REVEAL:I = 0x3e9

.field private static final NOTIFICATION_FLAG_MASK:I = 0xfe0000

.field static final SPEW:Z = true

.field static final SPEW_ICONS:Z = true

.field private static final STATUS_BAR_MODE_OPAQUE:I = 0x2

.field private static final STATUS_BAR_MODE_TRANSPARENT:I = 0x1

.field static final TAG:Ljava/lang/String; = "StatusBarService"


# instance fields
.field private glowAnimationGreen:Ljava/lang/Runnable;

.field private glowAnimationGreenReverse:Ljava/lang/Runnable;

.field private glowAnimationGreenStatic:Ljava/lang/Runnable;

.field private glowAnimationRed:Ljava/lang/Runnable;

.field private glowAnimationRedReverse:Ljava/lang/Runnable;

.field private glowAnimationRedStatic:Ljava/lang/Runnable;

.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field private mAreThereNotification:Z

.field mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

.field mClearButton:Landroid/widget/TextView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mClock:Lcom/android/systemui/statusbar/Clock;

.field mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

.field mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContext:Landroid/content/Context;

.field mCurAnimationTime:J

.field mDateView:Lcom/android/systemui/statusbar/DateView;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayHeight:F

.field private mDoneID:I

.field mEdgeBorder:I

.field private mExpandViewButton:Landroid/widget/TextView;

.field private mExpandViewButtonListener:Landroid/view/View$OnClickListener;

.field mExpanded:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field private mExpandedPage:Landroid/widget/LinearLayout;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

.field mExpandedVisible:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mGlowViewGreen:Landroid/widget/ImageView;

.field mGlowViewRed:Landroid/widget/ImageView;

.field mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

.field private mHtcContext:Landroid/content/Context;

.field mIconPolicy:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

.field mIconSize:I

.field mIcons:Landroid/widget/LinearLayout;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLatest:Lcom/android/systemui/statusbar/NotificationData;

.field mLatestItems:Landroid/widget/LinearLayout;

.field mLatestTitle:Landroid/widget/TextView;

.field private mNetworkTextView:Landroid/widget/TextView;

.field private mNetworkTextViewVisible:I

.field private mNewOrientation:I

.field mNoNotificationsTitle:Landroid/widget/TextView;

.field mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

.field mNotificationLinearLayout:Landroid/view/View;

.field private mOldOrientation:I

.field private mOnTopItemCount:I

.field mOngoing:Lcom/android/systemui/statusbar/NotificationData;

.field mOngoingItems:Landroid/widget/LinearLayout;

.field mOngoingTitle:Landroid/widget/TextView;

.field private mOntopEventItems:Landroid/widget/LinearLayout;

.field private mPanelSlightlyVisible:Z

.field mPixelFormat:I

.field mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

.field mPositionTmp:[I

.field mQueueLock:Ljava/lang/Object;

.field private mQuickSettingButton:Landroid/widget/TextView;

.field private mQuickSettingButtonListener:Landroid/view/View$OnClickListener;

.field private mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

.field private mRecentApps:Lcom/android/systemui/statusbar/RecentApps;

.field private mRecentAppsPage:Lcom/android/systemui/statusbar/RecentApps;

.field private mRecentAppsTaskManager:Lcom/android/systemui/statusbar/RecentApps;

.field mScrollView:Landroid/widget/ScrollView;

.field private mService:Lcom/android/systemui/statusbar/StatusBarService;

.field mStartTracing:Ljava/lang/Runnable;

.field private mStatusBarHandler:Landroid/os/Handler;

.field private mStatusBarMode:I

.field private mStatusBarReady:Z

.field private mStatusBarTitle:Landroid/widget/LinearLayout;

.field mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

.field private mStatusBarViewPressed:Z

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mSwitchButtons:Landroid/widget/LinearLayout;

.field private mTabDivider:Landroid/widget/ImageView;

.field private mTicker:Lcom/android/systemui/statusbar/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I

.field private m_baseTime:J

.field private m_callTimeIcon:I

.field private m_startTime:J

.field private makeStatusBarViewExtra:Ljava/lang/Runnable;

.field private updateCallTimer:Ljava/lang/Runnable;

.field private updateTimer:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 121
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarMode:I

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/StatusBarService$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    .line 165
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    .line 192
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNetworkTextViewVisible:I

    .line 208
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 210
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    .line 213
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 229
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOnTopItemCount:I

    .line 233
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDoneID:I

    .line 235
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    .line 236
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHtcContext:Landroid/content/Context;

    .line 237
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 238
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOldOrientation:I

    .line 239
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNewOrientation:I

    .line 240
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarViewPressed:Z

    .line 241
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 242
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarReady:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAreThereNotification:Z

    .line 253
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->m_callTimeIcon:I

    .line 510
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$1;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->makeStatusBarViewExtra:Ljava/lang/Runnable;

    .line 898
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$2;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->updateCallTimer:Ljava/lang/Runnable;

    .line 1234
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$3;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2155
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$5;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 2166
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$6;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2245
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$7;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->updateTimer:Ljava/lang/Runnable;

    .line 2447
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$8;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    .line 2457
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$9;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStopTracing:Ljava/lang/Runnable;

    .line 2489
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$10;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreen:Ljava/lang/Runnable;

    .line 2501
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$11;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreenReverse:Ljava/lang/Runnable;

    .line 2508
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$12;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreenStatic:Ljava/lang/Runnable;

    .line 2515
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$13;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRed:Ljava/lang/Runnable;

    .line 2527
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$14;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRedReverse:Ljava/lang/Runnable;

    .line 2534
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$15;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRedStatic:Ljava/lang/Runnable;

    .line 2541
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$16;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 2576
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$17;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandViewButtonListener:Landroid/view/View$OnClickListener;

    .line 2585
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$18;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettingButtonListener:Landroid/view/View$OnClickListener;

    .line 2600
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$19;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/RecentApps;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mRecentApps:Lcom/android/systemui/statusbar/RecentApps;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettingButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/RecentApps;)Lcom/android/systemui/statusbar/RecentApps;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mRecentApps:Lcom/android/systemui/statusbar/RecentApps;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarReady:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarReady:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/StatusBarService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->m_startTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/StatusBarService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->m_baseTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNetworkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/StatusBarService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDoneID:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/StatusBarService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDoneID:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/StatusBarStyleable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/StatusBarService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->changeStatusBarStyle(I)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/StatusBarService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarMode:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/StatusBarService;FFI)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarService;->loadGlowAnim(FFI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/StatusBarService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreenReverse:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/StatusBarService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreenStatic:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/StatusBarService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreen:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/StatusBarService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRedReverse:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/StatusBarService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRedStatic:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/StatusBarService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRed:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/StatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedPage:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateClock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/preference/QuickSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/preference/QuickSettings;)Lcom/android/systemui/statusbar/preference/QuickSettings;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTabDivider:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/StatusBarService;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTabDivider:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mSwitchButtons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/StatusBarService;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mSwitchButtons:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandViewButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/StatusBarService;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandViewButton:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandViewButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettingButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/StatusBarService;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettingButton:Landroid/widget/TextView;

    return-object p1
.end method

.method private changeStatusBarStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 1243
    return-void
.end method

.method private chooseIconIndex(ZI)I
    .locals 2
    .parameter "isOngoing"
    .parameter "viewIndex"

    .prologue
    .line 812
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 813
    .local v0, latestSize:I
    if-eqz p1, :cond_0

    .line 814
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/2addr v1, v0

    .line 816
    :goto_0
    return v1

    :cond_0
    sub-int v1, v0, p2

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1800
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1801
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 1802
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1804
    :cond_0
    return-object v0
.end method

.method private loadGlowAnim(FFI)Landroid/view/animation/AlphaAnimation;
    .locals 3
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "repeat"

    .prologue
    .line 2480
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2481
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2482
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 2483
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2484
    invoke-virtual {v0, p3}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2486
    return-object v0
.end method

.method private makeExpandedVisible()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1284
    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Make expanded visible: expanded visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    .line 1289
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 1299
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    if-eqz v0, :cond_2

    .line 1300
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mRecentApps:Lcom/android/systemui/statusbar/RecentApps;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RecentApps;->setRecentApplications()V

    .line 1302
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v0, :cond_3

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->onStart()V

    .line 1306
    :cond_3
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1307
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1308
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1310
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandedView;->requestFocus(I)Z

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 1314
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-nez v0, :cond_0

    .line 1315
    const/high16 v0, 0x10a

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    goto :goto_0
.end method

.method private makeStatusBarView(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 360
    .local v4, res:Landroid/content/res/Resources;
    const v12, 0x1050005

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    .line 362
    const v12, 0x7f03000f

    const/4 v13, 0x0

    invoke-static {p1, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandedView;

    .line 364
    .local v0, expanded:Lcom/android/systemui/statusbar/ExpandedView;
    iput-object p0, v0, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 366
    const v12, 0x7f03000e

    const/4 v13, 0x0

    invoke-static {p1, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/StatusBarView;

    .line 367
    .local v5, sb:Lcom/android/systemui/statusbar/StatusBarView;
    iput-object p0, v5, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 377
    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 378
    const v12, 0x7f0a004c

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 379
    const v12, 0x7f0a004a

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/IconMerger;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    .line 380
    const v12, 0x7f0a0049

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    .line 381
    const v12, 0x7f0a004e

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    .line 382
    const v12, 0x7f0a0051

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/DateView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    .line 383
    const v12, 0x7f0a004d

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/Clock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClock:Lcom/android/systemui/statusbar/Clock;

    .line 385
    const v12, 0x7f030010

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 386
    .local v2, glowView:Landroid/widget/FrameLayout;
    const v12, 0x7f0a005d

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewRed:Landroid/widget/ImageView;

    .line 387
    const v12, 0x7f0a005e

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewGreen:Landroid/widget/ImageView;

    .line 388
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/StatusBarView;->addView(Landroid/view/View;)V

    .line 389
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewRed:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewGreen:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    new-instance v12, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;

    invoke-direct {v12, p0, p1}, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    .line 393
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    .line 394
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/ExpandedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedPage:Landroid/widget/LinearLayout;

    .line 395
    sget-boolean v12, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v12, :cond_1

    .line 396
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    iput-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    .line 400
    :goto_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedPage:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    .line 401
    const v12, 0x7f0a0057

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    .line 402
    const v12, 0x7f0a0058

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    .line 403
    const v12, 0x7f0a0059

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    .line 404
    const v12, 0x7f0a005a

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    .line 405
    const v12, 0x7f0a0056

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    .line 406
    const v12, 0x7f0a0054

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    .line 407
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    const v12, 0x7f0a0017

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    .line 418
    const v12, 0x7f0a0055

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    .line 420
    const v12, 0x7f030003

    const/4 v13, 0x0

    invoke-static {p1, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 421
    .local v3, mOntopEventItems:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v1, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 423
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 424
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    new-instance v12, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;

    invoke-direct {v12, p0, p1, v5}, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V

    iput-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    .line 429
    const v12, 0x7f0a0050

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/TickerView;

    .line 430
    .local v10, tickerView:Lcom/android/systemui/statusbar/TickerView;
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    iput-object v12, v10, Lcom/android/systemui/statusbar/TickerView;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    .line 432
    const v12, 0x7f0a004b

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNetworkTextView:Landroid/widget/TextView;

    .line 434
    const v12, 0x7f030015

    const/4 v13, 0x0

    invoke-static {p1, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/TrackingView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    .line 435
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iput-object p0, v12, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 436
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    const v13, 0x7f0a006c

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    .line 437
    sget-boolean v12, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S35_HEADER:Z

    if-eqz v12, :cond_2

    .line 438
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    const v13, 0x7f020199

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/CloseDragHandle;->setBackgroundResource(I)V

    .line 444
    :goto_1
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object p0, v12, Lcom/android/systemui/statusbar/CloseDragHandle;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 446
    const/high16 v12, 0x7f07

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 449
    const v12, 0x7f0a004b

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcBlinkingTextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 453
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/DateView;->setVisibility(I)V

    .line 455
    const v12, 0x7f0a0052

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #expanded:Lcom/android/systemui/statusbar/ExpandedView;
    check-cast v0, Lcom/android/systemui/statusbar/CarrierLabel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    .line 456
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    iget-object v13, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNetworkTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->registerStatusBarPlmn(Landroid/widget/TextView;)V

    .line 458
    sget-boolean v12, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S35_HEADER:Z

    if-eqz v12, :cond_4

    .line 460
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    .line 461
    .local v7, tempPaddingLeft:I
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v9

    .line 462
    .local v9, tempPaddingTop:I
    const/4 v8, 0x0

    .line 463
    .local v8, tempPaddingRight:I
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    .line 465
    .local v6, tempPaddingBottom:I
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    const v13, 0x7f0201af

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 466
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v7, v9, v8, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 469
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    const v12, 0x7f070012

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 473
    .local v11, title_height:I
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setHeight(I)V

    .line 494
    .end local v6           #tempPaddingBottom:I
    .end local v7           #tempPaddingLeft:I
    .end local v8           #tempPaddingRight:I
    .end local v9           #tempPaddingTop:I
    .end local v11           #title_height:I
    :cond_0
    :goto_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 495
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v12, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v12, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v12, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v12, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v12, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    const-string v12, "com.android.systemui.statusbar.TRANSPARENT"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v12, "com.android.systemui.statusbar.OPAQUE"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v12, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 508
    return-void

    .line 398
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #mOntopEventItems:Landroid/widget/LinearLayout;
    .end local v10           #tickerView:Lcom/android/systemui/statusbar/TickerView;
    .restart local v0       #expanded:Lcom/android/systemui/statusbar/ExpandedView;
    :cond_1
    const v12, 0x7f0a0055

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    goto/16 :goto_0

    .line 439
    .restart local v3       #mOntopEventItems:Landroid/widget/LinearLayout;
    .restart local v10       #tickerView:Lcom/android/systemui/statusbar/TickerView;
    :cond_2
    sget-boolean v12, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S30_HEADER:Z

    if-eqz v12, :cond_3

    .line 440
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    const v13, 0x7f02019b

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/CloseDragHandle;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 442
    :cond_3
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    const v13, 0x7f02019a

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/CloseDragHandle;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 475
    .end local v0           #expanded:Lcom/android/systemui/statusbar/ExpandedView;
    :cond_4
    sget-boolean v12, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S30_HEADER:Z

    if-eqz v12, :cond_0

    .line 477
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    .line 478
    .restart local v7       #tempPaddingLeft:I
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v9

    .line 479
    .restart local v9       #tempPaddingTop:I
    const/4 v8, 0x0

    .line 480
    .restart local v8       #tempPaddingRight:I
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    .line 482
    .restart local v6       #tempPaddingBottom:I
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    const v13, 0x7f0201a7

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 483
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v7, v9, v8, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 486
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    const v12, 0x7f070012

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 490
    .restart local v11       #title_height:I
    iget-object v12, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_2
.end method

.method private setAreThereNotifications()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 1119
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v2

    .line 1120
    .local v2, ongoing:Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v0

    .line 1121
    .local v0, latest:Z
    iget v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOnTopItemCount:I

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    move v1, v7

    .line 1124
    .local v1, onTop:Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1125
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1127
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    if-eqz v7, :cond_1

    .line 1128
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CarrierLabel;->getPaddingLeft()I

    move-result v4

    .line 1129
    .local v4, pLeft:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CarrierLabel;->getPaddingTop()I

    move-result v6

    .line 1130
    .local v6, pTop:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CarrierLabel;->getPaddingRight()I

    move-result v5

    .line 1131
    .local v5, pRight:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CarrierLabel;->getPaddingBottom()I

    move-result v3

    .line 1133
    .local v3, pBottom:I
    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S35_HEADER:Z

    if-eqz v7, :cond_5

    .line 1134
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    const v8, 0x7f0201ae

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/CarrierLabel;->setBackgroundResource(I)V

    .line 1138
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7, v4, v6, v5, v3}, Lcom/android/systemui/statusbar/CarrierLabel;->setPadding(IIII)V

    .line 1158
    .end local v3           #pBottom:I
    .end local v4           #pLeft:I
    .end local v5           #pRight:I
    .end local v6           #pTop:I
    :cond_1
    :goto_2
    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_NO_ONGOING_TITLE:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    move v8, v9

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    move v8, v9

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1161
    if-nez v2, :cond_3

    if-eqz v0, :cond_b

    .line 1162
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1179
    :goto_5
    return-void

    .end local v1           #onTop:Z
    :cond_4
    move v1, v9

    .line 1121
    goto :goto_0

    .line 1135
    .restart local v1       #onTop:Z
    .restart local v3       #pBottom:I
    .restart local v4       #pLeft:I
    .restart local v5       #pRight:I
    .restart local v6       #pTop:I
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S30_HEADER:Z

    if-eqz v7, :cond_0

    .line 1136
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    const v8, 0x7f0201ad

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/CarrierLabel;->setBackgroundResource(I)V

    goto :goto_1

    .line 1141
    .end local v3           #pBottom:I
    .end local v4           #pLeft:I
    .end local v5           #pRight:I
    .end local v6           #pTop:I
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    if-eqz v7, :cond_1

    .line 1144
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CarrierLabel;->getPaddingLeft()I

    move-result v4

    .line 1145
    .restart local v4       #pLeft:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CarrierLabel;->getPaddingTop()I

    move-result v6

    .line 1146
    .restart local v6       #pTop:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CarrierLabel;->getPaddingRight()I

    move-result v5

    .line 1147
    .restart local v5       #pRight:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CarrierLabel;->getPaddingBottom()I

    move-result v3

    .line 1149
    .restart local v3       #pBottom:I
    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S35_HEADER:Z

    if-eqz v7, :cond_8

    .line 1150
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/CarrierLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1154
    :cond_7
    :goto_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7, v4, v6, v5, v3}, Lcom/android/systemui/statusbar/CarrierLabel;->setPadding(IIII)V

    goto :goto_2

    .line 1151
    :cond_8
    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S30_HEADER:Z

    if-eqz v7, :cond_7

    .line 1152
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabel:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/CarrierLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .end local v3           #pBottom:I
    .end local v4           #pLeft:I
    .end local v5           #pRight:I
    .end local v6           #pTop:I
    :cond_9
    move v8, v10

    .line 1158
    goto :goto_3

    :cond_a
    move v8, v10

    .line 1159
    goto :goto_4

    .line 1168
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private tick(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1722
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1723
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/Ticker;->addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 1728
    :cond_0
    return-void
.end method

.method private updateClock()V
    .locals 17

    .prologue
    .line 2614
    const-string v5, ""

    .line 2615
    .local v5, format:Ljava/lang/String;
    const-string v1, "EE, MMM dd, yyyy"

    .line 2617
    .local v1, DEFAULT_FORMAT:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "date_format"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2623
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object v13, v0

    monitor-enter v13

    .line 2624
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    .line 2625
    .local v2, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object v14, v0

    invoke-virtual {v14, v6}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    .line 2627
    .local v8, oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v7, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 2628
    .local v7, n:Lcom/android/internal/statusbar/StatusBarNotification;
    iget-object v14, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v11, v14, Landroid/app/Notification;->when:J

    .line 2629
    .local v11, when:J
    iget-object v14, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v9, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2631
    .local v9, rv:Landroid/widget/RemoteViews;
    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v14

    const v15, 0x1090061

    if-eq v14, v15, :cond_0

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    const v15, 0x1090075

    if-ne v14, v15, :cond_1

    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v14, v14, v11

    if-eqz v14, :cond_1

    .line 2634
    :try_start_2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 2635
    .local v3, date:Ljava/util/Date;
    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 2637
    .local v10, str:Ljava/lang/CharSequence;
    :goto_2
    const v14, 0x102005b

    invoke-virtual {v9, v14, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    move-object v14, v0

    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v9, v14, v15}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2625
    .end local v3           #date:Ljava/util/Date;
    .end local v10           #str:Ljava/lang/CharSequence;
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2618
    .end local v2           #N:I
    .end local v6           #i:I
    .end local v7           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v8           #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v9           #rv:Landroid/widget/RemoteViews;
    .end local v11           #when:J
    :catch_0
    move-exception v13

    move-object v4, v13

    .line 2619
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "StatusBarService"

    const-string v14, "can\'t get system current date format"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    move-object v5, v1

    goto :goto_0

    .line 2635
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #N:I
    .restart local v3       #date:Ljava/util/Date;
    .restart local v6       #i:I
    .restart local v7       #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .restart local v8       #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v9       #rv:Landroid/widget/RemoteViews;
    .restart local v11       #when:J
    :cond_2
    :try_start_3
    invoke-static {v5, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v14

    move-object v10, v14

    goto :goto_2

    .line 2640
    .end local v3           #date:Ljava/util/Date;
    :catch_1
    move-exception v14

    move-object v4, v14

    .line 2642
    .local v4, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v14, "StatusBarService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "couldn\'t reapply views date time for package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2646
    .end local v2           #N:I
    .end local v4           #e:Ljava/lang/RuntimeException;
    .end local v6           #i:I
    .end local v7           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v8           #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v9           #rv:Landroid/widget/RemoteViews;
    .end local v11           #when:J
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    .restart local v2       #N:I
    .restart local v6       #i:I
    :cond_3
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2647
    return-void
.end method

.method private updateSkinResource()V
    .locals 14

    .prologue
    const-string v13, "status_bar_close_on"

    .line 2267
    const/4 v5, 0x0

    .line 2268
    .local v5, tempPaddingLeft:I
    const/4 v7, 0x0

    .line 2269
    .local v7, tempPaddingTop:I
    const/4 v6, 0x0

    .line 2270
    .local v6, tempPaddingRight:I
    const/4 v4, 0x0

    .line 2274
    .local v4, tempPaddingBottom:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "statusbar_background"

    const v12, 0x7f0201b3

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2279
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarTitle:Landroid/widget/LinearLayout;

    .line 2280
    .local v8, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 2281
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 2282
    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 2283
    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 2285
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S35_HEADER:Z

    if-eqz v9, :cond_1

    .line 2286
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v10, "status_bar_titlebar_rest"

    const v11, 0x7f0201af

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2302
    :cond_0
    :goto_0
    invoke-virtual {v8, v5, v7, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2305
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    .line 2306
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    .line 2307
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 2308
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 2316
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S35_HEADER:Z

    if-eqz v9, :cond_2

    .line 2317
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "status_bar_titlebar_btn"

    const v12, 0x7f0201a8

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2343
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9, v5, v7, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2346
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S35_HEADER:Z

    if-eqz v9, :cond_4

    .line 2347
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "status_bar_close_on"

    const v11, 0x7f020199

    invoke-virtual {v10, v13, v11}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/CloseDragHandle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2372
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2373
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_6

    .line 2374
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    .line 2375
    .local v3, oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/LatestItemView;

    .line 2376
    .local v2, latestItemView:Lcom/android/systemui/statusbar/LatestItemView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LatestItemView;->updateSkinResource()V

    .line 2373
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2288
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #latestItemView:Lcom/android/systemui/statusbar/LatestItemView;
    .end local v3           #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S30_HEADER:Z

    if-nez v9, :cond_0

    .line 2298
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v10, "status_bar_header_background"

    const v11, 0x7f02019c

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2319
    :cond_2
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S30_HEADER:Z

    if-eqz v9, :cond_3

    .line 2323
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "status_bar_titlebar_right"

    const v12, 0x7f0201b0

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2339
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "btn_default"

    const v12, 0x7f020004

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2349
    :cond_4
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_S30_HEADER:Z

    if-eqz v9, :cond_5

    .line 2350
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "status_bar_close_on"

    const v11, 0x7f02019b

    invoke-virtual {v10, v13, v11}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/CloseDragHandle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2353
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "status_bar_close_on"

    const v11, 0x7f02019a

    invoke-virtual {v10, v13, v11}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/CloseDragHandle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2383
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2384
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_8

    .line 2385
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    .line 2386
    .restart local v3       #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v9, v9, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->flags:I

    const/high16 v10, 0xfe

    and-int/2addr v9, v10

    if-eqz v9, :cond_7

    .line 2384
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2387
    :cond_7
    iget-object v2, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/LatestItemView;

    .line 2388
    .restart local v2       #latestItemView:Lcom/android/systemui/statusbar/LatestItemView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LatestItemView;->updateSkinResource()V

    goto :goto_5

    .line 2394
    .end local v2           #latestItemView:Lcom/android/systemui/statusbar/LatestItemView;
    .end local v3           #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_8
    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    .line 588
    const-string v1, "StatusBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIcon slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " viewIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 593
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 607
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 5
    .parameter "key"
    .parameter "notification"

    .prologue
    const-string v4, "StatusBarService"

    .line 645
    const/4 v1, 0x1

    .line 647
    .local v1, shouldTick:Z
    const-string v2, "StatusBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNotification notification = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fullScreenIntent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentIntent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 652
    const/4 v1, 0x0

    .line 653
    const-string v2, "StatusBarService"

    const-string v2, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :try_start_0
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 661
    .local v0, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v0, :cond_1

    .line 670
    :goto_1
    return-void

    .line 663
    :cond_1
    if-eqz v1, :cond_2

    .line 664
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 668
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 669
    const/16 v2, -0x2710

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_1

    .line 656
    .end local v0           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 42
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 914
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v24

    .line 915
    .local v24, isOngoing:Z
    if-eqz v24, :cond_0

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object v5, v0

    .line 917
    .local v5, list:Lcom/android/systemui/statusbar/NotificationData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .line 923
    .local v29, parent:Landroid/view/ViewGroup;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v39

    .line 924
    .local v39, views:[Landroid/view/View;
    if-nez v39, :cond_1

    .line 925
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    .line 927
    const/4 v6, 0x0

    .line 1083
    :goto_1
    return-object v6

    .line 919
    .end local v5           #list:Lcom/android/systemui/statusbar/NotificationData;
    .end local v29           #parent:Landroid/view/ViewGroup;
    .end local v39           #views:[Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object v5, v0

    .line 920
    .restart local v5       #list:Lcom/android/systemui/statusbar/NotificationData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .restart local v29       #parent:Landroid/view/ViewGroup;
    goto :goto_0

    .line 929
    .restart local v39       #views:[Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    aget-object v8, v39, v6

    .line 930
    .local v8, row:Landroid/view/View;
    const/4 v6, 0x1

    aget-object v9, v39, v6

    .line 931
    .local v9, content:Landroid/view/View;
    const/4 v6, 0x2

    aget-object v10, v39, v6

    .line 933
    .local v10, expanded:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mTouchListener:Landroid/view/View$OnTouchListener;

    move-object v6, v0

    invoke-virtual {v10, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 935
    const v6, 0x1020016

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 936
    .local v37, tv_title:Landroid/widget/TextView;
    const v6, 0x1020040

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 937
    .local v35, tv_text:Landroid/widget/TextView;
    const v6, 0x102005b

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 938
    .local v36, tv_time:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/ImageView;

    .line 939
    .local v34, tv_icon:Landroid/widget/ImageView;
    if-eqz v37, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object/from16 v0, v37

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 940
    :cond_2
    if-eqz v35, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object/from16 v0, v35

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 941
    :cond_3
    if-eqz v36, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object/from16 v0, v36

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 943
    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object/from16 v27, v0

    .line 944
    .local v27, n:Landroid/app/Notification;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v31, v0

    .line 945
    .local v31, remoteViews:Landroid/widget/RemoteViews;
    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    const v7, 0x1090075

    if-ne v6, v7, :cond_6

    .line 946
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v40, v0

    .line 947
    .local v40, when:J
    if-eqz v35, :cond_6

    if-nez v24, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v6, v40, v6

    if-eqz v6, :cond_6

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 949
    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x46

    if-le v6, v7, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v11, 0x0

    const/16 v12, 0x45

    invoke-interface {v7, v11, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    :cond_5
    const-string v17, ""

    .line 952
    .local v17, format:Ljava/lang/String;
    const-string v12, "EE, MMM dd, yyyy"

    .line 954
    .local v12, DEFAULT_FORMAT:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 959
    :goto_2
    new-instance v15, Ljava/util/Date;

    move-object v0, v15

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 960
    .local v15, date:Ljava/util/Date;
    invoke-static/range {v40 .. v41}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v33, v6

    .line 962
    .local v33, str:Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    .end local v12           #DEFAULT_FORMAT:Ljava/lang/String;
    .end local v15           #date:Ljava/util/Date;
    .end local v17           #format:Ljava/lang/String;
    .end local v33           #str:Ljava/lang/CharSequence;
    .end local v40           #when:J
    :cond_6
    if-eqz v34, :cond_8

    .line 968
    const/16 v25, 0x0

    .line 971
    .local v25, isThirdParty:Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_7

    .line 972
    const/16 v23, 0x0

    .line 973
    .local v23, isHtcApp:Z
    const/16 v21, 0x0

    .line 974
    .local v21, isAndroidApp:Z
    const/16 v22, 0x0

    .line 976
    .local v22, isGoogleApp:Z
    const-string v6, "com.htc*"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 977
    .local v30, pattern:Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 978
    .local v26, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    .line 980
    const-string v6, "com.android*"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 981
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 982
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    .line 984
    const-string v6, "com.google*"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 985
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 986
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    .line 988
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_a

    if-nez v23, :cond_a

    if-nez v21, :cond_a

    if-nez v22, :cond_a

    const/4 v6, 0x1

    move/from16 v25, v6

    .line 991
    .end local v21           #isAndroidApp:Z
    .end local v22           #isGoogleApp:Z
    .end local v23           #isHtcApp:Z
    .end local v26           #matcher:Ljava/util/regex/Matcher;
    .end local v30           #pattern:Ljava/util/regex/Pattern;
    :cond_7
    :goto_4
    if-nez v25, :cond_8

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    .line 993
    .local v32, res:Landroid/content/res/Resources;
    const v6, 0x7f070011

    move-object/from16 v0, v32

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 994
    .local v18, height:I
    sget-boolean v6, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v6, :cond_b

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    move-object v6, v0

    const-string v7, "status_bar_icons_tile"

    const v11, 0x7f02019f

    invoke-virtual {v6, v7, v11}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 996
    .local v14, d:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v14

    move/from16 v1, v18

    move v2, v6

    move/from16 v3, v18

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 997
    move-object/from16 v0, v34

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    .end local v14           #d:Landroid/graphics/drawable/Drawable;
    .end local v18           #height:I
    .end local v25           #isThirdParty:Z
    .end local v32           #res:Landroid/content/res/Resources;
    :cond_8
    :goto_5
    new-instance v11, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1007
    .local v11, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v19, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v7, v0

    iget v7, v7, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v12, v0

    iget v12, v12, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v13, v0

    iget v13, v13, Landroid/app/Notification;->number:I

    move-object/from16 v0, v19

    move-object v1, v6

    move v2, v7

    move v3, v12

    move v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    .line 1009
    .local v19, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 1010
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Coulding create icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    .line 1011
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 955
    .end local v11           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v19           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v12       #DEFAULT_FORMAT:Ljava/lang/String;
    .restart local v17       #format:Ljava/lang/String;
    .restart local v40       #when:J
    :catch_0
    move-exception v6

    move-object/from16 v16, v6

    .line 956
    .local v16, e:Ljava/lang/Exception;
    const-string v6, "StatusBarService"

    const-string v7, "can\'t get system current date format"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    move-object/from16 v17, v12

    goto/16 :goto_2

    .line 960
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v15       #date:Ljava/util/Date;
    :cond_9
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v33, v6

    goto/16 :goto_3

    .line 988
    .end local v12           #DEFAULT_FORMAT:Ljava/lang/String;
    .end local v15           #date:Ljava/util/Date;
    .end local v17           #format:Ljava/lang/String;
    .end local v40           #when:J
    .restart local v21       #isAndroidApp:Z
    .restart local v22       #isGoogleApp:Z
    .restart local v23       #isHtcApp:Z
    .restart local v25       #isThirdParty:Z
    .restart local v26       #matcher:Ljava/util/regex/Matcher;
    .restart local v30       #pattern:Ljava/util/regex/Pattern;
    :cond_a
    const/4 v6, 0x0

    move/from16 v25, v6

    goto/16 :goto_4

    .line 999
    .end local v21           #isAndroidApp:Z
    .end local v22           #isGoogleApp:Z
    .end local v23           #isHtcApp:Z
    .end local v26           #matcher:Ljava/util/regex/Matcher;
    .end local v30           #pattern:Ljava/util/regex/Pattern;
    .restart local v18       #height:I
    .restart local v32       #res:Landroid/content/res/Resources;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02019f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .end local v18           #height:I
    .end local v25           #isThirdParty:Z
    .end local v32           #res:Landroid/content/res/Resources;
    .restart local v11       #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v19       #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_c
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 1014
    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/NotificationData;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/StatusBarIconView;)I

    move-result v38

    .line 1015
    .local v38, viewIndex:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/high16 v7, 0xfe

    and-int v28, v6, v7

    .line 1016
    .local v28, onTopFlag:I
    if-eqz v28, :cond_d

    const/4 v6, 0x1

    move v13, v6

    .line 1018
    .local v13, IsOnTopEvent:Z
    :goto_6
    if-eqz v13, :cond_e

    .line 1019
    sparse-switch v28, :sswitch_data_0

    .line 1041
    :goto_7
    const v6, -0xd6d3cf

    invoke-virtual {v9, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1042
    const/4 v6, 0x0

    move-object/from16 v0, v29

    move-object v1, v8

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1043
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOnTopItemCount:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/StatusBarService;->mOnTopItemCount:I

    .line 1050
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->chooseIconIndex(ZI)I

    move-result v20

    .line 1051
    .local v20, iconIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v11

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/IconMerger;->addView(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    move-object v6, v11

    .line 1083
    goto/16 :goto_1

    .line 1016
    .end local v13           #IsOnTopEvent:Z
    .end local v20           #iconIndex:I
    :cond_d
    const/4 v6, 0x0

    move v13, v6

    goto :goto_6

    .line 1021
    .restart local v13       #IsOnTopEvent:Z
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    move-object v6, v0

    const v7, 0x7f0a000a

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29           #parent:Landroid/view/ViewGroup;
    check-cast v29, Landroid/widget/LinearLayout;

    .line 1022
    .restart local v29       #parent:Landroid/view/ViewGroup;
    goto :goto_7

    .line 1024
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    move-object v6, v0

    const v7, 0x7f0a000b

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29           #parent:Landroid/view/ViewGroup;
    check-cast v29, Landroid/widget/LinearLayout;

    .line 1025
    .restart local v29       #parent:Landroid/view/ViewGroup;
    goto :goto_7

    .line 1027
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    move-object v6, v0

    const v7, 0x7f0a000c

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29           #parent:Landroid/view/ViewGroup;
    check-cast v29, Landroid/widget/LinearLayout;

    .line 1028
    .restart local v29       #parent:Landroid/view/ViewGroup;
    goto :goto_7

    .line 1030
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    move-object v6, v0

    const v7, 0x7f0a000d

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29           #parent:Landroid/view/ViewGroup;
    check-cast v29, Landroid/widget/LinearLayout;

    .line 1031
    .restart local v29       #parent:Landroid/view/ViewGroup;
    goto :goto_7

    .line 1033
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    move-object v6, v0

    const v7, 0x7f0a000e

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29           #parent:Landroid/view/ViewGroup;
    check-cast v29, Landroid/widget/LinearLayout;

    .line 1034
    .restart local v29       #parent:Landroid/view/ViewGroup;
    goto :goto_7

    .line 1036
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    move-object v6, v0

    const v7, 0x7f0a000f

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29           #parent:Landroid/view/ViewGroup;
    check-cast v29, Landroid/widget/LinearLayout;

    .line 1037
    .restart local v29       #parent:Landroid/view/ViewGroup;
    goto/16 :goto_7

    .line 1046
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOnTopItemCount:I

    move v6, v0

    sub-int v6, v38, v6

    move-object/from16 v0, v29

    move-object v1, v8

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 1019
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_2
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_4
        0x400000 -> :sswitch_5
    .end sparse-switch
.end method

.method protected addStatusBarView()V
    .locals 8

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 564
    .local v6, res:Landroid/content/res/Resources;
    const v1, 0x1050004

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 566
    .local v2, height:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 570
    .local v7, view:Lcom/android/systemui/statusbar/StatusBarView;
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    .line 572
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const/16 v4, 0x48

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 579
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 580
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 581
    const v1, 0x103006d

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 583
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    return-void
.end method

.method public animateCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1334
    const-string v1, "StatusBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateCollapse(): mExpanded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mExpandedVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mExpanded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAnimating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAnimY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAnimVel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v1, :cond_0

    .line 1357
    :goto_0
    return-void

    .line 1347
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_1

    .line 1348
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v1

    .line 1354
    .local v0, y:I
    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 1355
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1356
    const/high16 v1, -0x3b06

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0

    .line 1350
    .end local v0           #y:I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sub-int v0, v1, v4

    .restart local v0       #y:I
    goto :goto_1
.end method

.method public animateExpand()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1320
    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animate expand: expanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 1328
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1329
    const/high16 v0, 0x44fa

    invoke-virtual {p0, v3, v0, v4}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0
.end method

.method public disable(I)V
    .locals 4
    .parameter "state"

    .prologue
    const-string v3, "StatusBarService"

    .line 1186
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 1187
    .local v1, old:I
    xor-int v0, p1, v1

    .line 1188
    .local v0, diff:I
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 1190
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 1191
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 1192
    const-string v2, "StatusBarService"

    const-string v2, "DISABLE_EXPAND: yes"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 1196
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    .line 1197
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    .line 1198
    const-string v2, "StatusBarService"

    const-string v2, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v2, :cond_2

    .line 1200
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    .line 1216
    :cond_1
    :goto_0
    return-void

    .line 1202
    :cond_2
    const/4 v2, 0x0

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 1205
    :cond_3
    const-string v2, "StatusBarService"

    const-string v2, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v2, :cond_1

    .line 1207
    const/4 v2, 0x1

    const/high16 v3, 0x10a

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 1210
    :cond_4
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    .line 1211
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v2, :cond_1

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_1

    .line 1212
    const-string v2, "StatusBarService"

    const-string v2, "DISABLE_NOTIFICATION_TICKER: yes"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    goto :goto_0
.end method

.method doAnimation()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "StatusBarService"

    .line 1416
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    .line 1422
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 1423
    const-string v0, "StatusBarService"

    const-string v0, "Animation completed to expanded state."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1425
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1426
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performExpand()V

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 1429
    const-string v0, "StatusBarService"

    const-string v0, "Animation completed to collapsed state."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1431
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    goto :goto_0

    .line 1435
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1436
    iget-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1437
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doRevealAnimation()V
    .locals 5

    .prologue
    .line 1466
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 1467
    .local v0, h:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1468
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    .line 1469
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 1470
    int-to-float v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1471
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1474
    iget-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1475
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v0, "  mDisplayHeight="

    .line 1813
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1863
    :goto_0
    return-void

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1822
    :try_start_0
    const-string v1, "Current Status Bar state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTicking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimVel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimAccel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurAnimationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimLastTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimatingReveal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mViewDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOngoingTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOngoingItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLatestTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLatestItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNoNotificationsTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCloseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTickerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScrollView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotificationLinearLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1851
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarService$4;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1851
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getExpandedHeight()I
    .locals 2

    .prologue
    .line 2082
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v0, :cond_1

    .line 2083
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNewOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2090
    :goto_0
    return v0

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mSwitchButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 2090
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public glow(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const-wide/16 v3, 0x64

    const/4 v2, 0x4

    const-string v5, "StatusBarService"

    .line 779
    const-string v0, "StatusBarService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glow mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    packed-switch p1, :pswitch_data_0

    .line 795
    const-string v0, "StatusBarService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performGlowing illegal mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreenReverse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 799
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreenStatic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 801
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRedReverse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRedStatic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewGreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewRed:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewRed:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGlowViewGreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    :goto_0
    return-void

    .line 783
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreenReverse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreenStatic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 789
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 790
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRedReverse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationRedStatic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->glowAnimationGreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 1737
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotification(Landroid/os/IBinder;)V

    .line 1739
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    :goto_0
    return-void

    .line 1740
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method incrementAnim()V
    .locals 8

    .prologue
    .line 1453
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1454
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v3, v6, v7

    .line 1455
    .local v3, t:F
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1456
    .local v5, y:F
    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1457
    .local v4, v:F
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1458
    .local v0, a:F
    mul-float v6, v4, v3

    add-float/2addr v6, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1459
    mul-float v6, v0, v3

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1460
    iput-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1463
    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 1576
    const-string v15, "StatusBarService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Touch: rawY="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " event="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mDisabled="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    move v15, v0

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_0

    .line 1581
    const/4 v15, 0x0

    .line 1655
    :goto_0
    return v15

    .line 1584
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v9

    .line 1585
    .local v9, statusBarSize:I
    mul-int/lit8 v5, v9, 0x2

    .line 1586
    .local v5, hitSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    if-nez v15, :cond_6

    .line 1587
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    float-to-int v13, v15

    .line 1589
    .local v13, y:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    move v15, v0

    if-nez v15, :cond_4

    .line 1590
    sub-int v15, v9, v13

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    .line 1595
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    move v15, v0

    if-nez v15, :cond_1

    if-lt v13, v5, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    move v15, v0

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/view/Display;->getHeight()I

    move-result v15

    sub-int/2addr v15, v5

    if-le v13, v15, :cond_3

    .line 1601
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    float-to-int v11, v15

    .line 1602
    .local v11, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    move v4, v0

    .line 1603
    .local v4, edgeBorder:I
    if-lt v11, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v15

    sub-int/2addr v15, v4

    if-ge v11, v15, :cond_3

    .line 1604
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarViewPressed:Z

    .line 1605
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    move v15, v0

    if-nez v15, :cond_5

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1655
    .end local v4           #edgeBorder:I
    .end local v11           #x:I
    .end local v13           #y:I
    :cond_3
    :goto_3
    const/4 v15, 0x0

    goto :goto_0

    .line 1592
    .restart local v13       #y:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/statusbar/TrackingView;->getLocationOnScreen([I)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    move-object v15, v0

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    sub-int/2addr v15, v13

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    goto :goto_1

    .line 1605
    .restart local v4       #edgeBorder:I
    .restart local v11       #x:I
    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 1609
    .end local v4           #edgeBorder:I
    .end local v11           #x:I
    .end local v13           #y:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    move v15, v0

    if-eqz v15, :cond_3

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v15

    add-int v7, v9, v15

    .line 1612
    .local v7, minY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 1613
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    float-to-int v13, v15

    .line 1614
    .restart local v13       #y:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    move v15, v0

    if-eqz v15, :cond_7

    if-ge v13, v7, :cond_7

    .line 1620
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarViewPressed:Z

    move v15, v0

    if-eqz v15, :cond_3

    add-int/lit8 v15, v9, 0xf

    if-le v13, v15, :cond_3

    .line 1621
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarViewPressed:Z

    goto :goto_3

    .line 1617
    :cond_7
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    move v15, v0

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_4

    .line 1623
    .end local v13           #y:I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 1624
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarViewPressed:Z

    move v15, v0

    if-eqz v15, :cond_9

    .line 1625
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarViewPressed:Z

    .line 1628
    sget-boolean v15, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_TAP_EVENT:Z

    if-eqz v15, :cond_9

    .line 1629
    new-instance v6, Landroid/content/Intent;

    const-string v15, "com.android.server.status.StatusBarView.STATUS_BAR_TAP_EVENT"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1630
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1633
    .end local v6           #intent:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    const/16 v16, 0x3e8

    invoke-virtual/range {v15 .. v16}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v14

    .line 1636
    .local v14, yVel:F
    const/4 v15, 0x0

    cmpg-float v15, v14, v15

    if-gez v15, :cond_d

    const/4 v15, 0x1

    move v8, v15

    .line 1638
    .local v8, negative:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v12

    .line 1639
    .local v12, xVel:F
    const/4 v15, 0x0

    cmpg-float v15, v12, v15

    if-gez v15, :cond_a

    .line 1640
    neg-float v12, v12

    .line 1642
    :cond_a
    const/high16 v15, 0x4316

    cmpl-float v15, v12, v15

    if-lez v15, :cond_b

    .line 1643
    const/high16 v12, 0x4316

    .line 1646
    :cond_b
    float-to-double v15, v14

    move v0, v12

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v15

    double-to-float v10, v15

    .line 1647
    .local v10, vel:F
    if-eqz v8, :cond_c

    .line 1648
    neg-float v10, v10

    .line 1651
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    float-to-int v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v10

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto/16 :goto_3

    .line 1636
    .end local v8           #negative:Z
    .end local v10           #vel:F
    .end local v12           #xVel:F
    :cond_d
    const/4 v15, 0x0

    move v8, v15

    goto :goto_5
.end method

.method makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 26
    .parameter "notification"
    .parameter "parent"

    .prologue
    .line 821
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object/from16 v23, v0

    .line 822
    .local v23, n:Landroid/app/Notification;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    .line 823
    .local v24, remoteViews:Landroid/widget/RemoteViews;
    if-nez v24, :cond_0

    .line 824
    const/4 v4, 0x0

    .line 895
    .end local p2
    :goto_0
    return-object v4

    .line 828
    .restart local p2
    :cond_0
    const-string v4, "layout_inflater"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/LayoutInflater;

    .line 829
    .local v22, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030012

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v4

    move-object/from16 v2, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    .line 832
    .local v25, row:Landroid/view/View;
    const v4, 0x7f0a0060

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 834
    .local v16, content:Landroid/view/ViewGroup;
    const/4 v14, 0x0

    .line 835
    .local v14, bButtonAction:Z
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move-object v4, v0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/NotificationButtonAction;->isEnable()Z

    move-result v5

    if-ne v4, v5, :cond_1

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/systemui/statusbar/LatestItemView;

    move v4, v0

    if-eqz v4, :cond_1

    .line 837
    const-string v4, "StatusBarService"

    const-string v5, "Need to handle inside button action..."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v14, 0x1

    .line 840
    :cond_1
    if-eqz v14, :cond_4

    .line 841
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/systemui/statusbar/LatestItemView;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/LatestItemView;->setDispatchTouchEvent(Z)V

    .line 842
    const/high16 v4, 0x2

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 847
    :goto_1
    const/high16 v4, 0x6

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 850
    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v4, v0

    const/high16 v5, 0xfe

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 851
    const v4, -0xd6d3cf

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 852
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f02004a

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 855
    :cond_2
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v6, v0

    .line 856
    .local v6, contentIntent:Landroid/app/PendingIntent;
    if-eqz v6, :cond_3

    .line 857
    new-instance v4, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move v9, v0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    :cond_3
    const/16 v19, 0x0

    .line 862
    .local v19, expanded:Landroid/view/View;
    const/16 v18, 0x0

    .line 864
    .local v18, exception:Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 869
    :goto_2
    if-nez v19, :cond_5

    .line 870
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 871
    .local v21, ident:Ljava/lang/String;
    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t inflate view for notification "

    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 844
    .end local v18           #exception:Ljava/lang/Exception;
    .end local v19           #expanded:Landroid/view/View;
    .end local v21           #ident:Ljava/lang/String;
    .restart local p2
    :cond_4
    const/high16 v4, 0x6

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto/16 :goto_1

    .line 866
    .end local p2
    .restart local v6       #contentIntent:Landroid/app/PendingIntent;
    .restart local v18       #exception:Ljava/lang/Exception;
    .restart local v19       #expanded:Landroid/view/View;
    :catch_0
    move-exception v17

    .line 867
    .local v17, e:Ljava/lang/RuntimeException;
    move-object/from16 v18, v17

    goto :goto_2

    .line 874
    .end local v17           #e:Ljava/lang/RuntimeException;
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 875
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 878
    if-eqz v14, :cond_7

    .line 879
    const/16 v20, 0x0

    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    .local v20, i:I
    :goto_3
    const/4 v4, 0x3

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_7

    .line 880
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/NotificationButtonAction;->isEnable(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 882
    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set button["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] viewId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/NotificationButtonAction;->getViewId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PendingIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/NotificationButtonAction;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/NotificationButtonAction;->getViewId(I)I

    move-result v4

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 887
    .local v15, btnView:Landroid/view/View;
    if-eqz v15, :cond_6

    .line 888
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/NotificationButtonAction;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move v12, v0

    const/4 v13, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v15, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    .end local v15           #btnView:Landroid/view/View;
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 895
    .end local v20           #i:I
    :cond_7
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v25, v4, v5

    const/4 v5, 0x1

    aput-object v16, v4, v5

    const/4 v5, 0x2

    aput-object v19, v4, v5

    goto/16 :goto_0
.end method

.method onBarViewAttached()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 1871
    const/4 v5, 0x2

    .line 1872
    .local v5, pixelFormat:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/TrackingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1873
    .local v6, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 1874
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    .line 1877
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x20300

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1886
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1887
    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1888
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1889
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 1891
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1892
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const-string v12, "StatusBarService"

    .line 281
    const-string v8, "StatusBarService"

    const-string v8, "onCreate+"

    invoke-static {v12, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iput-object p0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    .line 283
    iput-object p0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 284
    new-instance v8, Lcom/android/systemui/statusbar/StatusBarStyleable;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    .line 285
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    .line 287
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 289
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    .line 290
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeStatusBarView(Landroid/content/Context;)V

    .line 293
    new-instance v3, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v3}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 294
    .local v3, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v5, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v6, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v8, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v8, p0, v3}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 297
    const-string v8, "statusbar"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 300
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v8, v9, v3, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v0

    .line 307
    .local v0, N:I
    const/4 v7, 0x0

    .line 308
    .local v7, viewIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 309
    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    .line 310
    .local v2, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v1, v7, v2}, Lcom/android/systemui/statusbar/StatusBarService;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 312
    add-int/lit8 v7, v7, 0x1

    .line 308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 317
    .end local v2           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 318
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v0, v8, :cond_2

    .line 319
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 320
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/StatusBarService;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 323
    :cond_2
    const-string v8, "StatusBarService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification list length mismatch: keys="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notifications="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->addStatusBarView()V

    .line 331
    new-instance v8, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconPolicy:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    .line 332
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->makeStatusBarViewExtra:Ljava/lang/Runnable;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.systemui.statusbar.StatusBarService.STATUS_BAR_READY"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v4, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateSkinResource()V

    .line 338
    const-string v8, "StatusBarService"

    const-string v8, "onCreate-"

    invoke-static {v12, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 301
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #viewIndex:I
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method onTrackingViewAttached()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1900
    const/4 v3, -0x3

    .line 1902
    .local v3, pixelFormat:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1903
    .local v0, disph:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1904
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1905
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1906
    const/4 v4, 0x0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1907
    neg-int v4, v0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1908
    const/16 v4, 0x7de

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1909
    const/16 v4, 0x1328

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1914
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1915
    const/16 v4, 0x37

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1916
    const-string v4, "StatusBarExpanded"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1917
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1918
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setFormat(I)V

    .line 1919
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 1921
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1922
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1925
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1926
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1927
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1928
    .local v1, hack:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1929
    return-void
.end method

.method performCollapse()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1381
    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performCollapse: mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTicking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1388
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    .line 1389
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1392
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 1396
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1397
    const/high16 v0, 0x10a

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    .line 1399
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1400
    const v0, 0x10a0001

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1403
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 1406
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 1409
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkingSleep(Z)V

    goto :goto_0
.end method

.method performDisableActions(I)V
    .locals 5
    .parameter "net"

    .prologue
    const-string v4, "StatusBarService"

    .line 2119
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 2120
    .local v1, old:I
    xor-int v0, p1, v1

    .line 2121
    .local v0, diff:I
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 2124
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 2125
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 2126
    const-string v2, "StatusBarService"

    const-string v2, "DISABLE_EXPAND: yes"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 2130
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    .line 2131
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    .line 2132
    const-string v2, "StatusBarService"

    const-string v2, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v2, :cond_2

    .line 2134
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/IconMerger;->setVisibility(I)V

    .line 2135
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    .line 2153
    :cond_1
    :goto_0
    return-void

    .line 2137
    :cond_2
    const/4 v2, 0x0

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 2140
    :cond_3
    const-string v2, "StatusBarService"

    const-string v2, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v2, :cond_1

    .line 2142
    const/4 v2, 0x1

    const/high16 v3, 0x10a

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 2145
    :cond_4
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    .line 2146
    const-string v2, "StatusBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISABLE_NOTIFICATION_TICKER: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_5

    const-string v3, "yes"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v2, :cond_1

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_1

    .line 2150
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    goto :goto_0

    .line 2146
    :cond_5
    const-string v3, "no"

    goto :goto_1
.end method

.method performExpand()V
    .locals 3

    .prologue
    .line 1360
    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performExpand: mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 1369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    .line 1370
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1373
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPlmnLabel:Lcom/htc/widget/HtcBlinkingTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkingSleep(Z)V

    goto :goto_0
.end method

.method performFling(IFZ)V
    .locals 9
    .parameter "y"
    .parameter "vel"
    .parameter "always"

    .prologue
    const/high16 v8, 0x44fa

    const/high16 v3, 0x4348

    const/high16 v7, -0x3b06

    const/high16 v6, -0x3cb8

    const/4 v5, 0x0

    .line 1515
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1516
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    .line 1518
    int-to-float v2, p1

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1519
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1523
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v2, :cond_3

    .line 1524
    if-nez p3, :cond_2

    cmpl-float v2, p2, v3

    if-gtz v2, :cond_0

    int-to-float v2, p1

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    const/high16 v4, 0x41c8

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    cmpl-float v2, p2, v6

    if-lez v2, :cond_2

    .line 1529
    :cond_0
    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1530
    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    .line 1531
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1564
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1565
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1566
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1567
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1568
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1569
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1570
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1571
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->stopTracking()V

    .line 1572
    return-void

    .line 1536
    .end local v0           #now:J
    :cond_2
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1537
    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    .line 1538
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 1542
    :cond_3
    if-nez p3, :cond_4

    cmpl-float v2, p2, v3

    if-gtz v2, :cond_4

    int-to-float v2, p1

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    cmpl-float v2, p2, v6

    if-lez v2, :cond_5

    .line 1547
    :cond_4
    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1548
    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    .line 1549
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 1555
    :cond_5
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1556
    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    .line 1557
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0
.end method

.method postStartTracing()V
    .locals 4

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2440
    return-void
.end method

.method prepareTracking(IZ)V
    .locals 7
    .parameter "y"
    .parameter "opening"

    .prologue
    const/16 v6, 0x3e9

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    .line 1483
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    .line 1484
    .local v2, vm:Ldalvik/system/VMRuntime;
    invoke-virtual {v2, v5}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 1486
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    .line 1487
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1488
    if-eqz p2, :cond_0

    .line 1489
    const/high16 v3, 0x44fa

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1490
    const/high16 v3, 0x4348

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1491
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1492
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1493
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1494
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1495
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1496
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1497
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1498
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1499
    const-wide/16 v3, 0x10

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1500
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1501
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1503
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    .line 1512
    .end local v0           #now:J
    :goto_0
    return-void

    .line 1506
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v3, :cond_1

    .line 1507
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1508
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1510
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 3
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 639
    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeIcon slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " viewIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 642
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 4
    .parameter "key"

    .prologue
    const-string v3, "StatusBarService"

    .line 759
    const-string v1, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNotification key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    .line 762
    .local v0, old:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v0, :cond_0

    .line 764
    const-string v1, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNotification notification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fullScreenIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 773
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 775
    :cond_0
    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 1087
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 1089
    .local v1, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v1, :cond_0

    .line 1090
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 1091
    if-nez v1, :cond_0

    .line 1092
    const-string v2, "StatusBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotification for unknown key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v2, 0x0

    .line 1115
    :goto_0
    return-object v2

    .line 1097
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1099
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1111
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v2, v2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->flags:I

    const/high16 v3, 0xfe

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v0, v4

    .line 1112
    .local v0, IsOnTopEvent:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 1113
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOnTopItemCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOnTopItemCount:I

    .line 1115
    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0

    .line 1111
    .end local v0           #IsOnTopEvent:Z
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method setDateViewVisibility(ZI)V
    .locals 2
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    .line 1937
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->setVisibility(I)V

    .line 1939
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1945
    return-void

    .line 1937
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method setNetworkVisibility(Z)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2256
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->keyguardIsShowing()Z

    move-result v1

    move v0, v1

    .line 2257
    .local v0, bLockScreen:Z
    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 2258
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNetworkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2259
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNetworkTextViewVisible:I

    .line 2264
    :goto_1
    return-void

    .end local v0           #bLockScreen:Z
    :cond_0
    move v0, v2

    .line 2256
    goto :goto_0

    .line 2261
    .restart local v0       #bLockScreen:Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNetworkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2262
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNetworkTextViewVisible:I

    goto :goto_1
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 1948
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/IconMerger;->getVisibility()I

    move-result v0

    .line 1949
    .local v0, old:I
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    move v1, v2

    .line 1950
    .local v1, v:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 1951
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/IconMerger;->setVisibility(I)V

    .line 1953
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1956
    :cond_0
    return-void

    .line 1949
    .end local v1           #v:I
    :cond_1
    const/4 v2, 0x4

    move v1, v2

    goto :goto_0
.end method

.method stopTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1443
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    .line 1444
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1445
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1448
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 1449
    .local v0, vm:Ldalvik/system/VMRuntime;
    invoke-virtual {v0, v2}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 1450
    return-void
.end method

.method updateExpandedHeight()V
    .locals 2

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2096
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2098
    :cond_0
    return-void
.end method

.method updateExpandedViewPos(I)V
    .locals 14
    .parameter "expandedPosition"

    .prologue
    const/4 v13, 0x0

    const/16 v12, -0x2710

    const/4 v11, 0x1

    .line 1966
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v3

    .line 1967
    .local v3, h:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1971
    .local v2, disph:I
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v8, :cond_2

    .line 1972
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    if-eqz v8, :cond_0

    .line 1973
    neg-int v8, v2

    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1974
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_0

    .line 1975
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1976
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_1

    .line 1980
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1981
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2079
    :cond_1
    :goto_0
    return-void

    .line 1988
    :cond_2
    const/16 v8, -0x2711

    if-ne p1, v8, :cond_9

    .line 1989
    move v6, v3

    .line 2002
    .local v6, pos:I
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 2003
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v9, v2, v3

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2004
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2006
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_6

    .line 2007
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v8, :cond_d

    .line 2008
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mSwitchButtons:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mSwitchButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_c

    .line 2009
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mSwitchButtons:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 2015
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    aget v0, v8, v11

    .line 2017
    .local v0, closePos:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2018
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v1, v8, v9

    .line 2020
    .local v1, contentsBottom:I
    if-eq p1, v12, :cond_6

    .line 2021
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v10, v0

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2023
    move v4, v3

    .line 2024
    .local v4, max:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v8, v4, :cond_3

    .line 2025
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2027
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 2028
    .local v5, min:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v8, v5, :cond_4

    .line 2029
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2032
    :cond_4
    iget v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v3, :cond_e

    move v7, v11

    .line 2033
    .local v7, visible:Z
    :goto_3
    if-nez v7, :cond_5

    .line 2036
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2038
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2041
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 2054
    .end local v0           #closePos:I
    .end local v1           #contentsBottom:I
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v7           #visible:Z
    :cond_6
    if-nez p1, :cond_1

    .line 2061
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    if-eqz v8, :cond_7

    .line 2062
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mRecentApps:Lcom/android/systemui/statusbar/RecentApps;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/RecentApps;->scrollToZero()V

    .line 2065
    :cond_7
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v8, :cond_8

    .line 2066
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/preference/QuickSettings;->scrollToZero()V

    .line 2067
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/preference/QuickSettings;->onStop()V

    .line 2070
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 2072
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedPage:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2074
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setVisibility(I)V

    .line 2076
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandViewButton:Landroid/widget/TextView;

    const v9, 0x7f0201a6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2077
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettingButton:Landroid/widget/TextView;

    const v9, 0x7f0201a5

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1991
    .end local v6           #pos:I
    :cond_9
    if-ne p1, v12, :cond_a

    .line 1992
    iget v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .restart local v6       #pos:I
    goto/16 :goto_1

    .line 1995
    .end local v6           #pos:I
    :cond_a
    if-gt p1, v2, :cond_b

    .line 1996
    move v6, p1

    .line 2000
    .restart local v6       #pos:I
    :goto_4
    sub-int v8, v2, v3

    sub-int/2addr v6, v8

    goto/16 :goto_1

    .line 1998
    .end local v6           #pos:I
    :cond_b
    move v6, v2

    .restart local v6       #pos:I
    goto :goto_4

    .line 2011
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/CloseDragHandle;->getLocationInWindow([I)V

    goto/16 :goto_2

    .line 2013
    :cond_d
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/CloseDragHandle;->getLocationInWindow([I)V

    goto/16 :goto_2

    .restart local v0       #closePos:I
    .restart local v1       #contentsBottom:I
    .restart local v4       #max:I
    .restart local v5       #min:I
    :cond_e
    move v7, v13

    .line 2032
    goto :goto_3
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 4
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 612
    const-string v1, "StatusBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIcon slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " viewIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 616
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 635
    return-void
.end method

.method updateNetworkTickerName(Ljava/lang/String;)V
    .locals 1
    .parameter "plmn"

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNetworkTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2253
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 19
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v16

    .line 675
    .local v16, oldIndex:I
    if-ltz v16, :cond_2

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v17, v0

    .line 685
    .local v17, oldList:Lcom/android/systemui/statusbar/NotificationData;
    :goto_0
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v15

    .line 686
    .local v15, oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v18, v0

    .line 687
    .local v18, oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v14, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 689
    .local v14, oldContentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v11, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 692
    .local v11, contentView:Landroid/widget/RemoteViews;
    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", when="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ongoing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contentView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", when="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ongoing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contentView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v5

    if-ne v4, v5, :cond_6

    iget-object v4, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v4, :cond_6

    if-eqz v11, :cond_6

    if-eqz v14, :cond_6

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 711
    const-string v4, "StatusBarService"

    const-string v5, "reusing notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    move-object/from16 v0, p2

    move-object v1, v15

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 715
    :try_start_0
    iget-object v4, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 716
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget v4, v4, Landroid/app/Notification;->flags:I

    const/high16 v5, 0xfe

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 717
    iget-object v4, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    const v5, -0xd6d3cf

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 720
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v6, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 721
    .local v6, contentIntent:Landroid/app/PendingIntent;
    if-eqz v6, :cond_1

    .line 722
    iget-object v12, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move v9, v0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v12, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    :cond_1
    new-instance v13, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v5, v0

    iget v5, v5, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    iget v6, v6, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v7, v0

    iget v7, v7, Landroid/app/Notification;->number:I

    invoke-direct {v13, v4, v5, v6, v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    .line 729
    .local v13, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v4, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v13}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t update icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v11           #contentView:Landroid/widget/RemoteViews;
    .end local v13           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v14           #oldContentView:Landroid/widget/RemoteViews;
    .end local v15           #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v17           #oldList:Lcom/android/systemui/statusbar/NotificationData;
    .end local v18           #oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    :goto_1
    return-void

    .line 678
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v16

    .line 679
    if-gez v16, :cond_3

    .line 680
    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNotification for unknown key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 683
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v17, v0

    .restart local v17       #oldList:Lcom/android/systemui/statusbar/NotificationData;
    goto/16 :goto_0

    .line 734
    .restart local v11       #contentView:Landroid/widget/RemoteViews;
    .restart local v14       #oldContentView:Landroid/widget/RemoteViews;
    .restart local v15       #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v18       #oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 736
    .local v12, e:Ljava/lang/RuntimeException;
    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t reapply views for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 738
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 747
    .end local v12           #e:Ljava/lang/RuntimeException;
    :cond_4
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 754
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 755
    const/16 v4, -0x2710

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto/16 :goto_1

    .line 741
    :cond_6
    const-string v4, "StatusBarService"

    const-string v5, "not reusing notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 743
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto :goto_2
.end method

.method updateResources()V
    .locals 3

    .prologue
    .line 2404
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2406
    .local v0, res:Landroid/content/res/Resources;
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v1, :cond_0

    .line 2407
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateSkinResource()V

    .line 2415
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2417
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2418
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2419
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2421
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 2422
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/QuickSettings;->updateResources()V

    .line 2424
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandViewButton:Landroid/widget/TextView;

    const v2, 0x7f080016

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2426
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQuickSettingButton:Landroid/widget/TextView;

    const v2, 0x7f080014

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2432
    return-void
.end method

.method vibrate()V
    .locals 3

    .prologue
    .line 2443
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2444
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2445
    return-void
.end method

.method public viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .parameter "v"

    .prologue
    const-string v2, ","

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 2109
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    .line 2111
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    :cond_0
    :goto_0
    return-void

    .line 2112
    :catch_0
    move-exception v0

    goto :goto_0
.end method
