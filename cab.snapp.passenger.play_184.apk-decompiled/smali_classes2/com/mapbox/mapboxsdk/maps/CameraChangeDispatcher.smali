.class Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;
.implements Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;
.implements Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;
.implements Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;
    }
.end annotation


# static fields
.field private static final IDLE:I = 0x3

.field private static final MOVE:I = 0x1

.field private static final MOVE_CANCELED:I = 0x2

.field private static final MOVE_STARTED:I


# instance fields
.field private final handler:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;

.field private idle:Z

.field private moveStartedReason:I

.field private final onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;-><init>(Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->handler:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->idle:Z

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->executeOnCameraMoveStarted()V

    return-void
.end method

.method static synthetic access$100(Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->executeOnCameraMove()V

    return-void
.end method

.method static synthetic access$200(Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->executeOnCameraMoveCancelled()V

    return-void
.end method

.method static synthetic access$300(Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->executeOnCameraIdle()V

    return-void
.end method

.method static synthetic access$400(Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->idle:Z

    return p0
.end method

.method private executeOnCameraIdle()V
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->idle:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->idle:Z

    .line 138
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    .line 140
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;->onCameraIdle()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private executeOnCameraMove()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->idle:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;

    .line 120
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;->onCameraMove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private executeOnCameraMoveCancelled()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->idle:Z

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;

    .line 128
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;->onCameraMoveCanceled()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private executeOnCameraMoveStarted()V
    .locals 3

    .line 106
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->idle:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->idle:Z

    .line 110
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;

    .line 112
    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->moveStartedReason:I

    invoke-interface {v1, v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;->onCameraMoveStarted(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnCameraMoveCancelListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnCameraMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnCameraMoveStartedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCameraIdle()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->handler:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;->scheduleMessage(I)V

    return-void
.end method

.method public onCameraMove()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->handler:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;->scheduleMessage(I)V

    return-void
.end method

.method public onCameraMoveCanceled()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->handler:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;->scheduleMessage(I)V

    return-void
.end method

.method public onCameraMoveStarted(I)V
    .locals 1

    .line 46
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->moveStartedReason:I

    .line 47
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->handler:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;->scheduleMessage(I)V

    return-void
.end method

.method onDestroy()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->handler:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher$CameraChangeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 148
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 149
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 150
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method removeOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeOnCameraMoveCancelListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeOnCameraMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeOnCameraMoveStartedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
