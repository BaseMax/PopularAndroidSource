.class Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;
.implements Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;
.implements Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;
.implements Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;
.implements Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;
.implements Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapCallback"
.end annotation


# instance fields
.field private final onMapReadyCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mapbox/mapboxsdk/maps/MapView;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 1

    .line 1219
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/List;

    .line 1220
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;)V

    .line 1221
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;)V

    .line 1222
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnDidFinishLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;)V

    .line 1223
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnCameraIsChangingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;)V

    .line 1224
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V

    .line 1225
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnDidFailLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;)V

    return-void
.end method

.method private onMapReady()V
    .locals 3

    .line 1238
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1240
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;

    if-eqz v1, :cond_0

    .line 1244
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;->onMapReady(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    .line 1246
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addOnMapReadyCallback(Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;)V
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method initialised()V
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onPreMapReady()V

    .line 1230
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->onMapReady()V

    .line 1231
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onPostMapReady()V

    return-void
.end method

.method public onCameraDidChange(Z)V
    .locals 0

    .line 1302
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1303
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onUpdateRegionChange()V

    :cond_0
    return-void
.end method

.method public onCameraIsChanging()V
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onUpdateRegionChange()V

    :cond_0
    return-void
.end method

.method onDestroy()V
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1257
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;)V

    .line 1258
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;)V

    .line 1259
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnDidFinishLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;)V

    .line 1260
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnCameraIsChangingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;)V

    .line 1261
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V

    .line 1262
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnDidFailLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;)V

    return-void
.end method

.method public onDidFailLoadingMap(Ljava/lang/String;)V
    .locals 0

    .line 1274
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1275
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onFailLoadingStyle()V

    :cond_0
    return-void
.end method

.method public onDidFinishLoadingMap()V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onUpdateRegionChange()V

    :cond_0
    return-void
.end method

.method public onDidFinishLoadingStyle()V
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onFinishLoadingStyle()V

    :cond_0
    return-void
.end method

.method public onDidFinishRenderingFrame(Z)V
    .locals 0

    .line 1281
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1282
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->this$0:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onUpdateFullyRendered()V

    :cond_0
    return-void
.end method
