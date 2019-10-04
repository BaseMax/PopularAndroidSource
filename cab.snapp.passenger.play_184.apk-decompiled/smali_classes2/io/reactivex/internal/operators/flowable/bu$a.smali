.class final Lio/reactivex/internal/operators/flowable/bu$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/bo$b;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bu;
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
            "TT",
            "Left;",
            ">;"
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
            "-TTRight;+TR;>;"
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

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/bu$a;->o:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/bu$a;->p:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/bu$a;->q:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/bu$a;->r:Ljava/lang/Integer;

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
            "-TTRight;+TR;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 117
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->a:Lorg/b/c;

    .line 118
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 119
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    .line 120
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v0

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->c:Lio/reactivex/internal/d/c;

    .line 121
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->e:Ljava/util/Map;

    .line 122
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->f:Ljava/util/Map;

    .line 123
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 124
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bu$a;->h:Lio/reactivex/e/h;

    .line 125
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/bu$a;->i:Lio/reactivex/e/h;

    .line 126
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/bu$a;->j:Lio/reactivex/e/c;

    .line 127
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a()V
    .locals 17

    move-object/from16 v1, p0

    .line 171
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/bu$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/bu$a;->c:Lio/reactivex/internal/d/c;

    .line 177
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/bu$a;->a:Lorg/b/c;

    const/4 v0, 0x1

    const/4 v4, 0x1

    .line 181
    :goto_0
    iget-boolean v5, v1, Lio/reactivex/internal/operators/flowable/bu$a;->n:Z

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 186
    :cond_1
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/bu$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 188
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->clear()V

    .line 3150
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 190
    invoke-direct {v1, v3}, Lio/reactivex/internal/operators/flowable/bu$a;->a(Lorg/b/c;)V

    return-void

    .line 194
    :cond_2
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/bu$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 196
    :goto_1
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v8, :cond_5

    .line 202
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 203
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 204
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 206
    invoke-interface {v3}, Lorg/b/c;->onComplete()V

    return-void

    :cond_5
    if-nez v8, :cond_f

    .line 214
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 216
    sget-object v8, Lio/reactivex/internal/operators/flowable/bu$a;->o:Ljava/lang/Integer;

    const-wide/16 v9, 0x1

    const-string v11, "Could not emit value due to lack of requests"

    const-string v12, "The resultSelector returned a null value"

    if-ne v7, v8, :cond_9

    .line 220
    iget v6, v1, Lio/reactivex/internal/operators/flowable/bu$a;->l:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v1, Lio/reactivex/internal/operators/flowable/bu$a;->l:I

    .line 221
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/bu$a;->e:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :try_start_0
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/bu$a;->h:Lio/reactivex/e/h;

    invoke-interface {v7, v5}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The leftEnd returned a null Publisher"

    invoke-static {v7, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    new-instance v8, Lio/reactivex/internal/operators/flowable/bo$c;

    invoke-direct {v8, v1, v0, v6}, Lio/reactivex/internal/operators/flowable/bo$c;-><init>(Lio/reactivex/internal/operators/flowable/bo$b;ZI)V

    .line 233
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v6, v8}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 235
    invoke-interface {v7, v8}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 237
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/bu$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 239
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->clear()V

    .line 4150
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 241
    invoke-direct {v1, v3}, Lio/reactivex/internal/operators/flowable/bu$a;->a(Lorg/b/c;)V

    return-void

    .line 245
    :cond_6
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/bu$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 248
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/bu$a;->f:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v13, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 253
    :try_start_1
    iget-object v15, v1, Lio/reactivex/internal/operators/flowable/bu$a;->j:Lio/reactivex/e/c;

    invoke-interface {v15, v5, v0}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v12}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v15, v13, v6

    if-eqz v15, :cond_7

    .line 260
    invoke-interface {v3, v0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    add-long/2addr v13, v9

    const/4 v0, 0x1

    goto :goto_3

    .line 264
    :cond_7
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lio/reactivex/c/c;

    invoke-direct {v4, v11}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 265
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->clear()V

    .line 5150
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 267
    invoke-direct {v1, v3}, Lio/reactivex/internal/operators/flowable/bu$a;->a(Lorg/b/c;)V

    return-void

    :catchall_0
    move-exception v0

    .line 255
    invoke-direct {v1, v0, v3, v2}, Lio/reactivex/internal/operators/flowable/bu$a;->a(Ljava/lang/Throwable;Lorg/b/c;Lio/reactivex/internal/b/j;)V

    return-void

    :cond_8
    const-wide/16 v5, 0x0

    cmp-long v0, v13, v5

    if-eqz v0, :cond_10

    .line 273
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v13, v14}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    .line 228
    invoke-direct {v1, v0, v3, v2}, Lio/reactivex/internal/operators/flowable/bu$a;->a(Ljava/lang/Throwable;Lorg/b/c;Lio/reactivex/internal/b/j;)V

    return-void

    .line 276
    :cond_9
    sget-object v0, Lio/reactivex/internal/operators/flowable/bu$a;->p:Ljava/lang/Integer;

    if-ne v7, v0, :cond_d

    .line 280
    iget v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->m:I

    add-int/lit8 v7, v0, 0x1

    iput v7, v1, Lio/reactivex/internal/operators/flowable/bu$a;->m:I

    .line 282
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/bu$a;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :try_start_2
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/bu$a;->i:Lio/reactivex/e/h;

    invoke-interface {v7, v5}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The rightEnd returned a null Publisher"

    invoke-static {v7, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/b/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 293
    new-instance v8, Lio/reactivex/internal/operators/flowable/bo$c;

    invoke-direct {v8, v1, v6, v0}, Lio/reactivex/internal/operators/flowable/bo$c;-><init>(Lio/reactivex/internal/operators/flowable/bo$b;ZI)V

    .line 294
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0, v8}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 296
    invoke-interface {v7, v8}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 298
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    .line 300
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->clear()V

    .line 6150
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 302
    invoke-direct {v1, v3}, Lio/reactivex/internal/operators/flowable/bu$a;->a(Lorg/b/c;)V

    return-void

    .line 306
    :cond_a
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 309
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v13, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 314
    :try_start_3
    iget-object v15, v1, Lio/reactivex/internal/operators/flowable/bu$a;->j:Lio/reactivex/e/c;

    invoke-interface {v15, v8, v5}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v12}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    cmp-long v15, v13, v6

    if-eqz v15, :cond_b

    .line 321
    invoke-interface {v3, v8}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    add-long/2addr v13, v9

    goto :goto_4

    .line 325
    :cond_b
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lio/reactivex/c/c;

    invoke-direct {v4, v11}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 326
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->clear()V

    .line 7150
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 328
    invoke-direct {v1, v3}, Lio/reactivex/internal/operators/flowable/bu$a;->a(Lorg/b/c;)V

    return-void

    :catchall_2
    move-exception v0

    .line 316
    invoke-direct {v1, v0, v3, v2}, Lio/reactivex/internal/operators/flowable/bu$a;->a(Ljava/lang/Throwable;Lorg/b/c;Lio/reactivex/internal/b/j;)V

    return-void

    :cond_c
    const-wide/16 v5, 0x0

    cmp-long v0, v13, v5

    if-eqz v0, :cond_10

    .line 334
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v13, v14}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 289
    invoke-direct {v1, v0, v3, v2}, Lio/reactivex/internal/operators/flowable/bu$a;->a(Ljava/lang/Throwable;Lorg/b/c;Lio/reactivex/internal/b/j;)V

    return-void

    .line 337
    :cond_d
    sget-object v0, Lio/reactivex/internal/operators/flowable/bu$a;->q:Ljava/lang/Integer;

    if-ne v7, v0, :cond_e

    .line 338
    check-cast v5, Lio/reactivex/internal/operators/flowable/bo$c;

    .line 340
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->e:Ljava/util/Map;

    iget v6, v5, Lio/reactivex/internal/operators/flowable/bo$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0, v5}, Lio/reactivex/b/b;->remove(Lio/reactivex/b/c;)Z

    goto :goto_5

    .line 343
    :cond_e
    sget-object v0, Lio/reactivex/internal/operators/flowable/bu$a;->r:Ljava/lang/Integer;

    if-ne v7, v0, :cond_10

    .line 344
    check-cast v5, Lio/reactivex/internal/operators/flowable/bo$c;

    .line 346
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->f:Ljava/util/Map;

    iget v6, v5, Lio/reactivex/internal/operators/flowable/bo$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0, v5}, Lio/reactivex/b/b;->remove(Lio/reactivex/b/c;)Z

    goto :goto_5

    :cond_f
    neg-int v0, v4

    .line 351
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/bu$a;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_10

    return-void

    :cond_10
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_0
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

    .line 163
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 165
    invoke-interface {p3}, Lio/reactivex/internal/b/j;->clear()V

    .line 2150
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    .line 167
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/bu$a;->a(Lorg/b/c;)V

    return-void
.end method

.method private a(Lorg/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "*>;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/h;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 157
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 159
    invoke-interface {p1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->n:Z

    .line 1150
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 144
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bu$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->c:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_1
    return-void
.end method

.method public final innerClose(ZLio/reactivex/internal/operators/flowable/bo$c;)V
    .locals 1

    .line 385
    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->c:Lio/reactivex/internal/d/c;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/flowable/bu$a;->q:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/flowable/bu$a;->r:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bu$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 387
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final innerCloseError(Ljava/lang/Throwable;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bu$a;->a()V

    return-void

    .line 396
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerComplete(Lio/reactivex/internal/operators/flowable/bo$d;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->d:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 371
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 372
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bu$a;->a()V

    return-void
.end method

.method public final innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bu$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 362
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bu$a;->a()V

    return-void

    .line 364
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerValue(ZLjava/lang/Object;)V
    .locals 1

    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->c:Lio/reactivex/internal/d/c;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/flowable/bu$a;->o:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/flowable/bu$a;->p:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 379
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bu$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 379
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final request(J)V
    .locals 1

    .line 132
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bu$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
