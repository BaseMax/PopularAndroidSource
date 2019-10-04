.class final Lio/reactivex/internal/operators/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Lio/reactivex/b/b;

.field final c:Lio/reactivex/d;

.field d:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/b/b;Lio/reactivex/d;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/a/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    iput-object p2, p0, Lio/reactivex/internal/operators/a/a$a;->b:Lio/reactivex/b/b;

    .line 104
    iput-object p3, p0, Lio/reactivex/internal/operators/a/a$a;->c:Lio/reactivex/d;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/a/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/a/a$a;->b:Lio/reactivex/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/a/a$a;->d:Lio/reactivex/b/c;

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/a/a$a;->b:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/a/a$a;->c:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/a/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/a/a$a;->b:Lio/reactivex/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/a/a$a;->d:Lio/reactivex/b/c;

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/a/a$a;->b:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/a/a$a;->c:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 123
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 129
    iput-object p1, p0, Lio/reactivex/internal/operators/a/a$a;->d:Lio/reactivex/b/c;

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/a/a$a;->b:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-void
.end method
