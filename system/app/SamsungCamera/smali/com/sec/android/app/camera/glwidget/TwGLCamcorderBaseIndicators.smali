.class public Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCamcorderBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BATTERY_INDICATOR_VISIBLE_LEVEL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FOCUS_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FOCUS_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GORUP_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_LANDSCAPE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_PORTRAIT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_TEXT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PERCENTAGE_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final REMAIN_COUNTER_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final REMAIN_TIME_VISIBLE_RATIO:F = 0.0f

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

#the value of this static final field might be set in the static constructor
.field private static final SIDE_MENU_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SPEED_REC_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLCamcorderBaseIndicators"


# instance fields
.field private final MAX_RECORDING_TIME:I

.field private final SECONDS_IN_AN_HOUR:I

.field private final SECONDS_IN_A_DAY:I

.field private mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

.field private mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

.field private mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

.field private mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

.field private mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

.field private mHMS:Ljava/lang/String;

.field private mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRemainTime:I

.field private mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

.field private mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

.field private mTotalStorage:J

.field private mTouchFocusRectCenterX:I

.field private mTouchFocusRectCenterY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const v0, 0x7f06006b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    .line 28
    const v0, 0x7f06006c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    .line 29
    const v0, 0x7f060089

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    .line 31
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0600a9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    .line 32
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    const v1, 0x7f0600ac

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    .line 33
    const v0, 0x7f0600aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    .line 34
    const v0, 0x7f0600ae

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    .line 35
    const v0, 0x7f0600af

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    .line 36
    const v0, 0x7f08001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_TEXT_SIZE:I

    .line 37
    const v0, 0x7f0600b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    .line 38
    const v0, 0x7f0600b3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->PERCENTAGE_WIDTH:I

    .line 40
    const v0, 0x7f060012

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SPEED_REC_WIDTH:I

    .line 42
    const v0, 0x7f080002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->BATTERY_INDICATOR_VISIBLE_LEVEL:I

    .line 43
    const v0, 0x7f080003

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->REMAIN_TIME_VISIBLE_RATIO:F

    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_X:I

    .line 46
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    const/4 v7, 0x1

    .line 71
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 49
    const/16 v0, 0xe10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SECONDS_IN_AN_HOUR:I

    .line 50
    const v0, 0x15180

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SECONDS_IN_A_DAY:I

    .line 51
    const v0, 0x1517f

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->MAX_RECORDING_TIME:I

    .line 62
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    .line 66
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_X:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterX:I

    .line 67
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterY:I

    .line 73
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setCaptureEnabled(Z)V

    .line 74
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setTouchHandled(Z)V

    .line 76
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->init()V

    .line 80
    return-void
.end method

