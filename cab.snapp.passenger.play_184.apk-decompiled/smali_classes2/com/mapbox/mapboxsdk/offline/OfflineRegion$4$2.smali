.class Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4;Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineRegion;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion;->access$200(Lcom/mapbox/mapboxsdk/offline/OfflineRegion;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->deactivate()V

    .line 463
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4;->val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionInvalidateCallback;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4$2;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4;->val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionInvalidateCallback;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$4$2;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionInvalidateCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
