.class final Lio/reactivex/internal/operators/c/eg$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field d:J

.field e:Lio/reactivex/b/c;

.field f:Lio/reactivex/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile g:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;JI)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 63
    iput-object p1, p0, Lio/reactivex/internal/operators/c/eg$a;->a:Lio/reactivex/ag;

    .line 64
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/eg$a;->b:J

    .line 65
    iput p4, p0, Lio/reactivex/internal/operators/c/eg$a;->c:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/eg$a;->g:Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/eg$a;->g:Z

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$a;->f:Lio/reactivex/j/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lio/reactivex/internal/operators/c/eg$a;->f:Lio/reactivex/j/e;

    .line 114
    invoke-virtual {v0}, Lio/reactivex/j/e;->onComplete()V

    .line 116
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$a;->f:Lio/reactivex/j/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lio/reactivex/internal/operators/c/eg$a;->f:Lio/reactivex/j/e;

    .line 104
    invoke-virtual {v0, p1}, Lio/reactivex/j/e;->onError(Ljava/lang/Throwable;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$a;->f:Lio/reactivex/j/e;

    if-nez v0, :cond_0

    .line 80
    iget-boolean v1, p0, Lio/reactivex/internal/operators/c/eg$a;->g:Z

    if-nez v1, :cond_0

    .line 81
    iget v0, p0, Lio/reactivex/internal/operators/c/eg$a;->c:I

    invoke-static {v0, p0}, Lio/reactivex/j/e;->create(ILjava/lang/Runnable;)Lio/reactivex/j/e;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lio/reactivex/internal/operators/c/eg$a;->f:Lio/reactivex/j/e;

    .line 83
    iget-object v1, p0, Lio/reactivex/internal/operators/c/eg$a;->a:Lio/reactivex/ag;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0, p1}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    .line 88
    iget-wide v1, p0, Lio/reactivex/internal/operators/c/eg$a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/c/eg$a;->d:J

    iget-wide v3, p0, Lio/reactivex/internal/operators/c/eg$a;->b:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    const-wide/16 v1, 0x0

    .line 89
    iput-wide v1, p0, Lio/reactivex/internal/operators/c/eg$a;->d:J

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lio/reactivex/internal/operators/c/eg$a;->f:Lio/reactivex/j/e;

    .line 91
    invoke-virtual {v0}, Lio/reactivex/j/e;->onComplete()V

    .line 92
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/eg$a;->g:Z

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lio/reactivex/internal/operators/c/eg$a;->e:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$a;->e:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/c/eg$a;->e:Lio/reactivex/b/c;

    .line 73
    iget-object p1, p0, Lio/reactivex/internal/operators/c/eg$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/eg$a;->g:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method
