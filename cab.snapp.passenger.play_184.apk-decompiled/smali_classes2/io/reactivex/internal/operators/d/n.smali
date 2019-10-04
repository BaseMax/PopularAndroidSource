.class public final Lio/reactivex/internal/operators/d/n;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/d/n$c;,
        Lio/reactivex/internal/operators/d/n$a;,
        Lio/reactivex/internal/operators/d/n$b;
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

.field final c:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "+TT;>;",
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/d/n;->b:Lio/reactivex/parallel/a;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/d/n;->c:Lio/reactivex/e/c;

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

    .line 47
    new-instance v0, Lio/reactivex/internal/operators/d/n$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/d/n;->b:Lio/reactivex/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/parallel/a;->parallelism()I

    move-result v1

    iget-object v2, p0, Lio/reactivex/internal/operators/d/n;->c:Lio/reactivex/e/c;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/d/n$b;-><init>(Lorg/b/c;ILio/reactivex/e/c;)V

    .line 48
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 50
    iget-object p1, p0, Lio/reactivex/internal/operators/d/n;->b:Lio/reactivex/parallel/a;

    iget-object v0, v0, Lio/reactivex/internal/operators/d/n$b;->a:[Lio/reactivex/internal/operators/d/n$a;

    invoke-virtual {p1, v0}, Lio/reactivex/parallel/a;->subscribe([Lorg/b/c;)V

    return-void
.end method
