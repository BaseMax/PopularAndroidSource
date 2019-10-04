.class final Lio/reactivex/internal/operators/c/br$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/internal/operators/c/bk$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/br;
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
            "TT",
            "Left;",
            ">;"
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
            "-TTRight;+TR;>;"
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

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/c/br$a;->n:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/c/br$a;->o:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/c/br$a;->p:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/c/br$a;->q:Ljava/lang/Integer;

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
            "-TTRight;+TR;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 117
    iput-object p1, p0, Lio/reactivex/internal/operators/c/br$a;->a:Lio/reactivex/ag;

    .line 118
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    .line 119
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/br$a;->b:Lio/reactivex/internal/d/c;

    .line 120
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/br$a;->d:Ljava/util/Map;

    .line 121
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/br$a;->e:Ljava/util/Map;

    .line 122
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/br$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 123
    iput-object p2, p0, Lio/reactivex/internal/operators/c/br$a;->g:Lio/reactivex/e/h;

    .line 124
    iput-object p3, p0, Lio/reactivex/internal/operators/c/br$a;->h:Lio/reactivex/e/h;

    .line 125
    iput-object p4, p0, Lio/reactivex/internal/operators/c/br$a;->i:Lio/reactivex/e/c;

    .line 126
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/br$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a()V
    .locals 10

    .line 167
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/br$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->b:Lio/reactivex/internal/d/c;

    .line 173
    iget-object v1, p0, Lio/reactivex/internal/operators/c/br$a;->a:Lio/reactivex/ag;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 177
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/br$a;->m:Z

    if-eqz v4, :cond_2

    .line 178
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 182
    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/c/br$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 184
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 3146
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 186
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/c/br$a;->a(Lio/reactivex/ag;)V

    return-void

    .line 190
    :cond_3
    iget-object v4, p0, Lio/reactivex/internal/operators/c/br$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 192
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
    if-eqz v4, :cond_6

    if-eqz v7, :cond_6

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 200
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 202
    invoke-interface {v1}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_6
    if-nez v7, :cond_c

    .line 210
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 212
    sget-object v7, Lio/reactivex/internal/operators/c/br$a;->n:Ljava/lang/Integer;

    const-string v8, "The resultSelector returned a null value"

    if-ne v6, v7, :cond_8

    .line 216
    iget v5, p0, Lio/reactivex/internal/operators/c/br$a;->k:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lio/reactivex/internal/operators/c/br$a;->k:I

    .line 217
    iget-object v6, p0, Lio/reactivex/internal/operators/c/br$a;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :try_start_0
    iget-object v6, p0, Lio/reactivex/internal/operators/c/br$a;->g:Lio/reactivex/e/h;

    invoke-interface {v6, v4}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The leftEnd returned a null ObservableSource"

    invoke-static {v6, v7}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 228
    new-instance v7, Lio/reactivex/internal/operators/c/bk$c;

    invoke-direct {v7, p0, v2, v5}, Lio/reactivex/internal/operators/c/bk$c;-><init>(Lio/reactivex/internal/operators/c/bk$b;ZI)V

    .line 229
    iget-object v5, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v5, v7}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 231
    invoke-interface {v6, v7}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 233
    iget-object v5, p0, Lio/reactivex/internal/operators/c/br$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    .line 235
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 4146
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 237
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/c/br$a;->a(Lio/reactivex/ag;)V

    return-void

    .line 241
    :cond_7
    iget-object v5, p0, Lio/reactivex/internal/operators/c/br$a;->e:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 246
    :try_start_1
    iget-object v7, p0, Lio/reactivex/internal/operators/c/br$a;->i:Lio/reactivex/e/c;

    invoke-interface {v7, v4, v6}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    invoke-interface {v1, v6}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 248
    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/c/br$a;->a(Ljava/lang/Throwable;Lio/reactivex/ag;Lio/reactivex/internal/d/c;)V

    return-void

    :catchall_1
    move-exception v2

    .line 224
    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/c/br$a;->a(Ljava/lang/Throwable;Lio/reactivex/ag;Lio/reactivex/internal/d/c;)V

    return-void

    .line 255
    :cond_8
    sget-object v7, Lio/reactivex/internal/operators/c/br$a;->o:Ljava/lang/Integer;

    if-ne v6, v7, :cond_a

    .line 259
    iget v6, p0, Lio/reactivex/internal/operators/c/br$a;->l:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/internal/operators/c/br$a;->l:I

    .line 261
    iget-object v7, p0, Lio/reactivex/internal/operators/c/br$a;->e:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :try_start_2
    iget-object v7, p0, Lio/reactivex/internal/operators/c/br$a;->h:Lio/reactivex/e/h;

    invoke-interface {v7, v4}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v9, "The rightEnd returned a null ObservableSource"

    invoke-static {v7, v9}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/ae;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 272
    new-instance v9, Lio/reactivex/internal/operators/c/bk$c;

    invoke-direct {v9, p0, v5, v6}, Lio/reactivex/internal/operators/c/bk$c;-><init>(Lio/reactivex/internal/operators/c/bk$b;ZI)V

    .line 273
    iget-object v5, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v5, v9}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 275
    invoke-interface {v7, v9}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 277
    iget-object v5, p0, Lio/reactivex/internal/operators/c/br$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_9

    .line 279
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 5146
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 281
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/c/br$a;->a(Lio/reactivex/ag;)V

    return-void

    .line 285
    :cond_9
    iget-object v5, p0, Lio/reactivex/internal/operators/c/br$a;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 290
    :try_start_3
    iget-object v7, p0, Lio/reactivex/internal/operators/c/br$a;->i:Lio/reactivex/e/c;

    invoke-interface {v7, v6, v4}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 296
    invoke-interface {v1, v6}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_2
    move-exception v2

    .line 292
    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/c/br$a;->a(Ljava/lang/Throwable;Lio/reactivex/ag;Lio/reactivex/internal/d/c;)V

    return-void

    :catchall_3
    move-exception v2

    .line 268
    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/c/br$a;->a(Ljava/lang/Throwable;Lio/reactivex/ag;Lio/reactivex/internal/d/c;)V

    return-void

    .line 299
    :cond_a
    sget-object v5, Lio/reactivex/internal/operators/c/br$a;->p:Ljava/lang/Integer;

    if-ne v6, v5, :cond_b

    .line 300
    check-cast v4, Lio/reactivex/internal/operators/c/bk$c;

    .line 302
    iget-object v5, p0, Lio/reactivex/internal/operators/c/br$a;->d:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/internal/operators/c/bk$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v5, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v5, v4}, Lio/reactivex/b/b;->remove(Lio/reactivex/b/c;)Z

    goto/16 :goto_0

    .line 305
    :cond_b
    check-cast v4, Lio/reactivex/internal/operators/c/bk$c;

    .line 307
    iget-object v5, p0, Lio/reactivex/internal/operators/c/br$a;->e:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/internal/operators/c/bk$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v5, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v5, v4}, Lio/reactivex/b/b;->remove(Lio/reactivex/b/c;)Z

    goto/16 :goto_0

    :cond_c
    neg-int v3, v3

    .line 312
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/c/br$a;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method private a(Lio/reactivex/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "*>;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/h;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lio/reactivex/internal/operators/c/br$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 153
    iget-object v1, p0, Lio/reactivex/internal/operators/c/br$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 155
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

    .line 159
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 161
    invoke-virtual {p3}, Lio/reactivex/internal/d/c;->clear()V

    .line 2146
    iget-object p1, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    .line 163
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/c/br$a;->a(Lio/reactivex/ag;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/br$a;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/br$a;->m:Z

    .line 1146
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 134
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/br$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_0
    return-void
.end method

.method public final innerClose(ZLio/reactivex/internal/operators/c/bk$c;)V
    .locals 1

    .line 346
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->b:Lio/reactivex/internal/d/c;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/c/br$a;->p:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/c/br$a;->q:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/br$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 348
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final innerCloseError(Ljava/lang/Throwable;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/br$a;->a()V

    return-void

    .line 357
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerComplete(Lio/reactivex/internal/operators/c/bk$d;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 332
    iget-object p1, p0, Lio/reactivex/internal/operators/c/br$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 333
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/br$a;->a()V

    return-void
.end method

.method public final innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object p1, p0, Lio/reactivex/internal/operators/c/br$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 323
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/br$a;->a()V

    return-void

    .line 325
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerValue(ZLjava/lang/Object;)V
    .locals 1

    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/br$a;->b:Lio/reactivex/internal/d/c;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/c/br$a;->n:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/c/br$a;->o:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 340
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/br$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 340
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final isDisposed()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/br$a;->m:Z

    return v0
.end method
