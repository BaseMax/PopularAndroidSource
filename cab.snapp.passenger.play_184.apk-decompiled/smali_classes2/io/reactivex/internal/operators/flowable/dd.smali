.class public final Lio/reactivex/internal/operators/flowable/dd;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/dd$a;,
        Lio/reactivex/internal/operators/flowable/dd$c;,
        Lio/reactivex/internal/operators/flowable/dd$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/j<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/b/b<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/j<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/b/b<",
            "*>;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 34
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/dd;->c:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lio/reactivex/k/d;

    invoke-direct {v0, p1}, Lio/reactivex/k/d;-><init>(Lorg/b/c;)V

    const/16 v1, 0x8

    .line 42
    invoke-static {v1}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/h/c;->toSerialized()Lio/reactivex/h/a;

    move-result-object v1

    .line 47
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/dd;->c:Lio/reactivex/e/h;

    invoke-interface {v2, v1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handler returned a null Publisher"

    invoke-static {v2, v3}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    new-instance v3, Lio/reactivex/internal/operators/flowable/dd$b;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/dd;->b:Lio/reactivex/j;

    invoke-direct {v3, v4}, Lio/reactivex/internal/operators/flowable/dd$b;-><init>(Lorg/b/b;)V

    .line 56
    new-instance v4, Lio/reactivex/internal/operators/flowable/dd$a;

    invoke-direct {v4, v0, v1, v3}, Lio/reactivex/internal/operators/flowable/dd$a;-><init>(Lorg/b/c;Lio/reactivex/h/a;Lorg/b/d;)V

    .line 58
    iput-object v4, v3, Lio/reactivex/internal/operators/flowable/dd$b;->d:Lio/reactivex/internal/operators/flowable/dd$c;

    .line 60
    invoke-interface {p1, v4}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 62
    invoke-interface {v2, v3}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    const/4 p1, 0x0

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lio/reactivex/internal/operators/flowable/dd$b;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 50
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method