.method private hmsConvert(I)V
    .locals 9
    .parameter "seconds"

    .prologue
    const/16 v8, 0xa

    .line 284
    const v6, 0x1517f

    if-le p1, v6, :cond_0

    .line 285
    const p1, 0x1517f

    .line 288
    :cond_0
    rem-int/lit8 v4, p1, 0x3c

    .line 289
    .local v4, sec:I
    div-int/lit16 v0, p1, 0xe10

    .line 290
    .local v0, hr:I
    div-int/lit8 v6, p1, 0x3c

    mul-int/lit8 v7, v0, 0x3c

    sub-int v2, v6, v7

    .line 293
    .local v2, min:I
    if-ge v4, v8, :cond_1

    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, secString:Ljava/lang/String;
    :goto_0
    if-ge v2, v8, :cond_2

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, minString:Ljava/lang/String;
    :goto_1
    if-ge v0, v8, :cond_3

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, hrString:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    .line 312
    return-void

    .line 296
    .end local v1           #hrString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v5           #secString:Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #secString:Ljava/lang/String;
    goto :goto_0

    .line 302
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #minString:Ljava/lang/String;
    goto :goto_1

    .line 308
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #hrString:Ljava/lang/String;
    goto :goto_2
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    .line 85
    .local v1, glContext:Lcom/sec/android/glview/TwGLContext;
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 86
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v6, 0x7f0b0004

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 101
    new-instance v0, Lcom/sec/android/glview/TwGLIndicator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLIndicator;->setRotatable(Z)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    int-to-float v3, v3

    invoke-virtual {v0, v7, v2, v3}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v11, v2, v3}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getRemainStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTime:I

    .line 108
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hmsConvert(I)V

    .line 109
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_TEXT_SIZE:I

    int-to-float v7, v2

    move v2, v8

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v11, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 113
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CheckMemory;->getTotalStorage(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTotalStorage:J

    .line 115
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setVisibility(I)V

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->PERCENTAGE_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v2

    const-string v6, ""

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_TEXT_SIZE:I

    int-to-float v7, v2

    move v2, v8

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v11, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 121
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBatteryLevel()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isBatteryCharging()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setBatteryLevel(IZ)V

    .line 132
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTime:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRemainTime(I)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->initGPSIndicator()V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected ChangeGPS(I)V
    .locals 3
    .parameter "modeid"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 413
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 415
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 418
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 149
    return-void
.end method

.method public getTouchFocusRectCenterX()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterX:I

    return v0
.end method

.method public getTouchFocusRectCenterY()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterY:I

    return v0
.end method

.method public getTouchRectHeight()F
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getYDelta()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTouchRectWidth()F
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getXDelta()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public hideFocusIndicator()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public initGPSIndicator()V
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_0

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 406
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->ChangeGPS(I)V

    goto :goto_0
.end method

.method public isFocusIndicatorShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-nez v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 153
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 175
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 181
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    goto :goto_0

    .line 177
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 184
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->setStorage(I)V

    .line 187
    :cond_1
    invoke-static {p2}, Lcom/sec/android/app/camera/CheckMemory;->getTotalStorage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTotalStorage:J

    goto :goto_0

    .line 190
    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->ChangeGPS(I)V

    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x68 -> :sswitch_0
        0x75 -> :sswitch_2
        0x7b -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 168
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 169
    return-void
.end method

.method public resetPosIndicator()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetPosIndicator()V

    .line 268
    :cond_0
    return-void
.end method

.method public resetTouchFocusRectView()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->reset()V

    .line 257
    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 161
    return-void
.end method

.method public setBatteryLevel(IZ)V
    .locals 7
    .parameter "level"
    .parameter "ischarging"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 358
    if-eqz p2, :cond_0

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 400
    :goto_0
    return-void

    .line 364
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->BATTERY_INDICATOR_VISIBLE_LEVEL:I

    if-gt p1, v1, :cond_1

    if-nez p1, :cond_2

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getDisplayBatteryPercentageEnabled()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 376
    :cond_3
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->BATTERY_INDICATOR_VISIBLE_LEVEL:I

    div-int/lit8 v0, v1, 0x5

    .line 377
    .local v0, factor:I
    div-int v1, p1, v0

    packed-switch v1, :pswitch_data_0

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 379
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 382
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 385
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 391
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 394
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setConnectingStateGPS(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 428
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 430
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 433
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFocusIndicator(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusIndicator(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setGuideLineSize(Landroid/view/View;)V

    .line 281
    :cond_0
    return-void
.end method

.method public setRecordingLayout(Z)V
    .locals 6
    .parameter "isRecording"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 332
    if-eqz p1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 346
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLIndicator;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLIndicator;->setOrientation(I)V

    .line 347
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage()J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTotalStorage:J

    long-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->REMAIN_TIME_VISIBLE_RATIO:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setRemainTime(I)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 316
    const-string v0, "TwGLCamcorderBaseIndicators"

    const-string v1, "failed to set remain time - activity null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage()J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTotalStorage:J

    long-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->REMAIN_TIME_VISIBLE_RATIO:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 326
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTime:I

    .line 327
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hmsConvert(I)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_1
.end method

.method public setTouchFocusRectCenter(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 230
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterX:I

    .line 231
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterY:I

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(II)V

    .line 237
    :cond_1
    return-void
.end method

.method public showFocusIndicator()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator(Z)V

    .line 211
    return-void
.end method

.method public showFocusIndicator(Z)V
    .locals 2
    .parameter "resetPosition"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 221
    :goto_0
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetPosIndicator()V

    .line 223
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_X:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterX:I

    .line 224
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterY:I

    .line 227
    :cond_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->shrinkRect()V

    .line 263
    :cond_0
    return-void
.end method
