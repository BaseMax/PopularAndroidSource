.class final Lio/reactivex/internal/operators/d/n$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/n;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/d/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/d/n$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/d/n$b;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/d/n$b<",
            "TT;>;",
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 176
    iput-object p1, p0, Lio/reactivex/internal/operators/d/n$a;->a:Lio/reactivex/internal/operators/d/n$b;

    .line 177
    iput-object p2, p0, Lio/reactivex/internal/operators/d/n$a;->b:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 220
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/n$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/n$a;->d:Z

    .line 222
    iget-object v0, p0, Lio/reactivex/internal/operators/d/n$a;->a:Lio/reactivex/internal/operators/d/n$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/d/n$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/d/n$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/n$a;->d:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/n$a;->d:Z

    .line 215
    iget-object v0, p0, Lio/reactivex/internal/operators/d/n$a;->a:Lio/reactivex/internal/operators/d/n$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/d/n$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 187
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/n$a;->d:Z

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lio/reactivex/internal/operators/d/n$a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 191
    iput-object p1, p0, Lio/reactivex/internal/operators/d/n$a;->c:Ljava/lang/Object;

    return-void

    .line 195
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/d/n$a;->b:Lio/reactivex/e/c;

    invoke-interface {v1, v0, p1}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iput-object p1, p0, Lio/reactivex/internal/operators/d/n$a;->c:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 197
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 198
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/n$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 199
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/n$a;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 182
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method
