.class Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionDeleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/offline/OfflineRegion;->delete(Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionDeleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapbox/mapboxsdk/offline/OfflineRegion;

.field final synthetic val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionDeleteCallback;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/offline/OfflineRegion;Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionDeleteCallback;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineRegion;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;->val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineRegion$OfflineRegionDeleteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineRegion;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion;->access$100(Lcom/mapbox/mapboxsdk/offline/OfflineRegion;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$1;

    invoke-direct {v1, p0}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$1;-><init>(Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineRegion;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion;->access$100(Lcom/mapbox/mapboxsdk/offline/OfflineRegion;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$2;

    invoke-direct {v1, p0, p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3$2;-><init>(Lcom/mapbox/mapboxsdk/offline/OfflineRegion$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
