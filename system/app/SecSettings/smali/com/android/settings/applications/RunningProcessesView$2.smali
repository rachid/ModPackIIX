.class Lcom/android/settings/applications/RunningProcessesView$2;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningProcessesView;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$2;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$2;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/applications/ManageApplications;

    .line 425
    .local v0, mApplications:Lcom/android/settings/applications/ManageApplications;
    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 426
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$2;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 427
    return-void
.end method
