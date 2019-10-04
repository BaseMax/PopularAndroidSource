.class final Lio/reactivex/internal/operators/maybe/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/b;
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
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final c:Lio/reactivex/b/b;

.field d:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/t;Lio/reactivex/b/b;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;",
            "Lio/reactivex/b/b;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/b$a;->a:Lio/reactivex/t;

    .line 110
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/b$a;->c:Lio/reactivex/b/b;

    .line 111
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/b$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->c:Lio/reactivex/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/b$a;->d:Lio/reactivex/b/c;

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->c:Lio/reactivex/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/b$a;->d:Lio/reactivex/b/c;

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 138
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 116
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/b$a;->d:Lio/reactivex/b/c;

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->c:Lio/reactivex/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/b$a;->d:Lio/reactivex/b/c;

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
