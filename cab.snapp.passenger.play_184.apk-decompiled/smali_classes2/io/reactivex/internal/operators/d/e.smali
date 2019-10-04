.class public final Lio/reactivex/internal/operators/d/e;
.super Lio/reactivex/parallel/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/d/e$b;,
        Lio/reactivex/internal/operators/d/e$c;,
        Lio/reactivex/internal/operators/d/e$a;
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
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Lio/reactivex/e/q;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "TT;>;",
            "Lio/reactivex/e/q<",
            "-TT;>;",
            "Lio/reactivex/e/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/reactivex/parallel/a;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/d/e;->a:Lio/reactivex/parallel/a;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/d/e;->b:Lio/reactivex/e/q;

    .line 43
    iput-object p3, p0, Lio/reactivex/internal/operators/d/e;->c:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final parallelism()I
    .locals 1

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/d/e;->a:Lio/reactivex/parallel/a;

    invoke-virtual {v0}, Lio/reactivex/parallel/a;->parallelism()I

    move-result v0

    return v0
.end method

.method public final subscribe([Lorg/b/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/e;->a([Lorg/b/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    array-length v0, p1

    .line 54
    new-array v1, v0, [Lorg/b/c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 57
    aget-object v3, p1, v2

    .line 58
    instance-of v4, v3, Lio/reactivex/internal/b/a;

    if-eqz v4, :cond_1

    .line 59
    new-instance v4, Lio/reactivex/internal/operators/d/e$b;

    check-cast v3, Lio/reactivex/internal/b/a;

    iget-object v5, p0, Lio/reactivex/internal/operators/d/e;->b:Lio/reactivex/e/q;

    iget-object v6, p0, Lio/reactivex/internal/operators/d/e;->c:Lio/reactivex/e/c;

    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/d/e$b;-><init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/q;Lio/reactivex/e/c;)V

    aput-object v4, v1, v2

    goto :goto_1

    .line 61
    :cond_1
    new-instance v4, Lio/reactivex/internal/operators/d/e$c;

    iget-object v5, p0, Lio/reactivex/internal/operators/d/e;->b:Lio/reactivex/e/q;

    iget-object v6, p0, Lio/reactivex/internal/operators/d/e;->c:Lio/reactivex/e/c;

    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/d/e$c;-><init>(Lorg/b/c;Lio/reactivex/e/q;Lio/reactivex/e/c;)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/d/e;->a:Lio/reactivex/parallel/a;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/a;->subscribe([Lorg/b/c;)V

    return-void
.end method
