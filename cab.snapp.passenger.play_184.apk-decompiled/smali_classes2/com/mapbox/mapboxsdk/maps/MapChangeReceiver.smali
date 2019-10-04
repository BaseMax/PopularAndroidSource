.class Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-MapChangeReceiver"


# instance fields
.field private final onCameraDidChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCameraIsChangingListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCameraWillChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraWillChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCanRemoveUnusedStyleImageListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnCanRemoveUnusedStyleImageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDidBecomeIdleListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnDidBecomeIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDidFailLoadingMapListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDidFinishLoadingMapListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDidFinishLoadingStyleListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDidFinishRenderingFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDidFinishRenderingMapListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingMapListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onSourceChangedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnSourceChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onStyleImageMissingListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnStyleImageMissingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onWillStartLoadingMapListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartLoadingMapListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onWillStartRenderingFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingFrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onWillStartRenderingMapListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingMapListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onSourceChangedListenerList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnCameraIsChangingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnCameraWillChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraWillChangeListener;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnCanRemoveUnusedStyleImageListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCanRemoveUnusedStyleImageListener;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnDidBecomeIdleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidBecomeIdleListener;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnDidFailLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnDidFinishLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnDidFinishRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingMapListener;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnSourceChangedListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnSourceChangedListener;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onSourceChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnStyleImageMissingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnStyleImageMissingListener;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnWillStartLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartLoadingMapListener;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnWillStartRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingFrameListener;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnWillStartRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingMapListener;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clear()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 382
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 383
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 385
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 386
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 387
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 391
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onSourceChangedListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onCameraDidChange(Z)V
    .locals 2

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;

    .line 72
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;->onCameraDidChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Mbgl-MapChangeReceiver"

    const-string v1, "Exception in onCameraDidChange"

    .line 76
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onCameraIsChanging()V
    .locals 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;

    .line 58
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;->onCameraIsChanging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Mbgl-MapChangeReceiver"

    const-string v2, "Exception in onCameraIsChanging"

    .line 62
    invoke-static {v1, v2, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onCameraWillChange(Z)V
    .locals 2

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraWillChangeListener;

    .line 44
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraWillChangeListener;->onCameraWillChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Mbgl-MapChangeReceiver"

    const-string v1, "Exception in onCameraWillChange"

    .line 48
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onCanRemoveUnusedStyleImage(Ljava/lang/String;)Z
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 242
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/maps/MapView$OnCanRemoveUnusedStyleImageListener;

    .line 245
    invoke-interface {v2, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnCanRemoveUnusedStyleImageListener;->onCanRemoveUnusedStyleImage(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    const-string v0, "Mbgl-MapChangeReceiver"

    const-string v1, "Exception in onCanRemoveUnusedStyleImage"

    .line 251
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onDidBecomeIdle()V
    .locals 3

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidBecomeIdleListener;

    .line 184
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidBecomeIdleListener;->onDidBecomeIdle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Mbgl-MapChangeReceiver"

    const-string v2, "Exception in onDidBecomeIdle"

    .line 188
    invoke-static {v1, v2, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onDidFailLoadingMap(Ljava/lang/String;)V
    .locals 2

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;

    .line 114
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;->onDidFailLoadingMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Mbgl-MapChangeReceiver"

    const-string v1, "Exception in onDidFailLoadingMap"

    .line 118
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onDidFinishLoadingMap()V
    .locals 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;

    .line 100
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;->onDidFinishLoadingMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Mbgl-MapChangeReceiver"

    const-string v2, "Exception in onDidFinishLoadingMap"

    .line 104
    invoke-static {v1, v2, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onDidFinishLoadingStyle()V
    .locals 3

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;

    .line 198
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;->onDidFinishLoadingStyle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Mbgl-MapChangeReceiver"

    const-string v2, "Exception in onDidFinishLoadingStyle"

    .line 202
    invoke-static {v1, v2, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onDidFinishRenderingFrame(Z)V
    .locals 2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;

    .line 142
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;->onDidFinishRenderingFrame(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Mbgl-MapChangeReceiver"

    const-string v1, "Exception in onDidFinishRenderingFrame"

    .line 146
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onDidFinishRenderingMap(Z)V
    .locals 2

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingMapListener;

    .line 170
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingMapListener;->onDidFinishRenderingMap(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Mbgl-MapChangeReceiver"

    const-string v1, "Exception in onDidFinishRenderingMap"

    .line 174
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onSourceChanged(Ljava/lang/String;)V
    .locals 2

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onSourceChangedListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onSourceChangedListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnSourceChangedListener;

    .line 212
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnSourceChangedListener;->onSourceChangedListener(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Mbgl-MapChangeReceiver"

    const-string v1, "Exception in onSourceChanged"

    .line 216
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onStyleImageMissing(Ljava/lang/String;)V
    .locals 2

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnStyleImageMissingListener;

    .line 226
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnStyleImageMissingListener;->onStyleImageMissing(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Mbgl-MapChangeReceiver"

    const-string v1, "Exception in onStyleImageMissing"

    .line 230
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onWillStartLoadingMap()V
    .locals 3

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartLoadingMapListener;

    .line 86
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartLoadingMapListener;->onWillStartLoadingMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Mbgl-MapChangeReceiver"

    const-string v2, "Exception in onWillStartLoadingMap"

    .line 90
    invoke-static {v1, v2, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onWillStartRenderingFrame()V
    .locals 3

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingFrameListener;

    .line 128
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingFrameListener;->onWillStartRenderingFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Mbgl-MapChangeReceiver"

    const-string v2, "Exception in onWillStartRenderingFrame"

    .line 132
    invoke-static {v1, v2, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onWillStartRenderingMap()V
    .locals 3

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingMapListener;

    .line 156
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingMapListener;->onWillStartRenderingMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Mbgl-MapChangeReceiver"

    const-string v2, "Exception in onWillStartRenderingMap"

    .line 160
    invoke-static {v1, v2, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method removeOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnCameraIsChangingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnCameraWillChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraWillChangeListener;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnCanRemoveUnusedStyleImageListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCanRemoveUnusedStyleImageListener;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnDidBecomeIdleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidBecomeIdleListener;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnDidFailLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnDidFinishLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnDidFinishRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingMapListener;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnSourceChangedListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnSourceChangedListener;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onSourceChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnStyleImageMissingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnStyleImageMissingListener;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnWillStartLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartLoadingMapListener;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnWillStartRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingFrameListener;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnWillStartRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingMapListener;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
