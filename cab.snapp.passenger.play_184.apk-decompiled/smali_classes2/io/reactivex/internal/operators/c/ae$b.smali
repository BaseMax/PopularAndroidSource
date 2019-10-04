.class final Lio/reactivex/internal/operators/c/ae$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah$c;

.field e:Lio/reactivex/b/c;

.field f:Lio/reactivex/b/c;

.field volatile g:J

.field h:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ae$b;->a:Lio/reactivex/ag;

    .line 62
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ae$b;->b:J

    .line 63
    iput-object p4, p0, Lio/reactivex/internal/operators/c/ae$b;->c:Ljava/util/concurrent/TimeUnit;

    .line 64
    iput-object p5, p0, Lio/reactivex/internal/operators/c/ae$b;->d:Lio/reactivex/ah$c;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$b;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ae$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ae$b;->h:Z

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$b;->f:Lio/reactivex/b/c;

    if-eqz v0, :cond_1

    .line 118
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 122
    :cond_1
    check-cast v0, Lio/reactivex/internal/operators/c/ae$a;

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ae$a;->run()V

    .line 126
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$b;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ae$b;->h:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$b;->f:Lio/reactivex/b/c;

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    :cond_1
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ae$b;->h:Z

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 106
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ae$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ae$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/ae$b;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 81
    iput-wide v0, p0, Lio/reactivex/internal/operators/c/ae$b;->g:J

    .line 83
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ae$b;->f:Lio/reactivex/b/c;

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v2}, Lio/reactivex/b/c;->dispose()V

    .line 88
    :cond_1
    new-instance v2, Lio/reactivex/internal/operators/c/ae$a;

    invoke-direct {v2, p1, v0, v1, p0}, Lio/reactivex/internal/operators/c/ae$a;-><init>(Ljava/lang/Object;JLio/reactivex/internal/operators/c/ae$b;)V

    .line 89
    iput-object v2, p0, Lio/reactivex/internal/operators/c/ae$b;->f:Lio/reactivex/b/c;

    .line 90
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ae$b;->d:Lio/reactivex/ah$c;

    iget-wide v0, p0, Lio/reactivex/internal/operators/c/ae$b;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ae$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 91
    invoke-virtual {v2, p1}, Lio/reactivex/internal/operators/c/ae$a;->setResource(Lio/reactivex/b/c;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$b;->e:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ae$b;->e:Lio/reactivex/b/c;

    .line 71
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ae$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
