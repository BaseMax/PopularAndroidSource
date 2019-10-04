.class public final Lio/reactivex/internal/operators/d/o;
.super Lio/reactivex/parallel/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/d/o$c;,
        Lio/reactivex/internal/operators/d/o$d;,
        Lio/reactivex/internal/operators/d/o$a;,
        Lio/reactivex/internal/operators/d/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/ah;

.field final c:I


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Lio/reactivex/ah;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "+TT;>;",
            "Lio/reactivex/ah;",
            "I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lio/reactivex/parallel/a;-><init>()V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/d/o;->a:Lio/reactivex/parallel/a;

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/d/o;->b:Lio/reactivex/ah;

    .line 48
    iput p3, p0, Lio/reactivex/internal/operators/d/o;->c:I

    return-void
.end method


# virtual methods
.method final a(I[Lorg/b/c;[Lorg/b/c;Lio/reactivex/ah$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/b/c<",
            "-TT;>;[",
            "Lorg/b/c<",
            "TT;>;",
            "Lio/reactivex/ah$c;",
            ")V"
        }
    .end annotation

    .line 76
    aget-object p2, p2, p1

    .line 78
    new-instance v0, Lio/reactivex/internal/d/b;

    iget v1, p0, Lio/reactivex/internal/operators/d/o;->c:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    .line 80
    instance-of v1, p2, Lio/reactivex/internal/b/a;

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lio/reactivex/internal/operators/d/o$c;

    check-cast p2, Lio/reactivex/internal/b/a;

    iget v2, p0, Lio/reactivex/internal/operators/d/o;->c:I

    invoke-direct {v1, p2, v2, v0, p4}, Lio/reactivex/internal/operators/d/o$c;-><init>(Lio/reactivex/internal/b/a;ILio/reactivex/internal/d/b;Lio/reactivex/ah$c;)V

    aput-object v1, p3, p1

    return-void

    .line 83
    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/d/o$d;

    iget v2, p0, Lio/reactivex/internal/operators/d/o;->c:I

    invoke-direct {v1, p2, v2, v0, p4}, Lio/reactivex/internal/operators/d/o$d;-><init>(Lorg/b/c;ILio/reactivex/internal/d/b;Lio/reactivex/ah$c;)V

    aput-object v1, p3, p1

    return-void
.end method

.method public final parallelism()I
    .locals 1

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/d/o;->a:Lio/reactivex/parallel/a;

    invoke-virtual {v0}, Lio/reactivex/parallel/a;->parallelism()I

    move-result v0

    return v0
.end method

.method public final subscribe([Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/o;->a([Lorg/b/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    array-length v0, p1

    .line 60
    new-array v1, v0, [Lorg/b/c;

    .line 62
    iget-object v2, p0, Lio/reactivex/internal/operators/d/o;->b:Lio/reactivex/ah;

    instance-of v3, v2, Lio/reactivex/internal/e/o;

    if-eqz v3, :cond_1

    .line 63
    check-cast v2, Lio/reactivex/internal/e/o;

    .line 64
    new-instance v3, Lio/reactivex/internal/operators/d/o$b;

    invoke-direct {v3, p0, p1, v1}, Lio/reactivex/internal/operators/d/o$b;-><init>(Lio/reactivex/internal/operators/d/o;[Lorg/b/c;[Lorg/b/c;)V

    invoke-interface {v2, v0, v3}, Lio/reactivex/internal/e/o;->createWorkers(ILio/reactivex/internal/e/o$a;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 67
    iget-object v3, p0, Lio/reactivex/internal/operators/d/o;->b:Lio/reactivex/ah;

    invoke-virtual {v3}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v1, v3}, Lio/reactivex/internal/operators/d/o;->a(I[Lorg/b/c;[Lorg/b/c;Lio/reactivex/ah$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/reactivex/internal/operators/d/o;->a:Lio/reactivex/parallel/a;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/a;->subscribe([Lorg/b/c;)V

    return-void
.end method
