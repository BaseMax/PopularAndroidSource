.class final Lio/reactivex/internal/operators/d/m$a;
.super Lio/reactivex/internal/f/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/h<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Lorg/b/c;Ljava/lang/Object;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;TR;",
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/h;-><init>(Lorg/b/c;)V

    .line 99
    iput-object p2, p0, Lio/reactivex/internal/operators/d/m$a;->b:Ljava/lang/Object;

    .line 100
    iput-object p3, p0, Lio/reactivex/internal/operators/d/m$a;->a:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 156
    invoke-super {p0}, Lio/reactivex/internal/f/h;->cancel()V

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/d/m$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/m$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/m$a;->c:Z

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/d/m$a;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lio/reactivex/internal/operators/d/m$a;->b:Ljava/lang/Object;

    .line 150
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/d/m$a;->complete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/m$a;->c:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/m$a;->c:Z

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lio/reactivex/internal/operators/d/m$a;->b:Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/d/m$a;->h:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/m$a;->c:Z

    if-nez v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/m$a;->a:Lio/reactivex/e/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/d/m$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iput-object p1, p0, Lio/reactivex/internal/operators/d/m$a;->b:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 122
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/m$a;->cancel()V

    .line 124
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/m$a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/d/m$a;->d:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-object p1, p0, Lio/reactivex/internal/operators/d/m$a;->d:Lorg/b/d;

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/d/m$a;->h:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 110
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
