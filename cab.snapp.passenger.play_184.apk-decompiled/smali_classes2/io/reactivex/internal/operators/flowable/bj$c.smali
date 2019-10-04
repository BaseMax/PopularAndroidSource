.class final Lio/reactivex/internal/operators/flowable/bj$c;
.super Lio/reactivex/internal/operators/flowable/bj$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bj;
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
        "Lio/reactivex/internal/operators/flowable/bj$a<",
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
.method constructor <init>(Lorg/b/c;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/bj$a;-><init>(Ljava/util/Iterator;)V

    .line 148
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bj$c;->d:Lorg/b/c;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bj$c;->a:Ljava/util/Iterator;

    .line 154
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bj$c;->d:Lorg/b/c;

    .line 156
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/bj$c;->b:Z

    if-eqz v2, :cond_1

    return-void

    .line 163
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/bj$c;->b:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-nez v2, :cond_3

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Iterator.next() returned a null value"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 178
    :cond_3
    invoke-interface {v1, v2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 181
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/bj$c;->b:Z

    if-eqz v2, :cond_4

    return-void

    .line 188
    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 196
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bj$c;->b:Z

    if-nez v0, :cond_5

    .line 197
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 191
    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 165
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 166
    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method final a(J)V
    .locals 8

    .line 207
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bj$c;->a:Ljava/util/Iterator;

    .line 208
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bj$c;->d:Lorg/b/c;

    const-wide/16 v2, 0x0

    move-wide v4, p1

    :cond_0
    move-wide p1, v2

    :cond_1
    :goto_0
    cmp-long v6, p1, v4

    if-eqz v6, :cond_8

    .line 214
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/bj$c;->b:Z

    if-eqz v6, :cond_2

    return-void

    .line 221
    :cond_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 228
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/bj$c;->b:Z

    if-eqz v7, :cond_3

    return-void

    :cond_3
    if-nez v6, :cond_4

    .line 233
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Iterator.next() returned a null value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 236
    :cond_4
    invoke-interface {v1, v6}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 239
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/bj$c;->b:Z

    if-eqz v6, :cond_5

    return-void

    .line 246
    :cond_5
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_7

    .line 254
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/bj$c;->b:Z

    if-nez p1, :cond_6

    .line 255
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    :cond_6
    return-void

    :cond_7
    const-wide/16 v6, 0x1

    add-long/2addr p1, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 248
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 249
    invoke-interface {v1, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 223
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 224
    invoke-interface {v1, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 263
    :cond_8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bj$c;->get()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-nez v6, :cond_1

    neg-long p1, p1

    .line 265
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/bj$c;->addAndGet(J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    return-void
.end method
