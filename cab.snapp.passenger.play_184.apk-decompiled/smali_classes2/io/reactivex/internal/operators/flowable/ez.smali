.class public final Lio/reactivex/internal/operators/flowable/ez;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ez$a;,
        Lio/reactivex/internal/operators/flowable/ez$c;,
        Lio/reactivex/internal/operators/flowable/ez$b;
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
.field final c:[Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/b/b<",
            "*>;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/b/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ljava/lang/Iterable;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/b/b<",
            "*>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ez;->c:[Lorg/b/b;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ez;->d:Ljava/lang/Iterable;

    .line 57
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ez;->e:Lio/reactivex/e/h;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/j;[Lorg/b/b;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;[",
            "Lorg/b/b<",
            "*>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 48
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ez;->c:[Lorg/b/b;

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ez;->d:Ljava/lang/Iterable;

    .line 50
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ez;->e:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ez;->c:[Lorg/b/b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/b/b;

    .line 68
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ez;->d:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/b/b;

    .line 69
    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v3

    .line 70
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/b/b;

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 72
    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 75
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 76
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void

    .line 81
    :cond_1
    array-length v3, v0

    :cond_2
    if-nez v3, :cond_3

    .line 85
    new-instance v0, Lio/reactivex/internal/operators/flowable/ca;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ez;->b:Lio/reactivex/j;

    new-instance v2, Lio/reactivex/internal/operators/flowable/ez$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/flowable/ez$a;-><init>(Lio/reactivex/internal/operators/flowable/ez;)V

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/ca;-><init>(Lio/reactivex/j;Lio/reactivex/e/h;)V

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/ca;->subscribeActual(Lorg/b/c;)V

    return-void

    .line 89
    :cond_3
    new-instance v2, Lio/reactivex/internal/operators/flowable/ez$b;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ez;->e:Lio/reactivex/e/h;

    invoke-direct {v2, p1, v4, v3}, Lio/reactivex/internal/operators/flowable/ez$b;-><init>(Lorg/b/c;Lio/reactivex/e/h;I)V

    .line 90
    invoke-interface {p1, v2}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 1133
    iget-object p1, v2, Lio/reactivex/internal/operators/flowable/ez$b;->c:[Lio/reactivex/internal/operators/flowable/ez$c;

    .line 1134
    iget-object v4, v2, Lio/reactivex/internal/operators/flowable/ez$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_1
    if-ge v1, v3, :cond_4

    .line 1136
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v5, v6, :cond_4

    .line 1139
    aget-object v5, v0, v1

    aget-object v6, p1, v1

    invoke-interface {v5, v6}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ez;->b:Lio/reactivex/j;

    invoke-virtual {p1, v2}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
