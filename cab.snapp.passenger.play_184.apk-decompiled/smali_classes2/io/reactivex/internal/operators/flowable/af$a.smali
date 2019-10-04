.class abstract Lio/reactivex/internal/operators/flowable/af$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/l;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/l<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/disposables/f;


# direct methods
.method constructor <init>(Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 252
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/af$a;->a:Lorg/b/c;

    .line 253
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/af$a;->b:Lio/reactivex/internal/disposables/f;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/af$a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/af$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/af$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/af$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/f;->dispose()V

    throw v0
.end method

.method protected final a(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 286
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/af$a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 292
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/af$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/af$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {p1}, Lio/reactivex/internal/disposables/f;->dispose()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/af$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    throw p1
.end method

.method b()V
    .locals 0

    return-void
.end method

.method c()V
    .locals 0

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 301
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/af$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    .line 302
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/af$a;->b()V

    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/af$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 0

    .line 258
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/af$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 274
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/af$a;->tryOnError(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 316
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 318
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/af$a;->c()V

    :cond_0
    return-void
.end method

.method public final requested()J
    .locals 2

    .line 338
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/af$a;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final serialize()Lio/reactivex/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/l<",
            "TT;>;"
        }
    .end annotation

    .line 343
    new-instance v0, Lio/reactivex/internal/operators/flowable/af$h;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/af$h;-><init>(Lio/reactivex/internal/operators/flowable/af$a;)V

    return-object v0
.end method

.method public final setCancellable(Lio/reactivex/e/f;)V
    .locals 1

    .line 333
    new-instance v0, Lio/reactivex/internal/disposables/b;

    invoke-direct {v0, p1}, Lio/reactivex/internal/disposables/b;-><init>(Lio/reactivex/e/f;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/af$a;->setDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public final setDisposable(Lio/reactivex/b/c;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/af$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->update(Lio/reactivex/b/c;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicLong;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s{%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .locals 0

    .line 281
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/af$a;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
