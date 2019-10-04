.class final Lio/reactivex/internal/operators/d/a$a;
.super Lio/reactivex/internal/f/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/h<",
        "TT;TC;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/b<",
            "-TC;-TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Lorg/b/c;Ljava/lang/Object;Lio/reactivex/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TC;>;TC;",
            "Lio/reactivex/e/b<",
            "-TC;-TT;>;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/h;-><init>(Lorg/b/c;)V

    .line 101
    iput-object p2, p0, Lio/reactivex/internal/operators/d/a$a;->b:Ljava/lang/Object;

    .line 102
    iput-object p3, p0, Lio/reactivex/internal/operators/d/a$a;->a:Lio/reactivex/e/b;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 155
    invoke-super {p0}, Lio/reactivex/internal/f/h;->cancel()V

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/d/a$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 144
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/a$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/a$a;->c:Z

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/d/a$a;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lio/reactivex/internal/operators/d/a$a;->b:Ljava/lang/Object;

    .line 150
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/d/a$a;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/a$a;->c:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/a$a;->c:Z

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lio/reactivex/internal/operators/d/a$a;->b:Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/d/a$a;->h:Lorg/b/c;

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

    .line 118
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/a$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/a$a;->a:Lio/reactivex/e/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/d/a$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lio/reactivex/e/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 125
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/a$a;->cancel()V

    .line 127
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/a$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/d/a$a;->d:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-object p1, p0, Lio/reactivex/internal/operators/d/a$a;->d:Lorg/b/d;

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/d/a$a;->h:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 112
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
