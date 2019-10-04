.class final Lio/reactivex/internal/operators/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/a;
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
        "Lio/reactivex/al<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/b/b;

.field final b:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field d:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/al;Lio/reactivex/b/b;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;",
            "Lio/reactivex/b/b;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/e/a$a;->b:Lio/reactivex/al;

    .line 100
    iput-object p2, p0, Lio/reactivex/internal/operators/e/a$a;->a:Lio/reactivex/b/b;

    .line 101
    iput-object p3, p0, Lio/reactivex/internal/operators/e/a$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/e/a$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/e/a$a;->a:Lio/reactivex/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/e/a$a;->d:Lio/reactivex/b/c;

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/e/a$a;->a:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/e/a$a;->b:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 126
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lio/reactivex/internal/operators/e/a$a;->d:Lio/reactivex/b/c;

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/e/a$a;->a:Lio/reactivex/b/b;

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

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/e/a$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/e/a$a;->a:Lio/reactivex/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/e/a$a;->d:Lio/reactivex/b/c;

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/e/a$a;->a:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 115
    iget-object v0, p0, Lio/reactivex/internal/operators/e/a$a;->b:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
