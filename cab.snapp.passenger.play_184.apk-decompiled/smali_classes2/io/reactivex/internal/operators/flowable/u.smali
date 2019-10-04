.class public final Lio/reactivex/internal/operators/flowable/u;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/u$c;,
        Lio/reactivex/internal/operators/flowable/u$b;,
        Lio/reactivex/internal/operators/flowable/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:[Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/b/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final e:I

.field final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lio/reactivex/e/h;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/b/b<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/u;->b:[Lorg/b/b;

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/u;->c:Ljava/lang/Iterable;

    .line 68
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/u;->d:Lio/reactivex/e/h;

    .line 69
    iput p3, p0, Lio/reactivex/internal/operators/flowable/u;->e:I

    .line 70
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/u;->f:Z

    return-void
.end method

.method public constructor <init>([Lorg/b/b;Lio/reactivex/e/h;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/b/b<",
            "+TT;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 56
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/u;->b:[Lorg/b/b;

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/u;->c:Ljava/lang/Iterable;

    .line 58
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/u;->d:Lio/reactivex/e/h;

    .line 59
    iput p3, p0, Lio/reactivex/internal/operators/flowable/u;->e:I

    .line 60
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/u;->f:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/u;->b:[Lorg/b/b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/b/b;

    .line 85
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/u;->c:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "The iterator returned is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    .line 97
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    .line 111
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The publisher returned by the iterator is null"

    invoke-static {v4, v5}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/b/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 119
    new-array v5, v5, [Lorg/b/b;

    .line 120
    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 123
    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 113
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 114
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void

    :catchall_1
    move-exception v0

    .line 99
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 100
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void

    :catchall_2
    move-exception v0

    .line 87
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 88
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void

    .line 127
    :cond_1
    array-length v3, v0

    :cond_2
    if-nez v3, :cond_3

    .line 131
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/b/c;)V

    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne v3, v2, :cond_4

    .line 135
    aget-object v0, v0, v1

    new-instance v1, Lio/reactivex/internal/operators/flowable/ca$b;

    new-instance v2, Lio/reactivex/internal/operators/flowable/u$c;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/flowable/u$c;-><init>(Lio/reactivex/internal/operators/flowable/u;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/ca$b;-><init>(Lorg/b/c;Lio/reactivex/e/h;)V

    invoke-interface {v0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void

    .line 139
    :cond_4
    new-instance v2, Lio/reactivex/internal/operators/flowable/u$a;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/u;->d:Lio/reactivex/e/h;

    iget v8, p0, Lio/reactivex/internal/operators/flowable/u;->e:I

    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/u;->f:Z

    move-object v4, v2

    move-object v5, p1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lio/reactivex/internal/operators/flowable/u$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;IIZ)V

    .line 142
    invoke-interface {p1, v2}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 1211
    iget-object p1, v2, Lio/reactivex/internal/operators/flowable/u$a;->c:[Lio/reactivex/internal/operators/flowable/u$b;

    :goto_1
    if-ge v1, v3, :cond_6

    .line 1214
    iget-boolean v4, v2, Lio/reactivex/internal/operators/flowable/u$a;->l:Z

    if-nez v4, :cond_6

    iget-boolean v4, v2, Lio/reactivex/internal/operators/flowable/u$a;->j:Z

    if-eqz v4, :cond_5

    goto :goto_2

    .line 1217
    :cond_5
    aget-object v4, v0, v1

    aget-object v5, p1, v1

    invoke-interface {v4, v5}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method
