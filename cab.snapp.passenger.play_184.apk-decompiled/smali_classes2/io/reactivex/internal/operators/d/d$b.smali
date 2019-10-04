.class final Lio/reactivex/internal/operators/d/d$b;
.super Lio/reactivex/internal/operators/d/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/d;
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
        "Lio/reactivex/internal/operators/d/d$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final d:Lio/reactivex/internal/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/a<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/b/a<",
            "-TT;>;",
            "Lio/reactivex/e/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/d/d$a;-><init>(Lio/reactivex/e/q;)V

    .line 162
    iput-object p1, p0, Lio/reactivex/internal/operators/d/d$b;->d:Lio/reactivex/internal/b/a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/d$b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/d$b;->c:Z

    .line 209
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$b;->d:Lio/reactivex/internal/b/a;

    invoke-interface {v0}, Lio/reactivex/internal/b/a;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 197
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/d$b;->c:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/d$b;->c:Z

    .line 202
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$b;->d:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$b;->b:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iput-object p1, p0, Lio/reactivex/internal/operators/d/d$b;->b:Lorg/b/d;

    .line 170
    iget-object p1, p0, Lio/reactivex/internal/operators/d/d$b;->d:Lio/reactivex/internal/b/a;

    invoke-interface {p1, p0}, Lio/reactivex/internal/b/a;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final tryOnNext(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 176
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/d$b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 180
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$b;->a:Lio/reactivex/e/q;

    invoke-interface {v0, p1}, Lio/reactivex/e/q;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$b;->d:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 182
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 183
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/d$b;->cancel()V

    .line 184
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/d$b;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return v1
.end method
