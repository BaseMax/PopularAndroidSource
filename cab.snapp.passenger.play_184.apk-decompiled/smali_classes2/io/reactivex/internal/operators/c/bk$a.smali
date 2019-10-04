.class final Lio/reactivex/internal/operators/c/bk$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/internal/operators/c/bk$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/internal/operators/c/bk$b;"
    }
.end annotation


# static fields
.field static final n:Ljava/lang/Integer;

.field static final o:Ljava/lang/Integer;

.field static final p:Ljava/lang/Integer;

.field static final q:Ljava/lang/Integer;


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/b;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/reactivex/j/e<",
            "TTRight;>;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/ae<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final h:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TTRight;+",
            "Lio/reactivex/ae<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final i:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/z<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field k:I

.field l:I

.field volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/c/bk$a;->n:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/c/bk$a;->o:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/c/bk$a;->p:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/c/bk$a;->q:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/ae<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lio/reactivex/e/h<",
            "-TTRight;+",
            "Lio/reactivex/ae<",
            "TTRightEnd;>;>;",
            "Lio/reactivex/e/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/z<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 132
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bk$a;->a:Lio/reactivex/ag;

    .line 133
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    .line 134
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/bk$a;->b:Lio/reactivex/internal/d/c;

    .line 135
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/bk$a;->d:Ljava/util/Map;

    .line 136
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/bk$a;->e:Ljava/util/Map;

    .line 137
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/bk$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 138
    iput-object p2, p0, Lio/reactivex/internal/operators/c/bk$a;->g:Lio/reactivex/e/h;

    .line 139
    iput-object p3, p0, Lio/reactivex/internal/operators/c/bk$a;->h:Lio/reactivex/e/h;

    .line 140
    iput-object p4, p0, Lio/reactivex/internal/operators/c/bk$a;->i:Lio/reactivex/e/c;

    .line 141
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/bk$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a()V
    .locals 9

    .line 187
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/bk$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->b:Lio/reactivex/internal/d/c;

    .line 193
    iget-object v1, p0, Lio/reactivex/internal/operators/c/bk$a;->a:Lio/reactivex/ag;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 197
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/bk$a;->m:Z

    if-eqz v4, :cond_2

    .line 198
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 202
    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/c/bk$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 204
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 3162
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 206
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/c/bk$a;->a(Lio/reactivex/ag;)V

    return-void

    .line 210
    :cond_3
    iget-object v4, p0, Lio/reactivex/internal/operators/c/bk$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 212
    :goto_1
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-eqz v4, :cond_7

    if-eqz v7, :cond_7

    .line 217
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/j/e;

    .line 218
    invoke-virtual {v2}, Lio/reactivex/j/e;->onComplete()V

    goto :goto_3

    .line 221
    :cond_6
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 222
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 223
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 225
    invoke-interface {v1}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_7
    if-nez v7, :cond_d

    .line 233
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 235
    sget-object v7, Lio/reactivex/internal/operators/c/bk$a;->n:Ljava/lang/Integer;

    if-ne v6, v7, :cond_9

    .line 239
    invoke-static {}, Lio/reactivex/j/e;->create()Lio/reactivex/j/e;

    move-result-object v5

    .line 240
    iget v6, p0, Lio/reactivex/internal/operators/c/bk$a;->k:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/internal/operators/c/bk$a;->k:I

    .line 241
    iget-object v7, p0, Lio/reactivex/internal/operators/c/bk$a;->d:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/c/bk$a;->g:Lio/reactivex/e/h;

    invoke-interface {v7, v4}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The leftEnd returned a null ObservableSource"

    invoke-static {v7, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    new-instance v8, Lio/reactivex/internal/operators/c/bk$c;

    invoke-direct {v8, p0, v2, v6}, Lio/reactivex/internal/operators/c/bk$c;-><init>(Lio/reactivex/internal/operators/c/bk$b;ZI)V

    .line 253
    iget-object v6, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v6, v8}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 255
    invoke-interface {v7, v8}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 257
    iget-object v6, p0, Lio/reactivex/internal/operators/c/bk$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    .line 259
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 4162
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 261
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/c/bk$a;->a(Lio/reactivex/ag;)V

    return-void

    .line 268
    :cond_8
    :try_start_1
    iget-object v6, p0, Lio/reactivex/internal/operators/c/bk$a;->i:Lio/reactivex/e/c;

    invoke-interface {v6, v4, v5}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "The resultSelector returned a null value"

    invoke-static {v4, v6}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    invoke-interface {v1, v4}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 276
    iget-object v4, p0, Lio/reactivex/internal/operators/c/bk$a;->e:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 277
    invoke-virtual {v5, v6}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_0
    move-exception v2

    .line 270
    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/c/bk$a;->a(Ljava/lang/Throwable;Lio/reactivex/ag;Lio/reactivex/internal/d/c;)V

    return-void

    :catchall_1
    move-exception v2

    .line 248
    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/c/bk$a;->a(Ljava/lang/Throwable;Lio/reactivex/ag;Lio/reactivex/internal/d/c;)V

    return-void

    .line 280
    :cond_9
    sget-object v7, Lio/reactivex/internal/operators/c/bk$a;->o:Ljava/lang/Integer;

    if-ne v6, v7, :cond_b

    .line 284
    iget v6, p0, Lio/reactivex/internal/operators/c/bk$a;->l:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/internal/operators/c/bk$a;->l:I

    .line 286
    iget-object v7, p0, Lio/reactivex/internal/operators/c/bk$a;->e:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :try_start_2
    iget-object v7, p0, Lio/reactivex/internal/operators/c/bk$a;->h:Lio/reactivex/e/h;

    invoke-interface {v7, v4}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The rightEnd returned a null ObservableSource"

    invoke-static {v7, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/ae;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 297
    new-instance v8, Lio/reactivex/internal/operators/c/bk$c;

    invoke-direct {v8, p0, v5, v6}, Lio/reactivex/internal/operators/c/bk$c;-><init>(Lio/reactivex/internal/operators/c/bk$b;ZI)V

    .line 298
    iget-object v5, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v5, v8}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 300
    invoke-interface {v7, v8}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 302
    iget-object v5, p0, Lio/reactivex/internal/operators/c/bk$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 304
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 5162
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 306
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/c/bk$a;->a(Lio/reactivex/ag;)V

    return-void

    .line 310
    :cond_a
    iget-object v5, p0, Lio/reactivex/internal/operators/c/bk$a;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/j/e;

    .line 311
    invoke-virtual {v6, v4}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_2
    move-exception v2

    .line 293
    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/c/bk$a;->a(Ljava/lang/Throwable;Lio/reactivex/ag;Lio/reactivex/internal/d/c;)V

    return-void

    .line 314
    :cond_b
    sget-object v5, Lio/reactivex/internal/operators/c/bk$a;->p:Ljava/lang/Integer;

    if-ne v6, v5, :cond_c

    .line 315
    check-cast v4, Lio/reactivex/internal/operators/c/bk$c;

    .line 317
    iget-object v5, p0, Lio/reactivex/internal/operators/c/bk$a;->d:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/internal/operators/c/bk$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/j/e;

    .line 318
    iget-object v6, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v6, v4}, Lio/reactivex/b/b;->remove(Lio/reactivex/b/c;)Z

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {v5}, Lio/reactivex/j/e;->onComplete()V

    goto/16 :goto_0

    .line 323
    :cond_c
    sget-object v5, Lio/reactivex/internal/operators/c/bk$a;->q:Ljava/lang/Integer;

    if-ne v6, v5, :cond_1

    .line 324
    check-cast v4, Lio/reactivex/internal/operators/c/bk$c;

    .line 326
    iget-object v5, p0, Lio/reactivex/internal/operators/c/bk$a;->e:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/internal/operators/c/bk$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v5, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v5, v4}, Lio/reactivex/b/b;->remove(Lio/reactivex/b/c;)Z

    goto/16 :goto_0

    :cond_d
    neg-int v3, v3

    .line 331
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/c/bk$a;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method private a(Lio/reactivex/ag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "*>;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/h;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lio/reactivex/internal/operators/c/bk$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/j/e;

    .line 169
    invoke-virtual {v2, v0}, Lio/reactivex/j/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/bk$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 173
    iget-object v1, p0, Lio/reactivex/internal/operators/c/bk$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 175
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;Lio/reactivex/ag;Lio/reactivex/internal/d/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/ag<",
            "*>;",
            "Lio/reactivex/internal/d/c<",
            "*>;)V"
        }
    .end annotation

    .line 179
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 181
    invoke-virtual {p3}, Lio/reactivex/internal/d/c;->clear()V

    .line 2162
    iget-object p1, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    .line 183
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/c/bk$a;->a(Lio/reactivex/ag;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 146
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/bk$a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/bk$a;->m:Z

    .line 1162
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/bk$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_1
    return-void
.end method

.method public final innerClose(ZLio/reactivex/internal/operators/c/bk$c;)V
    .locals 1

    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->b:Lio/reactivex/internal/d/c;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/c/bk$a;->p:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/c/bk$a;->q:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/bk$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 367
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final innerCloseError(Ljava/lang/Throwable;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/bk$a;->a()V

    return-void

    .line 376
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerComplete(Lio/reactivex/internal/operators/c/bk$d;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 351
    iget-object p1, p0, Lio/reactivex/internal/operators/c/bk$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 352
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/bk$a;->a()V

    return-void
.end method

.method public final innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object p1, p0, Lio/reactivex/internal/operators/c/bk$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 342
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/bk$a;->a()V

    return-void

    .line 344
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerValue(ZLjava/lang/Object;)V
    .locals 1

    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$a;->b:Lio/reactivex/internal/d/c;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/c/bk$a;->n:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/c/bk$a;->o:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/bk$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 359
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final isDisposed()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/bk$a;->m:Z

    return v0
.end method
