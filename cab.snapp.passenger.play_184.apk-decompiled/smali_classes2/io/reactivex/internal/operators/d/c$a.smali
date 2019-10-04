.class final Lio/reactivex/internal/operators/d/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/a;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/c;
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
        "Lio/reactivex/internal/b/a<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/a<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;"
        }
    .end annotation
.end field

.field d:Lorg/b/d;

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/g;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/b/a<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lio/reactivex/internal/operators/d/c$a;->a:Lio/reactivex/internal/b/a;

    .line 201
    iput-object p2, p0, Lio/reactivex/internal/operators/d/c$a;->b:Lio/reactivex/e/g;

    .line 202
    iput-object p3, p0, Lio/reactivex/internal/operators/d/c$a;->c:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 212
    iget-object v0, p0, Lio/reactivex/internal/operators/d/c$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 287
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/c$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/c$a;->e:Z

    .line 291
    iget-object v0, p0, Lio/reactivex/internal/operators/d/c$a;->a:Lio/reactivex/internal/b/a;

    invoke-interface {v0}, Lio/reactivex/internal/b/a;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 277
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/c$a;->e:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/c$a;->e:Z

    .line 282
    iget-object v0, p0, Lio/reactivex/internal/operators/d/c$a;->a:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/c$a;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lio/reactivex/internal/operators/d/c$a;->e:Z

    if-nez p1, :cond_0

    .line 227
    iget-object p1, p0, Lio/reactivex/internal/operators/d/c$a;->d:Lorg/b/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lio/reactivex/internal/operators/d/c$a;->d:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iput-object p1, p0, Lio/reactivex/internal/operators/d/c$a;->d:Lorg/b/d;

    .line 220
    iget-object p1, p0, Lio/reactivex/internal/operators/d/c$a;->a:Lio/reactivex/internal/b/a;

    invoke-interface {p1, p0}, Lio/reactivex/internal/b/a;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 207
    iget-object v0, p0, Lio/reactivex/internal/operators/d/c$a;->d:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method

.method public final tryOnNext(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 233
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/c$a;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 240
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/c$a;->b:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object v0, p0, Lio/reactivex/internal/operators/d/c$a;->a:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception v0

    .line 242
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 247
    :try_start_1
    iget-object v6, p0, Lio/reactivex/internal/operators/d/c$a;->c:Lio/reactivex/e/c;

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The errorHandler returned a null item"

    invoke-static {v6, v7}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/parallel/ParallelFailureHandling;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    sget-object v7, Lio/reactivex/internal/operators/d/c$1;->a:[I

    invoke-virtual {v6}, Lio/reactivex/parallel/ParallelFailureHandling;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v4, :cond_1

    if-eq v6, v5, :cond_3

    const/4 p1, 0x3

    if-eq v6, p1, :cond_2

    .line 265
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/c$a;->cancel()V

    .line 266
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/d/c$a;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 261
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/c$a;->cancel()V

    .line 262
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/c$a;->onComplete()V

    :cond_3
    return v1

    :catchall_1
    move-exception p1

    .line 249
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 250
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/c$a;->cancel()V

    .line 251
    new-instance v2, Lio/reactivex/c/a;

    new-array v3, v5, [Ljava/lang/Throwable;

    aput-object v0, v3, v1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/d/c$a;->onError(Ljava/lang/Throwable;)V

    return v1
.end method
