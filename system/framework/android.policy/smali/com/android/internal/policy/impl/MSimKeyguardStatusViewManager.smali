.class Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;
.super Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.source "MSimKeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MSimKeyguardStatusView"


# instance fields
.field private mCarrierTextSub:[Ljava/lang/CharSequence;

.field private mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

.field private mMSimPlmn:[Ljava/lang/CharSequence;

.field private mMSimSpn:[Ljava/lang/CharSequence;

.field private mMSimState:[Lcom/android/internal/telephony/IccCard$State;

.field private mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

.field private mNumPhones:I

.field private mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
    .locals 5
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    .line 42
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 192
    new-instance v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    .line 237
    new-instance v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$2;-><init>(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 58
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    .line 59
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    .line 60
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    .line 61
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    .line 62
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    .line 63
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aput-object v2, v1, v0

    .line 68
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aput-object v4, v1, v0

    .line 69
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aput-object v4, v1, v0

    .line 70
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    aput-object v4, v1, v0

    .line 71
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 74
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->resetStatusInfo()V

    .line 77
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    .line 79
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    .line 80
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V

    return-void
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 6
    .parameter "simState"
    .parameter "subscription"

    .prologue
    const v4, 0x104039f

    const/4 v5, 0x1

    .line 116
    const-string v1, "MSimKeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierStateWithSimStatus(), simState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, carrierHelpTextId:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v2

    aput-object v2, v1, p2

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aput-object p1, v1, p2

    .line 123
    sget-object v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    const-string v1, "MSimKeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierStateWithSimStatus: Sim Status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Carrier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->setCarrierText()V

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 189
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 190
    return-void

    .line 125
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10403b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 133
    const v0, 0x1040394

    .line 134
    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 144
    const v0, 0x10403a2

    .line 145
    goto :goto_0

    .line 148
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 150
    const v0, 0x10403a3

    .line 151
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 155
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 158
    const v0, 0x10403a1

    .line 159
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 163
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10403ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 166
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 170
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10403b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 180
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10403b4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 182
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->resetStatusInfo()V

    .line 107
    return-void
.end method

.method protected registerInfoCallback()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method setCarrierText()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 90
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 91
    return-void
.end method
