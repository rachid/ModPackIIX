.class Lcom/android/launcher2/LauncherModel$LoaderTask$14;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$allApps:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$14;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$14;->val$allApps:Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1985
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$14;->val$allApps:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppModel;->setModelItems(Ljava/util/Map;)V

    .line 1987
    const-string v0, "Launcher.Model"

    const-string v1, "MenuAppModel.setModelItems called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    return-void
.end method