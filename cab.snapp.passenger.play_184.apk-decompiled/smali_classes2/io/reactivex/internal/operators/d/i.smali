.class public final Lio/reactivex/internal/operators/d/i;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/d/i$a;,
        Lio/reactivex/internal/operators/d/i$d;,
        Lio/reactivex/internal/operators/d/i$b;,
        Lio/reactivex/internal/operators/d/i$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "+TT;>;IZ)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/d/i;->b:Lio/reactivex/parallel/a;

    .line 45
    iput p2, p0, Lio/reactivex/internal/operators/d/i;->c:I

    .line 46
    iput-boolean p3, p0, Lio/reactivex/internal/operators/d/i;->d:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/i;->d:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lio/reactivex/internal/operators/d/i$d;

    iget-object v1, p0, Lio/reactivex/internal/operators/d/i;->b:Lio/reactivex/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/parallel/a;->parallelism()I

    move-result v1

    iget v2, p0, Lio/reactivex/internal/operators/d/i;->c:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/d/i$d;-><init>(Lorg/b/c;II)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/d/i$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/d/i;->b:Lio/reactivex/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/parallel/a;->parallelism()I

    move-result v1

    iget v2, p0, Lio/reactivex/internal/operators/d/i;->c:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/d/i$b;-><init>(Lorg/b/c;II)V

    .line 57
    :goto_0
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 58
    iget-object p1, p0, Lio/reactivex/internal/operators/d/i;->b:Lio/reactivex/parallel/a;

    iget-object v0, v0, Lio/reactivex/internal/operators/d/i$c;->b:[Lio/reactivex/internal/operators/d/i$a;

    invoke-virtual {p1, v0}, Lio/reactivex/parallel/a;->subscribe([Lorg/b/c;)V

    return-void
.end method
