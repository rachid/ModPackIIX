.class Lcom/android/launcher2/LauncherModel$LoaderTask$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$folders:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->val$folders:Ljava/util/HashMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1836
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #calls: Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$2700(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1837
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1838
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->val$folders:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeFolders(Ljava/util/Map;)V

    .line 1840
    :cond_0
    return-void
.end method
