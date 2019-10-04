.class final Lio/reactivex/internal/operators/d/d$c;
.super Lio/reactivex/internal/operators/d/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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
.field final d:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/d/d$a;-><init>(Lio/reactivex/e/q;)V

    .line 103
    iput-object p1, p0, Lio/reactivex/internal/operators/d/d$c;->d:Lorg/b/c;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/d$c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/d$c;->c:Z

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$c;->d:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/d$c;->c:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/d$c;->c:Z

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$c;->d:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$c;->b:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iput-object p1, p0, Lio/reactivex/internal/operators/d/d$c;->b:Lorg/b/d;

    .line 111
    iget-object p1, p0, Lio/reactivex/internal/operators/d/d$c;->d:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

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

    .line 117
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/d$c;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$c;->a:Lio/reactivex/e/q;

    invoke-interface {v0, p1}, Lio/reactivex/e/q;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$c;->d:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 123
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 124
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/d$c;->cancel()V

    .line 125
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/d$c;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return v1
.end method
