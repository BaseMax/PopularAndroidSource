.class final Lio/reactivex/internal/operators/c/cd$a;
.super Lio/reactivex/internal/c/b;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cd;
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
        "Lio/reactivex/internal/c/b<",
        "TT;>;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/ah$c;

.field final c:Z

.field final d:I

.field e:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field f:Lio/reactivex/b/c;

.field g:Ljava/lang/Throwable;

.field volatile h:Z

.field volatile i:Z

.field j:I

.field k:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/ah$c;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/ah$c;",
            "ZI)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lio/reactivex/internal/c/b;-><init>()V

    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->a:Lio/reactivex/ag;

    .line 73
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cd$a;->b:Lio/reactivex/ah$c;

    .line 74
    iput-boolean p3, p0, Lio/reactivex/internal/operators/c/cd$a;->c:Z

    .line 75
    iput p4, p0, Lio/reactivex/internal/operators/c/cd$a;->d:I

    return-void
.end method

.method private a()V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cd$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->b:Lio/reactivex/ah$c;

    invoke-virtual {v0, p0}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    :cond_0
    return-void
.end method

.method private a(ZZLio/reactivex/ag;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/ag<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 261
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    invoke-interface {p1}, Lio/reactivex/internal/b/j;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 265
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->g:Ljava/lang/Throwable;

    .line 266
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cd$a;->c:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    .line 268
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    if-eqz p1, :cond_1

    .line 270
    invoke-interface {p3, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-interface {p3}, Lio/reactivex/ag;->onComplete()V

    .line 274
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->b:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 279
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    .line 280
    iget-object p2, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    invoke-interface {p2}, Lio/reactivex/internal/b/j;->clear()V

    .line 281
    invoke-interface {p3, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 282
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->b:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 286
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    .line 287
    invoke-interface {p3}, Lio/reactivex/ag;->onComplete()V

    .line 288
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->b:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 313
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->f:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->b:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    .line 148
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cd$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 135
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cd$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/cd$a;->h:Z

    .line 139
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/cd$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cd$a;->h:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 128
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/cd$a;->h:Z

    .line 130
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/cd$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 112
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cd$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/c/cd$a;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/cd$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->f:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->f:Lio/reactivex/b/c;

    .line 82
    instance-of v0, p1, Lio/reactivex/internal/b/e;

    if-eqz v0, :cond_1

    .line 84
    check-cast p1, Lio/reactivex/internal/b/e;

    const/4 v0, 0x7

    .line 86
    invoke-interface {p1, v0}, Lio/reactivex/internal/b/e;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iput v0, p0, Lio/reactivex/internal/operators/c/cd$a;->j:I

    .line 90
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    .line 91
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/cd$a;->h:Z

    .line 92
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 93
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/cd$a;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 97
    iput v0, p0, Lio/reactivex/internal/operators/c/cd$a;->j:I

    .line 98
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    .line 99
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    return-void

    .line 104
    :cond_1
    new-instance p1, Lio/reactivex/internal/d/c;

    iget v0, p0, Lio/reactivex/internal/operators/c/cd$a;->d:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    .line 106
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cd$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_2
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1
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

    .line 308
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/cd$a;->k:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final run()V
    .locals 7

    .line 252
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cd$a;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 1215
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    if-nez v2, :cond_4

    .line 1219
    iget-boolean v2, p0, Lio/reactivex/internal/operators/c/cd$a;->h:Z

    .line 1220
    iget-object v3, p0, Lio/reactivex/internal/operators/c/cd$a;->g:Ljava/lang/Throwable;

    .line 1222
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/cd$a;->c:Z

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1223
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    .line 1224
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, v3}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 1225
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->b:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 1229
    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/c/cd$a;->a:Lio/reactivex/ag;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    .line 1232
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    .line 1233
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 1235
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cd$a;->a:Lio/reactivex/ag;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1237
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    .line 1239
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->b:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :cond_3
    neg-int v0, v0

    .line 1243
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/cd$a;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    return-void

    .line 2168
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->e:Lio/reactivex/internal/b/j;

    .line 2169
    iget-object v2, p0, Lio/reactivex/internal/operators/c/cd$a;->a:Lio/reactivex/ag;

    const/4 v3, 0x1

    .line 2172
    :cond_6
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/cd$a;->h:Z

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v5

    invoke-direct {p0, v4, v5, v2}, Lio/reactivex/internal/operators/c/cd$a;->a(ZZLio/reactivex/ag;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2177
    :goto_1
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/cd$a;->h:Z

    .line 2181
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_7

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    .line 2193
    :goto_2
    invoke-direct {p0, v4, v6, v2}, Lio/reactivex/internal/operators/c/cd$a;->a(ZZLio/reactivex/ag;)Z

    move-result v4

    if-nez v4, :cond_9

    if-nez v6, :cond_8

    .line 2201
    invoke-interface {v2, v5}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    neg-int v3, v3

    .line 2204
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/c/cd$a;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :catchall_0
    move-exception v3

    .line 2183
    invoke-static {v3}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2184
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/cd$a;->i:Z

    .line 2185
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cd$a;->f:Lio/reactivex/b/c;

    invoke-interface {v1}, Lio/reactivex/b/c;->dispose()V

    .line 2186
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 2187
    invoke-interface {v2, v3}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 2188
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd$a;->b:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    :cond_9
    :goto_3
    return-void
.end method
