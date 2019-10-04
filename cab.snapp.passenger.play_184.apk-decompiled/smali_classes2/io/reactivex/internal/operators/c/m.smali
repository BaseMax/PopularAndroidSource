.class public final Lio/reactivex/internal/operators/c/m;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/m$b;,
        Lio/reactivex/internal/operators/c/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:I

.field final c:I

.field final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 34
    iput p2, p0, Lio/reactivex/internal/operators/c/m;->b:I

    .line 35
    iput p3, p0, Lio/reactivex/internal/operators/c/m;->c:I

    .line 36
    iput-object p4, p0, Lio/reactivex/internal/operators/c/m;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;)V"
        }
    .end annotation

    .line 41
    iget v0, p0, Lio/reactivex/internal/operators/c/m;->c:I

    iget v1, p0, Lio/reactivex/internal/operators/c/m;->b:I

    if-ne v0, v1, :cond_1

    .line 42
    new-instance v0, Lio/reactivex/internal/operators/c/m$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/m;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/c/m$a;-><init>(Lio/reactivex/ag;ILjava/util/concurrent/Callable;)V

    .line 43
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/m$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lio/reactivex/internal/operators/c/m;->a:Lio/reactivex/ae;

    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    :cond_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/m;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/m$b;

    iget v2, p0, Lio/reactivex/internal/operators/c/m;->b:I

    iget v3, p0, Lio/reactivex/internal/operators/c/m;->c:I

    iget-object v4, p0, Lio/reactivex/internal/operators/c/m;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/c/m$b;-><init>(Lio/reactivex/ag;IILjava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
