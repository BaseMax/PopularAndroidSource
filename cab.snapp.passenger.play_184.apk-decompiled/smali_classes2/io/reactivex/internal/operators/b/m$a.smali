.class final Lio/reactivex/internal/operators/b/m$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/m$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/b;

.field final d:Lio/reactivex/internal/operators/b/m$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/b/m$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field final f:Lio/reactivex/internal/util/ErrorMode;

.field g:Lio/reactivex/b/c;

.field volatile h:Z

.field volatile i:Z

.field j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field volatile k:I


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/b/m$a;->a:Lio/reactivex/ag;

    .line 103
    iput-object p2, p0, Lio/reactivex/internal/operators/b/m$a;->b:Lio/reactivex/e/h;

    .line 104
    iput-object p4, p0, Lio/reactivex/internal/operators/b/m$a;->f:Lio/reactivex/internal/util/ErrorMode;

    .line 105
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/m$a;->c:Lio/reactivex/internal/util/b;

    .line 106
    new-instance p1, Lio/reactivex/internal/operators/b/m$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/b/m$a$a;-><init>(Lio/reactivex/internal/operators/b/m$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/m$a;->d:Lio/reactivex/internal/operators/b/m$a$a;

    .line 107
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p3}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/m$a;->e:Lio/reactivex/internal/b/i;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    .line 183
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/m$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/b/m$a;->a:Lio/reactivex/ag;

    .line 189
    iget-object v1, p0, Lio/reactivex/internal/operators/b/m$a;->f:Lio/reactivex/internal/util/ErrorMode;

    .line 190
    iget-object v2, p0, Lio/reactivex/internal/operators/b/m$a;->e:Lio/reactivex/internal/b/i;

    .line 191
    iget-object v3, p0, Lio/reactivex/internal/operators/b/m$a;->c:Lio/reactivex/internal/util/b;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 196
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lio/reactivex/internal/operators/b/m$a;->i:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 197
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->clear()V

    .line 198
    iput-object v7, p0, Lio/reactivex/internal/operators/b/m$a;->j:Ljava/lang/Object;

    goto/16 :goto_1

    .line 202
    :cond_2
    iget v6, p0, Lio/reactivex/internal/operators/b/m$a;->k:I

    .line 204
    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 205
    sget-object v8, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-eq v1, v8, :cond_3

    sget-object v8, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    if-ne v1, v8, :cond_4

    if-nez v6, :cond_4

    .line 207
    :cond_3
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->clear()V

    .line 208
    iput-object v7, p0, Lio/reactivex/internal/operators/b/m$a;->j:Ljava/lang/Object;

    .line 209
    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 210
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    const/4 v8, 0x0

    if-nez v6, :cond_8

    .line 216
    iget-boolean v6, p0, Lio/reactivex/internal/operators/b/m$a;->h:Z

    .line 217
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    .line 221
    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    .line 223
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 225
    :cond_6
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    if-nez v8, :cond_9

    .line 237
    :try_start_0
    iget-object v6, p0, Lio/reactivex/internal/operators/b/m$a;->b:Lio/reactivex/e/h;

    invoke-interface {v6, v7}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The mapper returned a null MaybeSource"

    invoke-static {v6, v7}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iput v4, p0, Lio/reactivex/internal/operators/b/m$a;->k:I

    .line 249
    iget-object v7, p0, Lio/reactivex/internal/operators/b/m$a;->d:Lio/reactivex/internal/operators/b/m$a$a;

    invoke-interface {v6, v7}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 239
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 240
    iget-object v4, p0, Lio/reactivex/internal/operators/b/m$a;->g:Lio/reactivex/b/c;

    invoke-interface {v4}, Lio/reactivex/b/c;->dispose()V

    .line 241
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->clear()V

    .line 242
    invoke-virtual {v3, v1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 243
    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 244
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v9, 0x2

    if-ne v6, v9, :cond_9

    .line 252
    iget-object v6, p0, Lio/reactivex/internal/operators/b/m$a;->j:Ljava/lang/Object;

    .line 253
    iput-object v7, p0, Lio/reactivex/internal/operators/b/m$a;->j:Ljava/lang/Object;

    .line 254
    invoke-interface {v0, v6}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 256
    iput v8, p0, Lio/reactivex/internal/operators/b/m$a;->k:I

    goto/16 :goto_0

    :cond_9
    :goto_1
    neg-int v5, v5

    .line 262
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/b/m$a;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/m$a;->i:Z

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/b/m$a;->g:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/b/m$a;->d:Lio/reactivex/internal/operators/b/m$a$a;

    .line 2302
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 148
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/m$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/b/m$a;->e:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lio/reactivex/internal/operators/b/m$a;->j:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lio/reactivex/internal/operators/b/m$a;->i:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/m$a;->h:Z

    .line 140
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/m$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/b/m$a;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object p1, p0, Lio/reactivex/internal/operators/b/m$a;->f:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lio/reactivex/internal/operators/b/m$a;->d:Lio/reactivex/internal/operators/b/m$a$a;

    .line 1302
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lio/reactivex/internal/operators/b/m$a;->h:Z

    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/m$a;->a()V

    return-void

    .line 133
    :cond_1
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

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/b/m$a;->e:Lio/reactivex/internal/b/i;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/m$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/b/m$a;->g:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iput-object p1, p0, Lio/reactivex/internal/operators/b/m$a;->g:Lio/reactivex/b/c;

    .line 114
    iget-object p1, p0, Lio/reactivex/internal/operators/b/m$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
