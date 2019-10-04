.class public final Lio/reactivex/internal/operators/flowable/ct;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ct$b;,
        Lio/reactivex/internal/operators/flowable/ct$a;,
        Lio/reactivex/internal/operators/flowable/ct$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Lorg/b/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Lorg/b/b<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ct;->c:Lio/reactivex/e/h;

    .line 52
    iput p3, p0, Lio/reactivex/internal/operators/flowable/ct;->d:I

    .line 53
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/ct;->e:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Lio/reactivex/internal/operators/flowable/ct$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/ct;->d:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ct;->e:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/ct$a;-><init>(IZ)V

    .line 63
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ct;->c:Lio/reactivex/e/h;

    invoke-interface {v1, v0}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "selector returned a null Publisher"

    invoke-static {v1, v2}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    new-instance v2, Lio/reactivex/internal/operators/flowable/ct$c;

    invoke-direct {v2, p1, v0}, Lio/reactivex/internal/operators/flowable/ct$c;-><init>(Lorg/b/c;Lio/reactivex/internal/operators/flowable/ct$a;)V

    .line 72
    invoke-interface {v1, v2}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 74
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ct;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    :catchall_0
    move-exception v0

    .line 65
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 66
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method
