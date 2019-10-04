.class public final Lio/reactivex/internal/operators/flowable/bn;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bn$d;,
        Lio/reactivex/internal/operators/flowable/bn$c;,
        Lio/reactivex/internal/operators/flowable/bn$a;,
        Lio/reactivex/internal/operators/flowable/bn$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/d/b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field final e:I

.field final f:Z

.field final g:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/e/g<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;Lio/reactivex/e/h;IZLio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;IZ",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/e/g<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bn;->c:Lio/reactivex/e/h;

    .line 48
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/bn;->d:Lio/reactivex/e/h;

    .line 49
    iput p4, p0, Lio/reactivex/internal/operators/flowable/bn;->e:I

    .line 50
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/bn;->f:Z

    .line 51
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/bn;->g:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/d/b<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn;->g:Lio/reactivex/e/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 64
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_0
    move-object v9, v0

    move-object v8, v1

    goto :goto_1

    .line 66
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 67
    new-instance v1, Lio/reactivex/internal/operators/flowable/bn$a;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/bn$a;-><init>(Ljava/util/Queue;)V

    .line 68
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bn;->g:Lio/reactivex/e/h;

    invoke-interface {v2, v1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :goto_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/bn$b;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bn;->c:Lio/reactivex/e/h;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/bn;->d:Lio/reactivex/e/h;

    iget v6, p0, Lio/reactivex/internal/operators/flowable/bn;->e:I

    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/bn;->f:Z

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lio/reactivex/internal/operators/flowable/bn$b;-><init>(Lorg/b/c;Lio/reactivex/e/h;Lio/reactivex/e/h;IZLjava/util/Map;Ljava/util/Queue;)V

    .line 78
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bn;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    invoke-interface {p1, v1}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 73
    invoke-interface {p1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
