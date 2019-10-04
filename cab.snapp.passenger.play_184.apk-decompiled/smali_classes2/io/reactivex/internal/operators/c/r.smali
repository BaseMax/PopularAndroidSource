.class public final Lio/reactivex/internal/operators/c/r;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/r$b;,
        Lio/reactivex/internal/operators/c/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TT;>;",
        "Lio/reactivex/ag<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final e:[Lio/reactivex/internal/operators/c/r$a;

.field static final f:[Lio/reactivex/internal/operators/c/r$a;


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/c/r$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile g:J

.field final h:Lio/reactivex/internal/operators/c/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:Lio/reactivex/internal/operators/c/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field j:I

.field k:Ljava/lang/Throwable;

.field volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/c/r$a;

    .line 50
    sput-object v1, Lio/reactivex/internal/operators/c/r;->e:[Lio/reactivex/internal/operators/c/r$a;

    new-array v0, v0, [Lio/reactivex/internal/operators/c/r$a;

    .line 56
    sput-object v0, Lio/reactivex/internal/operators/c/r;->f:[Lio/reactivex/internal/operators/c/r$a;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/z;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;I)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 96
    iput p2, p0, Lio/reactivex/internal/operators/c/r;->c:I

    .line 97
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    new-instance p1, Lio/reactivex/internal/operators/c/r$b;

    invoke-direct {p1, p2}, Lio/reactivex/internal/operators/c/r$b;-><init>(I)V

    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/c/r;->h:Lio/reactivex/internal/operators/c/r$b;

    .line 100
    iput-object p1, p0, Lio/reactivex/internal/operators/c/r;->i:Lio/reactivex/internal/operators/c/r$b;

    .line 101
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/c/r;->e:[Lio/reactivex/internal/operators/c/r$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private a(Lio/reactivex/internal/operators/c/r$a;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/r$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/r$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/c/r$a;->e:J

    .line 220
    iget v2, p1, Lio/reactivex/internal/operators/c/r$a;->d:I

    .line 221
    iget-object v3, p1, Lio/reactivex/internal/operators/c/r$a;->c:Lio/reactivex/internal/operators/c/r$b;

    .line 222
    iget-object v4, p1, Lio/reactivex/internal/operators/c/r$a;->a:Lio/reactivex/ag;

    .line 223
    iget v5, p0, Lio/reactivex/internal/operators/c/r;->c:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 227
    :cond_1
    :goto_0
    iget-boolean v8, p1, Lio/reactivex/internal/operators/c/r$a;->f:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 228
    iput-object v9, p1, Lio/reactivex/internal/operators/c/r$a;->c:Lio/reactivex/internal/operators/c/r$b;

    return-void

    .line 233
    :cond_2
    iget-boolean v8, p0, Lio/reactivex/internal/operators/c/r;->l:Z

    .line 235
    iget-wide v10, p0, Lio/reactivex/internal/operators/c/r;->g:J

    const/4 v12, 0x0

    cmp-long v13, v10, v0

    if-nez v13, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v10, :cond_5

    .line 240
    iput-object v9, p1, Lio/reactivex/internal/operators/c/r$a;->c:Lio/reactivex/internal/operators/c/r$b;

    .line 242
    iget-object p1, p0, Lio/reactivex/internal/operators/c/r;->k:Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 244
    invoke-interface {v4, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 246
    :cond_4
    invoke-interface {v4}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_5
    if-nez v10, :cond_7

    if-ne v2, v5, :cond_6

    .line 256
    iget-object v2, v3, Lio/reactivex/internal/operators/c/r$b;->b:Lio/reactivex/internal/operators/c/r$b;

    move-object v3, v2

    const/4 v2, 0x0

    .line 262
    :cond_6
    iget-object v8, v3, Lio/reactivex/internal/operators/c/r$b;->a:[Ljava/lang/Object;

    aget-object v8, v8, v2

    invoke-interface {v4, v8}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    add-int/2addr v2, v6

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    .line 274
    :cond_7
    iput-wide v0, p1, Lio/reactivex/internal/operators/c/r$a;->e:J

    .line 275
    iput v2, p1, Lio/reactivex/internal/operators/c/r$a;->d:I

    .line 276
    iput-object v3, p1, Lio/reactivex/internal/operators/c/r$a;->c:Lio/reactivex/internal/operators/c/r$b;

    neg-int v7, v7

    .line 278
    invoke-virtual {p1, v7}, Lio/reactivex/internal/operators/c/r$a;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 4

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/r;->l:Z

    .line 324
    iget-object v0, p0, Lio/reactivex/internal/operators/c/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/c/r;->f:[Lio/reactivex/internal/operators/c/r$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/r$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 325
    invoke-direct {p0, v3}, Lio/reactivex/internal/operators/c/r;->a(Lio/reactivex/internal/operators/c/r$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 313
    iput-object p1, p0, Lio/reactivex/internal/operators/c/r;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/r;->l:Z

    .line 315
    iget-object p1, p0, Lio/reactivex/internal/operators/c/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/c/r;->f:[Lio/reactivex/internal/operators/c/r$a;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/c/r$a;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 316
    invoke-direct {p0, v2}, Lio/reactivex/internal/operators/c/r;->a(Lio/reactivex/internal/operators/c/r$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 292
    iget v0, p0, Lio/reactivex/internal/operators/c/r;->j:I

    .line 294
    iget v1, p0, Lio/reactivex/internal/operators/c/r;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 295
    new-instance v1, Lio/reactivex/internal/operators/c/r$b;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/c/r$b;-><init>(I)V

    .line 296
    iget-object v0, v1, Lio/reactivex/internal/operators/c/r$b;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 297
    iput v3, p0, Lio/reactivex/internal/operators/c/r;->j:I

    .line 298
    iget-object p1, p0, Lio/reactivex/internal/operators/c/r;->i:Lio/reactivex/internal/operators/c/r$b;

    iput-object v1, p1, Lio/reactivex/internal/operators/c/r$b;->b:Lio/reactivex/internal/operators/c/r$b;

    .line 299
    iput-object v1, p0, Lio/reactivex/internal/operators/c/r;->i:Lio/reactivex/internal/operators/c/r$b;

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/r;->i:Lio/reactivex/internal/operators/c/r$b;

    iget-object v1, v1, Lio/reactivex/internal/operators/c/r$b;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/2addr v0, v3

    .line 302
    iput v0, p0, Lio/reactivex/internal/operators/c/r;->j:I

    .line 304
    :goto_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/r;->g:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/reactivex/internal/operators/c/r;->g:J

    .line 305
    iget-object p1, p0, Lio/reactivex/internal/operators/c/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/c/r$a;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    .line 306
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/c/r;->a(Lio/reactivex/internal/operators/c/r$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    return-void
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Lio/reactivex/internal/operators/c/r$a;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/c/r$a;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/operators/c/r;)V

    .line 107
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1148
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/c/r$a;

    .line 1149
    sget-object v1, Lio/reactivex/internal/operators/c/r;->f:[Lio/reactivex/internal/operators/c/r$a;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    .line 1152
    array-length v1, p1

    add-int/lit8 v3, v1, 0x1

    .line 1155
    new-array v3, v3, [Lio/reactivex/internal/operators/c/r$a;

    .line 1156
    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1157
    aput-object v0, v3, v1

    .line 1159
    iget-object v1, p0, Lio/reactivex/internal/operators/c/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/c/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lio/reactivex/internal/operators/c/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    iget-object p1, p0, Lio/reactivex/internal/operators/c/r;->a:Lio/reactivex/ae;

    invoke-interface {p1, p0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 113
    :cond_2
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/c/r;->a(Lio/reactivex/internal/operators/c/r$a;)V

    return-void
.end method
