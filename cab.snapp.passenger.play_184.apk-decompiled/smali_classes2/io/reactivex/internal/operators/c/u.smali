.class public final Lio/reactivex/internal/operators/c/u;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/u$a;,
        Lio/reactivex/internal/operators/c/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>([Lio/reactivex/ae;Ljava/lang/Iterable;Lio/reactivex/e/h;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/c/u;->a:[Lio/reactivex/ae;

    .line 40
    iput-object p2, p0, Lio/reactivex/internal/operators/c/u;->b:Ljava/lang/Iterable;

    .line 41
    iput-object p3, p0, Lio/reactivex/internal/operators/c/u;->c:Lio/reactivex/e/h;

    .line 42
    iput p4, p0, Lio/reactivex/internal/operators/c/u;->d:I

    .line 43
    iput-boolean p5, p0, Lio/reactivex/internal/operators/c/u;->e:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/c/u;->a:[Lio/reactivex/ae;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/z;

    .line 53
    iget-object v1, p0, Lio/reactivex/internal/operators/c/u;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/ae;

    .line 54
    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 55
    new-array v5, v5, [Lio/reactivex/ae;

    .line 56
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 59
    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 62
    :cond_1
    array-length v3, v0

    :cond_2
    move v7, v3

    if-nez v7, :cond_3

    .line 66
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/ag;)V

    return-void

    .line 70
    :cond_3
    new-instance v1, Lio/reactivex/internal/operators/c/u$b;

    iget-object v6, p0, Lio/reactivex/internal/operators/c/u;->c:Lio/reactivex/e/h;

    iget v8, p0, Lio/reactivex/internal/operators/c/u;->d:I

    iget-boolean v9, p0, Lio/reactivex/internal/operators/c/u;->e:Z

    move-object v4, v1

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lio/reactivex/internal/operators/c/u$b;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;IIZ)V

    .line 71
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/c/u$b;->subscribe([Lio/reactivex/ae;)V

    return-void
.end method
