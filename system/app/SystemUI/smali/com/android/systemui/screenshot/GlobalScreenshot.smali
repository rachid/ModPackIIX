.class Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# static fields
.field private static final BACKGROUND_ALPHA:F = 0.5f

.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static DEBUG:Z = false

.field private static final SCREENSHOT_DROP_IN_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_IN_MIN_SCALE:F = 0.725f

.field private static final SCREENSHOT_DROP_OUT_DELAY:I = 0x1f4

.field private static final SCREENSHOT_DROP_OUT_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE:F = 0.45f

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE_OFFSET:F = 0.0f

.field private static final SCREENSHOT_DROP_OUT_SCALE_DURATION:I = 0x172

.field private static final SCREENSHOT_FAST_DROP_OUT_DURATION:I = 0x140

.field private static final SCREENSHOT_FAST_DROP_OUT_MIN_SCALE:F = 0.6f

.field private static final SCREENSHOT_FLASH_TO_PEAK_DURATION:I = 0x82

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final SCREENSHOT_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GlobalScreenshot"

.field private static mEndAnimation:I


# instance fields
.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Landroid/hardware/CameraSound;

.field private mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorDuration:J

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 353
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const-wide/16 v4, 0x64

    iput-wide v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibratorDuration:J

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 355
    .local v9, r:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 356
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 359
    .local v8, layoutInflater:Landroid/view/LayoutInflater;
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "eng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    sput-boolean v6, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    .line 364
    :goto_0
    sget-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GlobalScreenshot"

    const-string v2, "GlobalScreenshot start!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 367
    const v0, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f0f0008

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 369
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f0f0009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 370
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f0f000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 371
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 381
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7df

    const v6, 0x1080500

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 389
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 391
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 393
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 394
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 395
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 398
    const v0, 0x1050006

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 401
    sget-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlobalScreenshot mNotificationIconSize is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1
    const v0, 0x7f0b001b

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    .line 405
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    .line 408
    new-instance v0, Landroid/hardware/CameraSound;

    invoke-direct {v0}, Landroid/hardware/CameraSound;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/hardware/CameraSound;

    .line 409
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    .line 410
    return-void

    .line 362
    :cond_2
    sput-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 300
    sget v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mEndAnimation:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 300
    sget v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mEndAnimation:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mEndAnimation:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    .prologue
    .line 739
    const v3, 0x3e9aca6b

    .line 741
    .local v3, flashPeakDurationPct:F
    const v2, 0x3f1aca6b

    .line 742
    .local v2, flashDurationPct:F
    sget-boolean v5, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "GlobalScreenshot"

    const-string v6, "GlobalScreenshot createScreenshotDropInAnimation() flashPeakDurationPct = 0.30232558, flashDurationPct = 0.60465115"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 754
    .local v1, flashAlphaInterpolator:Landroid/view/animation/Interpolator;
    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 764
    .local v4, scaleInterpolator:Landroid/view/animation/Interpolator;
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 765
    .local v0, anim:Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x1ae

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 766
    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 785
    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$9;

    invoke-direct {v5, p0, v4, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 802
    return-object v0

    .line 764
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .locals 11
    .parameter "w"
    .parameter "h"
    .parameter "statusBarVisible"
    .parameter "navBarVisible"

    .prologue
    const v10, 0x3ee66666

    const/high16 v9, 0x4000

    .line 806
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 807
    .local v0, anim:Landroid/animation/ValueAnimator;
    const-wide/16 v7, 0x1f4

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 808
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 817
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 819
    :cond_0
    const-wide/16 v7, 0x140

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 820
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$11;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 875
    :goto_0
    return-object v0

    .line 835
    :cond_1
    const v5, 0x3f5c4771

    .line 837
    .local v5, scaleDurationPct:F
    new-instance v6, Lcom/android/systemui/screenshot/GlobalScreenshot$12;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 849
    .local v6, scaleInterpolator:Landroid/view/animation/Interpolator;
    int-to-float v7, p1

    iget v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    div-float v3, v7, v9

    .line 850
    .local v3, halfScreenWidth:F
    int-to-float v7, p2

    iget v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    div-float v2, v7, v9

    .line 851
    .local v2, halfScreenHeight:F
    const/4 v4, 0x0

    .line 852
    .local v4, offsetPct:F
    new-instance v1, Landroid/graphics/PointF;

    neg-float v7, v3

    mul-float v8, v10, v3

    add-float/2addr v7, v8

    neg-float v8, v2

    mul-float v9, v10, v2

    add-float/2addr v8, v9

    invoke-direct {v1, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 855
    .local v1, finalPos:Landroid/graphics/PointF;
    sget-boolean v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "GlobalScreenshot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GlobalScreenshot halfScreenWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", halfScreenHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_2
    const-wide/16 v7, 0x1ae

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 859
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$13;

    invoke-direct {v7, p0, v6, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$13;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 806
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 430
    packed-switch p1, :pswitch_data_0

    .line 438
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 432
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 434
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 436
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isAvailableCapacity()Z
    .locals 17

    .prologue
    .line 568
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 569
    .local v8, extStoragePath:Ljava/io/File;
    if-eqz v8, :cond_3

    .line 572
    :try_start_0
    new-instance v9, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .local v9, stat:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v5, v14

    .line 580
    .local v5, blockSize:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v14

    int-to-long v10, v14

    .line 581
    .local v10, totalBlocks:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v14

    int-to-long v1, v14

    .line 585
    .local v1, availableBlocks:J
    mul-long v12, v10, v5

    .line 586
    .local v12, totalSpace:J
    mul-long v3, v1, v5

    .line 588
    .local v3, availableSpace:J
    sget-boolean v14, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 589
    const-string v14, "GlobalScreenshot"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GlobalScreenshot availableSpace = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isRamBootMode()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 593
    const-string v14, "GlobalScreenshot"

    const-string v15, "GlobalScreenshot [RAM Boot Mode]"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const v14, 0x7f090034

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 595
    const/4 v14, 0x0

    .line 605
    .end local v1           #availableBlocks:J
    .end local v3           #availableSpace:J
    .end local v5           #blockSize:J
    .end local v9           #stat:Landroid/os/StatFs;
    .end local v10           #totalBlocks:J
    .end local v12           #totalSpace:J
    :goto_0
    return v14

    .line 573
    :catch_0
    move-exception v7

    .line 574
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v14, "ScreenCapture"

    const-string v15, "isAvailableCapacity"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    const v14, 0x7f090034

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 576
    const/4 v14, 0x0

    goto :goto_0

    .line 596
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #availableBlocks:J
    .restart local v3       #availableSpace:J
    .restart local v5       #blockSize:J
    .restart local v9       #stat:Landroid/os/StatFs;
    .restart local v10       #totalBlocks:J
    .restart local v12       #totalSpace:J
    :cond_1
    const-wide/16 v14, 0x2800

    cmp-long v14, v3, v14

    if-gez v14, :cond_2

    .line 597
    const-string v14, "GlobalScreenshot"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GlobalScreenshot available Space = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const v14, 0x7f0900c4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 599
    const/4 v14, 0x0

    goto :goto_0

    .line 601
    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    .line 604
    .end local v1           #availableBlocks:J
    .end local v3           #availableSpace:J
    .end local v5           #blockSize:J
    .end local v9           #stat:Landroid/os/StatFs;
    .end local v10           #totalBlocks:J
    .end local v12           #totalSpace:J
    :cond_3
    const v14, 0x7f090034

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 605
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private isRamBootMode()Z
    .locals 6

    .prologue
    .line 552
    const-string v1, "trigger_restart_min_framework"

    .line 553
    .local v1, ENCRYPTING_STATE:Ljava/lang/String;
    const-string v0, "1"

    .line 555
    .local v0, ENCRYPTED_STATE:Ljava/lang/String;
    const-string v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, cryptState:Ljava/lang/String;
    const/4 v3, 0x0

    .line 557
    .local v3, onlyCore:Z
    const-string v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 558
    const-string v4, "GlobalScreenshot"

    const-string v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v3, 0x1

    .line 564
    :cond_0
    :goto_0
    return v3

    .line 560
    :cond_1
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 561
    const-string v4, "GlobalScreenshot"

    const-string v5, "Device encrypted - only parsing core apps"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 6
    .parameter "context"
    .parameter "nManager"

    .prologue
    const v4, 0x7f090034

    const/16 v5, 0x315

    .line 879
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 880
    .local v1, r:Landroid/content/res/Resources;
    sget-boolean v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GlobalScreenshot"

    const-string v3, "GlobalScreenshot notifyScreenshotError is start!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f090035

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f020067

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 892
    .local v0, n:Landroid/app/Notification;
    invoke-virtual {p1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 893
    invoke-virtual {p1, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 894
    return-void
.end method

.method private playCaptureSound()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 713
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 714
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 715
    .local v2, mActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v2, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 716
    .local v3, runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 718
    .local v4, topActivity:Landroid/content/ComponentName;
    sget-boolean v5, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "GlobalScreenshot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "topActivity Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 721
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/hardware/CameraSound;

    invoke-virtual {v5, v8}, Landroid/hardware/CameraSound;->playSound(I)V

    .line 736
    .end local v2           #mActivityManager:Landroid/app/ActivityManager;
    .end local v3           #runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #topActivity:Landroid/content/ComponentName;
    :cond_1
    :goto_0
    return-void

    .line 727
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 728
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 730
    .local v1, extraRingerMode:I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 732
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/hardware/CameraSound;

    invoke-virtual {v5, v8}, Landroid/hardware/CameraSound;->playSound(I)V

    goto :goto_0

    .line 733
    :cond_3
    if-ne v1, v7, :cond_1

    .line 734
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    iget-wide v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibratorDuration:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V
    .locals 5
    .parameter "finisher"

    .prologue
    .line 416
    sget-boolean v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GlobalScreenshot"

    const-string v2, "GlobalScreenshot saveScreenshotInWorkerThread start!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    .line 418
    .local v0, data:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 419
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 420
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 421
    iput-object p1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 422
    new-instance v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x315

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 424
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 611
    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZ)V
    .locals 5
    .parameter "finisher"
    .parameter "w"
    .parameter "h"
    .parameter "statusBarVisible"
    .parameter "navBarVisible"

    .prologue
    .line 675
    sget-boolean v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GlobalScreenshot"

    const-string v3, "GlobalScreenshot startAnimation start!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 678
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 681
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 682
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 685
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 687
    .local v0, screenshotDropInAnim:Landroid/animation/ValueAnimator;
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 689
    .local v1, screenshotFadeOutAnim:Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 690
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 691
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 699
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 709
    return-void
.end method

.method private startAnimationForPalmSweep(Ljava/lang/Runnable;I)V
    .locals 8
    .parameter "finisher"
    .parameter "direction"

    .prologue
    const/4 v1, -0x1

    .line 614
    sget-boolean v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GlobalScreenshot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlobalScreenshot startAnimationForPalmSweep start!!! and direction is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    new-instance v2, Lcom/android/systemui/screenshot/CaptureEffectView;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/screenshot/CaptureEffectView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

    .line 616
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 617
    .local v6, frame:Landroid/widget/FrameLayout;
    move v7, p2

    .line 619
    .local v7, mDirection:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/4 v4, 0x0

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 627
    .local v0, mEffectViewParams:Landroid/view/WindowManager$LayoutParams;
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 628
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 630
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 631
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 635
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 637
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v2, p0, p1, v6}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/CaptureEffectView;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;)V

    .line 654
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v2, p0, v7}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 668
    return-void
.end method


# virtual methods
.method takeScreenshot(Ljava/lang/Runnable;I)V
    .locals 13
    .parameter "finisher"
    .parameter "direction"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4000

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 445
    sget-boolean v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "GlobalScreenshot"

    const-string v8, "GlobalScreenshot palm sweep takeScreenshot start!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    sput v6, Lcom/android/systemui/screenshot/GlobalScreenshot;->mEndAnimation:I

    .line 449
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 450
    const/4 v7, 0x2

    new-array v2, v7, [F

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v2, v6

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v2, v5

    .line 451
    .local v2, dims:[F
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v1

    .line 452
    .local v1, degrees:F
    cmpl-float v7, v1, v10

    if-lez v7, :cond_2

    move v3, v5

    .line 453
    .local v3, requiresRotation:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 455
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 456
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 457
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 458
    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v6

    .line 459
    aget v7, v2, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v5

    .line 463
    :cond_1
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 464
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_3

    .line 465
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v5, v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 466
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 493
    :goto_1
    return-void

    .end local v3           #requiresRotation:Z
    :cond_2
    move v3, v6

    .line 452
    goto :goto_0

    .line 470
    .restart local v3       #requiresRotation:Z
    :cond_3
    if-eqz v3, :cond_4

    .line 472
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 474
    .local v4, ss:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 475
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 476
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 477
    aget v7, v2, v6

    neg-float v7, v7

    div-float/2addr v7, v11

    aget v5, v2, v5

    neg-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v0, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 478
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v10, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 479
    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 484
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v4           #ss:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 485
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 486
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAvailableCapacity()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 487
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimationForPalmSweep(Ljava/lang/Runnable;I)V

    .line 488
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 490
    :cond_5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZ)V
    .locals 11
    .parameter "finisher"
    .parameter "statusBarVisible"
    .parameter "navBarVisible"

    .prologue
    .line 500
    sget-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GlobalScreenshot"

    const-string v1, "GlobalScreenshot hard key takeScreenshot start!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 504
    const/4 v0, 0x2

    new-array v8, v0, [F

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    aput v1, v8, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    aput v1, v8, v0

    .line 505
    .local v8, dims:[F
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v7

    .line 506
    .local v7, degrees:F
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_2

    const/4 v9, 0x1

    .line 507
    .local v9, requiresRotation:Z
    :goto_0
    if-eqz v9, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 511
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 512
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v8, v0

    .line 513
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v8, v0

    .line 515
    :cond_1
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 518
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 520
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 549
    :goto_1
    return-void

    .line 506
    .end local v9           #requiresRotation:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 524
    .restart local v9       #requiresRotation:Z
    :cond_3
    if-eqz v9, :cond_4

    .line 526
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 528
    .local v10, ss:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 529
    .local v6, c:Landroid/graphics/Canvas;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 530
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 531
    const/4 v0, 0x0

    aget v0, v8, v0

    neg-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v8, v1

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 533
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 534
    iput-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 538
    .end local v6           #c:Landroid/graphics/Canvas;
    .end local v10           #ss:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 540
    sget-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableCapacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAvailableCapacity()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAvailableCapacity()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 543
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V

    goto/16 :goto_1

    .line 546
    :cond_6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1
.end method
