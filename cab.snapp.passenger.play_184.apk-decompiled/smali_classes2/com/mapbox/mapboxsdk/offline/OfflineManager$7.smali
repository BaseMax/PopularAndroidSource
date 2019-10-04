.class Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/offline/OfflineManager$MergeOfflineRegionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/offline/OfflineManager;->mergeOfflineDatabaseFiles(Ljava/io/File;Lcom/mapbox/mapboxsdk/offline/OfflineManager$MergeOfflineRegionsCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapbox/mapboxsdk/offline/OfflineManager;

.field final synthetic val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineManager$MergeOfflineRegionsCallback;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$isTemporaryFile:Z


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/offline/OfflineManager;ZLjava/io/File;Lcom/mapbox/mapboxsdk/offline/OfflineManager$MergeOfflineRegionsCallback;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    iput-boolean p2, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;->val$isTemporaryFile:Z

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;->val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineManager$MergeOfflineRegionsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 525
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;->val$isTemporaryFile:Z

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->access$100(Lcom/mapbox/mapboxsdk/offline/OfflineManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7$2;

    invoke-direct {v1, p0, p1}, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7$2;-><init>(Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMerge([Lcom/mapbox/mapboxsdk/offline/OfflineRegion;)V
    .locals 2

    .line 511
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;->val$isTemporaryFile:Z

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->access$100(Lcom/mapbox/mapboxsdk/offline/OfflineManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7$1;

    invoke-direct {v1, p0, p1}, Lcom/mapbox/mapboxsdk/offline/OfflineManager$7$1;-><init>(Lcom/mapbox/mapboxsdk/offline/OfflineManager$7;[Lcom/mapbox/mapboxsdk/offline/OfflineRegion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
