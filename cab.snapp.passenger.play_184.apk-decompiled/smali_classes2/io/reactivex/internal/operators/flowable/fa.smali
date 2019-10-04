.class public final Lio/reactivex/internal/operators/flowable/fa;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/fa$b;,
        Lio/reactivex/internal/operators/flowable/fa$a;
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
.method public constructor <init>([Lorg/b/b;Ljava/lang/Iterable;Lio/reactivex/e/h;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/b/b<",
            "+TT;>;",
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

    .line 43
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/fa;->b:[Lorg/b/b;

    .line 45
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/fa;->c:Ljava/lang/Iterable;

    .line 46
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/fa;->d:Lio/reactivex/e/h;

    .line 47
    iput p4, p0, Lio/reactivex/internal/operators/flowable/fa;->e:I

    .line 48
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/fa;->f:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/fa;->b:[Lorg/b/b;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/b/b;

    .line 58
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/fa;->c:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/b/b;

    .line 59
    array-length v5, v3

    if-ne v0, v5, :cond_0

    shr-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v0

    .line 60
    new-array v5, v5, [Lorg/b/b;

    .line 61
    invoke-static {v3, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v5

    :cond_0
    add-int/lit8 v5, v0, 0x1

    .line 64
    aput-object v4, v3, v0

    move v0, v5

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_1

    .line 67
    :cond_2
    array-length v2, v0

    move v10, v2

    move-object v2, v0

    move v0, v10

    :goto_1
    if-nez v0, :cond_3

    .line 71
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/b/c;)V

    return-void

    .line 75
    :cond_3
    new-instance v9, Lio/reactivex/internal/operators/flowable/fa$a;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/fa;->d:Lio/reactivex/e/h;

    iget v7, p0, Lio/reactivex/internal/operators/flowable/fa;->e:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/fa;->f:Z

    move-object v3, v9

    move-object v4, p1

    move v6, v0

    invoke-direct/range {v3 .. v8}, Lio/reactivex/internal/operators/flowable/fa$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;IIZ)V

    .line 77
    invoke-interface {p1, v9}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 1121
    iget-object p1, v9, Lio/reactivex/internal/operators/flowable/fa$a;->b:[Lio/reactivex/internal/operators/flowable/fa$b;

    :goto_2
    if-ge v1, v0, :cond_5

    .line 1123
    iget-boolean v3, v9, Lio/reactivex/internal/operators/flowable/fa$a;->g:Z

    if-nez v3, :cond_5

    iget-boolean v3, v9, Lio/reactivex/internal/operators/flowable/fa$a;->f:Z

    if-nez v3, :cond_4

    iget-object v3, v9, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 1126
    :cond_4
    aget-object v3, v2, v1

    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
