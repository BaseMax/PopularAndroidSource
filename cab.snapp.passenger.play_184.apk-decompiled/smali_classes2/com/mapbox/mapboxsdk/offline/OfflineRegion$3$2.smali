.class Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;Ljava/lang/String;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$2;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineRegion;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion;->access$302(Lcom/mapbox/mapboxsdk/offline/OfflineRegion;Z)Z

    .line 423
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineRegion;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion;->access$200(Lcom/mapbox/mapboxsdk/offline/OfflineRegion;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->deactivate()V

    .line 424
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;->val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionDeleteCallback;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$2;->val$error:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionDeleteCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
