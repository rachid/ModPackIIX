.class Lcom/android/settings/AnimationAdapter$1;
.super Landroid/os/Handler;
.source "AnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AnimationAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/AnimationAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/AnimationAdapter$1;->this$0:Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter$1;->this$0:Lcom/android/settings/AnimationAdapter;

    #calls: Lcom/android/settings/AnimationAdapter;->startAnimation()Z
    invoke-static {v0}, Lcom/android/settings/AnimationAdapter;->access$000(Lcom/android/settings/AnimationAdapter;)Z

    .line 81
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    return-void
.end method
