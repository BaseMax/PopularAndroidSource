.class public final Lio/reactivex/internal/operators/flowable/r;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/r$b;,
        Lio/reactivex/internal/operators/flowable/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final f:[Lio/reactivex/internal/operators/flowable/r$a;

.field static final g:[Lio/reactivex/internal/operators/flowable/r$a;


# instance fields
.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final d:I

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/r$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile h:J

.field final i:Lio/reactivex/internal/operators/flowable/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field j:Lio/reactivex/internal/operators/flowable/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field k:I

.field l:Ljava/lang/Throwable;

.field volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/r$a;

    .line 54
    sput-object v1, Lio/reactivex/internal/operators/flowable/r;->f:[Lio/reactivex/internal/operators/flowable/r$a;

    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/r$a;

    .line 60
    sput-object v0, Lio/reactivex/internal/operators/flowable/r;->g:[Lio/reactivex/internal/operators/flowable/r$a;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;I)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 100
    iput p2, p0, Lio/reactivex/internal/operators/flowable/r;->d:I

    .line 101
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance p1, Lio/reactivex/internal/operators/flowable/r$b;

    invoke-direct {p1, p2}, Lio/reactivex/internal/operators/flowable/r$b;-><init>(I)V

    .line 103
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->i:Lio/reactivex/internal/operators/flowable/r$b;

    .line 104
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->j:Lio/reactivex/internal/operators/flowable/r$b;

    .line 105
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/flowable/r;->f:[Lio/reactivex/internal/operators/flowable/r$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method final a(Lio/reactivex/internal/operators/flowable/r$a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/r$a<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 216
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/r$a;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 223
    :cond_0
    iget-wide v2, v1, Lio/reactivex/internal/operators/flowable/r$a;->f:J

    .line 224
    iget v4, v1, Lio/reactivex/internal/operators/flowable/r$a;->e:I

    .line 225
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/r$a;->d:Lio/reactivex/internal/operators/flowable/r$b;

    .line 226
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/r$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/r$a;->a:Lorg/b/c;

    .line 228
    iget v8, v0, Lio/reactivex/internal/operators/flowable/r;->d:I

    const/4 v9, 0x1

    move-object v10, v5

    move v5, v4

    const/4 v4, 0x1

    .line 232
    :cond_1
    :goto_0
    iget-boolean v11, v0, Lio/reactivex/internal/operators/flowable/r;->m:Z

    .line 234
    iget-wide v12, v0, Lio/reactivex/internal/operators/flowable/r;->h:J

    const/4 v14, 0x0

    cmp-long v15, v12, v2

    if-nez v15, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    if-eqz v11, :cond_4

    if-eqz v12, :cond_4

    .line 239
    iput-object v13, v1, Lio/reactivex/internal/operators/flowable/r$a;->d:Lio/reactivex/internal/operators/flowable/r$b;

    .line 241
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/r;->l:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 243
    invoke-interface {v7, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 245
    :cond_3
    invoke-interface {v7}, Lorg/b/c;->onComplete()V

    return-void

    :cond_4
    if-nez v12, :cond_7

    .line 253
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v17, v11, v15

    if-nez v17, :cond_5

    .line 257
    iput-object v13, v1, Lio/reactivex/internal/operators/flowable/r$a;->d:Lio/reactivex/internal/operators/flowable/r$b;

    return-void

    :cond_5
    cmp-long v13, v11, v2

    if-eqz v13, :cond_7

    if-ne v5, v8, :cond_6

    .line 266
    iget-object v5, v10, Lio/reactivex/internal/operators/flowable/r$b;->b:Lio/reactivex/internal/operators/flowable/r$b;

    move-object v10, v5

    goto :goto_2

    :cond_6
    move v14, v5

    .line 272
    :goto_2
    iget-object v5, v10, Lio/reactivex/internal/operators/flowable/r$b;->a:[Ljava/lang/Object;

    aget-object v5, v5, v14

    invoke-interface {v7, v5}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v5, v14, 0x1

    const-wide/16 v11, 0x1

    add-long/2addr v2, v11

    goto :goto_0

    .line 285
    :cond_7
    iput-wide v2, v1, Lio/reactivex/internal/operators/flowable/r$a;->f:J

    .line 286
    iput v5, v1, Lio/reactivex/internal/operators/flowable/r$a;->e:I

    .line 287
    iput-object v10, v1, Lio/reactivex/internal/operators/flowable/r$a;->d:Lio/reactivex/internal/operators/flowable/r$b;

    neg-int v4, v4

    .line 289
    invoke-virtual {v1, v4}, Lio/reactivex/internal/operators/flowable/r$a;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public final onComplete()V
    .locals 4

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/r;->m:Z

    .line 339
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/r;->g:[Lio/reactivex/internal/operators/flowable/r$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/r$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 340
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/r;->a(Lio/reactivex/internal/operators/flowable/r$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 324
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/r;->m:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 328
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->l:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 329
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/r;->m:Z

    .line 330
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/flowable/r;->g:[Lio/reactivex/internal/operators/flowable/r$a;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/r$a;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 331
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/r;->a(Lio/reactivex/internal/operators/flowable/r$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 303
    iget v0, p0, Lio/reactivex/internal/operators/flowable/r;->k:I

    .line 305
    iget v1, p0, Lio/reactivex/internal/operators/flowable/r;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    new-instance v1, Lio/reactivex/internal/operators/flowable/r$b;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/r$b;-><init>(I)V

    .line 307
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/r$b;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 308
    iput v3, p0, Lio/reactivex/internal/operators/flowable/r;->k:I

    .line 309
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->j:Lio/reactivex/internal/operators/flowable/r$b;

    iput-object v1, p1, Lio/reactivex/internal/operators/flowable/r$b;->b:Lio/reactivex/internal/operators/flowable/r$b;

    .line 310
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/r;->j:Lio/reactivex/internal/operators/flowable/r$b;

    goto :goto_0

    .line 312
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/r;->j:Lio/reactivex/internal/operators/flowable/r$b;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/r$b;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/2addr v0, v3

    .line 313
    iput v0, p0, Lio/reactivex/internal/operators/flowable/r;->k:I

    .line 315
    :goto_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/r;->h:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/r;->h:J

    .line 316
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/r$a;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    .line 317
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/r;->a(Lio/reactivex/internal/operators/flowable/r$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 298
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void
.end method

.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 110
    new-instance v0, Lio/reactivex/internal/operators/flowable/r$a;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/r$a;-><init>(Lorg/b/c;Lio/reactivex/internal/operators/flowable/r;)V

    .line 111
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 1152
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/r$a;

    .line 1153
    sget-object v1, Lio/reactivex/internal/operators/flowable/r;->g:[Lio/reactivex/internal/operators/flowable/r$a;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    .line 1156
    array-length v1, p1

    add-int/lit8 v3, v1, 0x1

    .line 1159
    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/r$a;

    .line 1160
    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    aput-object v0, v3, v1

    .line 1163
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->b:Lio/reactivex/j;

    invoke-virtual {p1, p0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 117
    :cond_2
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/r;->a(Lio/reactivex/internal/operators/flowable/r$a;)V

    return-void
.end method
