.class Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5;Ljava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5$2;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5;->val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$5$2;->val$error:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;->onError(Ljava/lang/String;)V

    return-void
.end method