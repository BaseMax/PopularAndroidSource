.class final Lio/reactivex/internal/operators/flowable/cb$a;
.super Lio/reactivex/internal/f/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/t<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TR;>;",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Ljava/util/concurrent/Callable<",
            "+TR;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/t;-><init>(Lorg/b/c;)V

    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/cb$a;->a:Lio/reactivex/e/h;

    .line 62
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/cb$a;->b:Lio/reactivex/e/h;

    .line 63
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/cb$a;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 102
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cb$a;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onComplete publisher returned is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/cb$a;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 104
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 105
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/cb$a;->d:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 87
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cb$a;->b:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onError publisher returned is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/cb$a;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 89
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 90
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/cb$a;->d:Lorg/b/c;

    new-instance v2, Lio/reactivex/c/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cb$a;->a:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The onNext publisher returned is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/cb$a;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/cb$a;->g:J

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cb$a;->d:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cb$a;->d:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
