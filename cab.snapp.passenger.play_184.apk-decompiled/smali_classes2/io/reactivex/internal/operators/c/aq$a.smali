.class final Lio/reactivex/internal/operators/c/aq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/aq;
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

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final d:Z

.field e:Lio/reactivex/b/c;

.field f:J

.field g:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;JTT;Z)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/c/aq$a;->a:Lio/reactivex/ag;

    .line 54
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/aq$a;->b:J

    .line 55
    iput-object p4, p0, Lio/reactivex/internal/operators/c/aq$a;->c:Ljava/lang/Object;

    .line 56
    iput-boolean p5, p0, Lio/reactivex/internal/operators/c/aq$a;->d:Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aq$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aq$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/aq$a;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/aq$a;->g:Z

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aq$a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 108
    iget-boolean v1, p0, Lio/reactivex/internal/operators/c/aq$a;->d:Z

    if-eqz v1, :cond_0

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aq$a;->a:Lio/reactivex/ag;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lio/reactivex/internal/operators/c/aq$a;->a:Lio/reactivex/ag;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aq$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    :cond_2
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/aq$a;->g:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/aq$a;->g:Z

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aq$a;->a:Lio/reactivex/ag;

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/aq$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/aq$a;->f:J

    .line 83
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/aq$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/aq$a;->g:Z

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aq$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aq$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lio/reactivex/internal/operators/c/aq$a;->a:Lio/reactivex/ag;

    invoke-interface {p1}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 90
    iput-wide v0, p0, Lio/reactivex/internal/operators/c/aq$a;->f:J

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aq$a;->e:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iput-object p1, p0, Lio/reactivex/internal/operators/c/aq$a;->e:Lio/reactivex/b/c;

    .line 63
    iget-object p1, p0, Lio/reactivex/internal/operators/c/aq$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
