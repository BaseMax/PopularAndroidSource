.class public final Lio/reactivex/internal/operators/flowable/af;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/af$e;,
        Lio/reactivex/internal/operators/flowable/af$b;,
        Lio/reactivex/internal/operators/flowable/af$d;,
        Lio/reactivex/internal/operators/flowable/af$c;,
        Lio/reactivex/internal/operators/flowable/af$g;,
        Lio/reactivex/internal/operators/flowable/af$f;,
        Lio/reactivex/internal/operators/flowable/af$a;,
        Lio/reactivex/internal/operators/flowable/af$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/BackpressureStrategy;


# direct methods
.method public constructor <init>(Lio/reactivex/m;Lio/reactivex/BackpressureStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/m<",
            "TT;>;",
            "Lio/reactivex/BackpressureStrategy;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 38
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/af;->b:Lio/reactivex/m;

    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/af;->c:Lio/reactivex/BackpressureStrategy;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    sget-object v0, Lio/reactivex/internal/operators/flowable/af$1;->a:[I

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/af;->c:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v1}, Lio/reactivex/BackpressureStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 64
    new-instance v0, Lio/reactivex/internal/operators/flowable/af$b;

    invoke-static {}, Lio/reactivex/internal/operators/flowable/af;->bufferSize()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/af$b;-><init>(Lorg/b/c;I)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/af$e;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/af$e;-><init>(Lorg/b/c;)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/af$c;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/af$c;-><init>(Lorg/b/c;)V

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Lio/reactivex/internal/operators/flowable/af$d;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/af$d;-><init>(Lorg/b/c;)V

    goto :goto_0

    .line 48
    :cond_3
    new-instance v0, Lio/reactivex/internal/operators/flowable/af$f;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/af$f;-><init>(Lorg/b/c;)V

    .line 69
    :goto_0
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 71
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/af;->b:Lio/reactivex/m;

    invoke-interface {p1, v0}, Lio/reactivex/m;->subscribe(Lio/reactivex/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/af$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
