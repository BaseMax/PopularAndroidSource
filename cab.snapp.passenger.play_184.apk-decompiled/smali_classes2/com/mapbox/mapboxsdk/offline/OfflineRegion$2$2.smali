.class Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2;Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2$2;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineRegion;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion;->access$200(Lcom/mapbox/mapboxsdk/offline/OfflineRegion;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->deactivate()V

    .line 376
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2;->val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionStatusCallback;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$2$2;->val$error:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionStatusCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
