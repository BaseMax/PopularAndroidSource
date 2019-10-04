.class final Lio/reactivex/internal/operators/flowable/bo$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/bo$b;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bo;
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
        "Lio/reactivex/internal/operators/flowable/bo$b;",
        "Lorg/b/d;"
    }
.end annotation


# static fields
.field static final o:Ljava/lang/Integer;

.field static final p:Ljava/lang/Integer;

.field static final q:Ljava/lang/Integer;

.field static final r:Ljava/lang/Integer;


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field final c:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/b/b;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/reactivex/h/c<",
            "TTRight;>;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT",
            "Left;",
            "+",
            "Lorg/b/b<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final i:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TTRight;+",
            "Lorg/b/b<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final j:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/j<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field l:I

.field m:I

.field volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/bo$a;->o:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/bo$a;->p:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/bo$a;->q:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/bo$a;->r:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT",
            "Left;",
            "+",
            "Lorg/b/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lio/reactivex/e/h<",
            "-TTRight;+",
            "Lorg/b/b<",
            "TTRightEnd;>;>;",
            "Lio/reactivex/e/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/j<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 133
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->a:Lorg/b/c;

    .line 134
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 135
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    .line 136
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v0

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->c:Lio/reactivex/internal/d/c;

    .line 137
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->e:Ljava/util/Map;

    .line 138
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->f:Ljava/util/Map;

    .line 139
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 140
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bo$a;->h:Lio/reactivex/e/h;

    .line 141
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/bo$a;->i:Lio/reactivex/e/h;

    .line 142
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/bo$a;->j:Lio/reactivex/e/c;

    .line 143
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a()V
    .locals 11

    .line 191
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bo$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->c:Lio/reactivex/internal/d/c;

    .line 197
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->a:Lorg/b/c;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 201
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/bo$a;->n:Z

    if-eqz v4, :cond_2

    .line 202
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 206
    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bo$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 208
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 3166
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 210
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/flowable/bo$a;->a(Lorg/b/c;)V

    return-void

    .line 214
    :cond_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bo$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 216
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

    .line 221
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->e:Ljava/util/Map;

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

    check-cast v2, Lio/reactivex/h/c;

    .line 222
    invoke-virtual {v2}, Lio/reactivex/h/c;->onComplete()V

    goto :goto_3

    .line 225
    :cond_6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 229
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    return-void

    :cond_7
    if-nez v7, :cond_e

    .line 237
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 239
    sget-object v7, Lio/reactivex/internal/operators/flowable/bo$a;->o:Ljava/lang/Integer;

    if-ne v6, v7, :cond_a

    .line 243
    invoke-static {}, Lio/reactivex/h/c;->create()Lio/reactivex/h/c;

    move-result-object v5

    .line 244
    iget v6, p0, Lio/reactivex/internal/operators/flowable/bo$a;->l:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/internal/operators/flowable/bo$a;->l:I

    .line 245
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/bo$a;->e:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/bo$a;->h:Lio/reactivex/e/h;

    invoke-interface {v7, v4}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The leftEnd returned a null Publisher"

    invoke-static {v7, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    new-instance v8, Lio/reactivex/internal/operators/flowable/bo$c;

    invoke-direct {v8, p0, v2, v6}, Lio/reactivex/internal/operators/flowable/bo$c;-><init>(Lio/reactivex/internal/operators/flowable/bo$b;ZI)V

    .line 257
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v6, v8}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 259
    invoke-interface {v7, v8}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 261
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/bo$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    .line 263
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 4166
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 265
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/flowable/bo$a;->a(Lorg/b/c;)V

    return-void

    .line 272
    :cond_8
    :try_start_1
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/bo$a;->j:Lio/reactivex/e/c;

    invoke-interface {v6, v4, v5}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "The resultSelector returned a null value"

    invoke-static {v4, v6}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/bo$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_9

    .line 280
    invoke-interface {v1, v4}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 281
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bo$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    invoke-static {v4, v6, v7}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 287
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bo$a;->f:Ljava/util/Map;

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

    .line 288
    invoke-virtual {v5, v6}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    .line 283
    :cond_9
    new-instance v2, Lio/reactivex/c/c;

    const-string v3, "Could not emit value due to lack of requests"

    invoke-direct {v2, v3}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/flowable/bo$a;->a(Ljava/lang/Throwable;Lorg/b/c;Lio/reactivex/internal/b/j;)V

    return-void

    :catchall_0
    move-exception v2

    .line 274
    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/flowable/bo$a;->a(Ljava/lang/Throwable;Lorg/b/c;Lio/reactivex/internal/b/j;)V

    return-void

    :catchall_1
    move-exception v2

    .line 252
    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/flowable/bo$a;->a(Ljava/lang/Throwable;Lorg/b/c;Lio/reactivex/internal/b/j;)V

    return-void

    .line 291
    :cond_a
    sget-object v7, Lio/reactivex/internal/operators/flowable/bo$a;->p:Ljava/lang/Integer;

    if-ne v6, v7, :cond_c

    .line 295
    iget v6, p0, Lio/reactivex/internal/operators/flowable/bo$a;->m:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/internal/operators/flowable/bo$a;->m:I

    .line 297
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/bo$a;->f:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :try_start_2
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/bo$a;->i:Lio/reactivex/e/h;

    invoke-interface {v7, v4}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The rightEnd returned a null Publisher"

    invoke-static {v7, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/b/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 308
    new-instance v8, Lio/reactivex/internal/operators/flowable/bo$c;

    invoke-direct {v8, p0, v5, v6}, Lio/reactivex/internal/operators/flowable/bo$c;-><init>(Lio/reactivex/internal/operators/flowable/bo$b;ZI)V

    .line 309
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v5, v8}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 311
    invoke-interface {v7, v8}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 313
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/bo$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_b

    .line 315
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 5166
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 317
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/flowable/bo$a;->a(Lorg/b/c;)V

    return-void

    .line 321
    :cond_b
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/bo$a;->e:Ljava/util/Map;

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

    check-cast v6, Lio/reactivex/h/c;

    .line 322
    invoke-virtual {v6, v4}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_2
    move-exception v2

    .line 304
    invoke-direct {p0, v2, v1, v0}, Lio/reactivex/internal/operators/flowable/bo$a;->a(Ljava/lang/Throwable;Lorg/b/c;Lio/reactivex/internal/b/j;)V

    return-void

    .line 325
    :cond_c
    sget-object v5, Lio/reactivex/internal/operators/flowable/bo$a;->q:Ljava/lang/Integer;

    if-ne v6, v5, :cond_d

    .line 326
    check-cast v4, Lio/reactivex/internal/operators/flowable/bo$c;

    .line 328
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/bo$a;->e:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/internal/operators/flowable/bo$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/h/c;

    .line 329
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v6, v4}, Lio/reactivex/b/b;->remove(Lio/reactivex/b/c;)Z

    if-eqz v5, :cond_1

    .line 331
    invoke-virtual {v5}, Lio/reactivex/h/c;->onComplete()V

    goto/16 :goto_0

    .line 334
    :cond_d
    sget-object v5, Lio/reactivex/internal/operators/flowable/bo$a;->r:Ljava/lang/Integer;

    if-ne v6, v5, :cond_1

    .line 335
    check-cast v4, Lio/reactivex/internal/operators/flowable/bo$c;

    .line 337
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/bo$a;->f:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/internal/operators/flowable/bo$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v5, v4}, Lio/reactivex/b/b;->remove(Lio/reactivex/b/c;)Z

    goto/16 :goto_0

    :cond_e
    neg-int v3, v3

    .line 342
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/bo$a;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method private a(Ljava/lang/Throwable;Lorg/b/c;Lio/reactivex/internal/b/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lorg/b/c<",
            "*>;",
            "Lio/reactivex/internal/b/j<",
            "*>;)V"
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 184
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 185
    invoke-interface {p3}, Lio/reactivex/internal/b/j;->clear()V

    .line 2166
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    .line 187
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/bo$a;->a(Lorg/b/c;)V

    return-void
.end method

.method private a(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "*>;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/h;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->e:Ljava/util/Map;

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

    check-cast v2, Lio/reactivex/h/c;

    .line 173
    invoke-virtual {v2, v0}, Lio/reactivex/h/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 177
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 179
    invoke-interface {p1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->n:Z

    .line 1166
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bo$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->c:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_1
    return-void
.end method

.method public final innerClose(ZLio/reactivex/internal/operators/flowable/bo$c;)V
    .locals 1

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->c:Lio/reactivex/internal/d/c;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/flowable/bo$a;->q:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/flowable/bo$a;->r:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bo$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 378
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final innerCloseError(Ljava/lang/Throwable;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bo$a;->a()V

    return-void

    .line 387
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerComplete(Lio/reactivex/internal/operators/flowable/bo$d;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 362
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 363
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bo$a;->a()V

    return-void
.end method

.method public final innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 353
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bo$a;->a()V

    return-void

    .line 355
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerValue(ZLjava/lang/Object;)V
    .locals 1

    .line 368
    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->c:Lio/reactivex/internal/d/c;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/flowable/bo$a;->o:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/flowable/bo$a;->p:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bo$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 370
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final request(J)V
    .locals 1

    .line 148
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
