.class final Lio/reactivex/internal/operators/d/e$b;
.super Lio/reactivex/internal/operators/d/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/e;
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
        "Lio/reactivex/internal/operators/d/e$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final e:Lio/reactivex/internal/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/a<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/q;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/b/a<",
            "-TT;>;",
            "Lio/reactivex/e/q<",
            "-TT;>;",
            "Lio/reactivex/e/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/d/e$a;-><init>(Lio/reactivex/e/q;Lio/reactivex/e/c;)V

    .line 200
    iput-object p1, p0, Lio/reactivex/internal/operators/d/e$b;->e:Lio/reactivex/internal/b/a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 270
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/e$b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/e$b;->d:Z

    .line 272
    iget-object v0, p0, Lio/reactivex/internal/operators/d/e$b;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v0}, Lio/reactivex/internal/b/a;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 260
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/e$b;->d:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/e$b;->d:Z

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/d/e$b;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/d/e$b;->c:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iput-object p1, p0, Lio/reactivex/internal/operators/d/e$b;->c:Lorg/b/d;

    .line 208
    iget-object p1, p0, Lio/reactivex/internal/operators/d/e$b;->e:Lio/reactivex/internal/b/a;

    invoke-interface {p1, p0}, Lio/reactivex/internal/b/a;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final tryOnNext(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 214
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/e$b;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-wide/16 v2, 0x0

    :cond_0
    const/4 v0, 0x1

    .line 221
    :try_start_0
    iget-object v4, p0, Lio/reactivex/internal/operators/d/e$b;->a:Lio/reactivex/e/q;

    invoke-interface {v4, p1}, Lio/reactivex/e/q;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lio/reactivex/internal/operators/d/e$b;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v2, p1}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1

    :catchall_0
    move-exception v4

    .line 223
    invoke-static {v4}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v5, 0x2

    .line 228
    :try_start_1
    iget-object v6, p0, Lio/reactivex/internal/operators/d/e$b;->b:Lio/reactivex/e/c;

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The errorHandler returned a null item"

    invoke-static {v6, v7}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/parallel/ParallelFailureHandling;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    sget-object v7, Lio/reactivex/internal/operators/d/e$1;->a:[I

    invoke-virtual {v6}, Lio/reactivex/parallel/ParallelFailureHandling;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v0, :cond_0

    if-eq v6, v5, :cond_3

    const/4 p1, 0x3

    if-eq v6, p1, :cond_2

    .line 246
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/e$b;->cancel()V

    .line 247
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/d/e$b;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 242
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/e$b;->cancel()V

    .line 243
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/e$b;->onComplete()V

    :cond_3
    return v1

    :catchall_1
    move-exception p1

    .line 230
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 231
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/e$b;->cancel()V

    .line 232
    new-instance v2, Lio/reactivex/c/a;

    new-array v3, v5, [Ljava/lang/Throwable;

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/d/e$b;->onError(Ljava/lang/Throwable;)V

    :cond_4
    return v1
.end method
