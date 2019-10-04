.class final Lio/reactivex/internal/operators/flowable/ar$a;
.super Lio/reactivex/internal/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ar;
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
        "Lio/reactivex/internal/f/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/a;

.field final d:Lio/reactivex/e/a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/b/a<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/a;-><init>(Lio/reactivex/internal/b/a;)V

    .line 207
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ar$a;->a:Lio/reactivex/e/g;

    .line 208
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ar$a;->b:Lio/reactivex/e/g;

    .line 209
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ar$a;->c:Lio/reactivex/e/a;

    .line 210
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ar$a;->d:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 283
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->c:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->h:Z

    .line 290
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v0}, Lio/reactivex/internal/b/a;->onComplete()V

    .line 293
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->d:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 295
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 296
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 285
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/ar$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 252
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->h:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->h:Z

    const/4 v1, 0x0

    .line 259
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ar$a;->b:Lio/reactivex/e/g;

    invoke-interface {v2, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 261
    invoke-static {v2}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 262
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ar$a;->e:Lio/reactivex/internal/b/a;

    new-instance v4, Lio/reactivex/c/a;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    invoke-direct {v4, v5}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    .line 270
    :cond_1
    :try_start_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ar$a;->d:Lio/reactivex/e/a;

    invoke-interface {p1}, Lio/reactivex/e/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 272
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 273
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 215
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->i:I

    if-eqz v0, :cond_1

    .line 220
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ar$a;->e:Lio/reactivex/internal/b/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/reactivex/internal/b/a;->onNext(Ljava/lang/Object;)V

    return-void

    .line 225
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->a:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 227
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ar$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 311
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ar$a;->g:Lio/reactivex/internal/b/g;

    invoke-interface {v3}, Lio/reactivex/internal/b/g;->poll()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_0

    .line 325
    :try_start_1
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ar$a;->a:Lio/reactivex/e/g;

    invoke-interface {v4, v3}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->d:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 327
    :try_start_2
    invoke-static {v3}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 329
    :try_start_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ar$a;->b:Lio/reactivex/e/g;

    invoke-interface {v4, v3}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 333
    :try_start_4
    invoke-static {v3}, Lio/reactivex/internal/util/h;->throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :catchall_1
    move-exception v4

    .line 331
    new-instance v5, Lio/reactivex/c/a;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-direct {v5, v1}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 336
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ar$a;->d:Lio/reactivex/e/a;

    invoke-interface {v1}, Lio/reactivex/e/a;->run()V

    throw v0

    .line 339
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->i:I

    if-ne v0, v2, :cond_1

    .line 340
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->c:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V

    .line 342
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->d:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V

    :cond_1
    :goto_0
    return-object v3

    :catchall_3
    move-exception v3

    .line 313
    invoke-static {v3}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 315
    :try_start_5
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ar$a;->b:Lio/reactivex/e/g;

    invoke-interface {v4, v3}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 319
    invoke-static {v3}, Lio/reactivex/internal/util/h;->throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :catchall_4
    move-exception v4

    .line 317
    new-instance v5, Lio/reactivex/c/a;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-direct {v5, v1}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    throw v5
.end method

.method public final requestFusion(I)I
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ar$a;->a(I)I

    move-result p1

    return p1
.end method

.method public final tryOnNext(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 236
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 241
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->a:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$a;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 243
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ar$a;->a(Ljava/lang/Throwable;)V

    return v1
.end method
