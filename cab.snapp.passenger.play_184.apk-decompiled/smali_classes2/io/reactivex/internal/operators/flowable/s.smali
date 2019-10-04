.class public final Lio/reactivex/internal/operators/flowable/s;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TU;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/b<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Lio/reactivex/e/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/s;->c:Ljava/util/concurrent/Callable;

    .line 34
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/s;->d:Lio/reactivex/e/b;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;)V"
        }
    .end annotation

    .line 41
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initial value supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/s;->b:Lio/reactivex/j;

    new-instance v2, Lio/reactivex/internal/operators/flowable/s$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/s;->d:Lio/reactivex/e/b;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/flowable/s$a;-><init>(Lorg/b/c;Ljava/lang/Object;Lio/reactivex/e/b;)V

    invoke-virtual {v1, v2}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    :catchall_0
    move-exception v0

    .line 43
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method
