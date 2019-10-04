.class public final Lio/reactivex/j/a;
.super Lio/reactivex/j/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/j/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final c:[Lio/reactivex/j/a$a;

.field static final d:[Lio/reactivex/j/a$a;

.field private static final j:[Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/j/a$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/locks/ReadWriteLock;

.field final f:Ljava/util/concurrent/locks/Lock;

.field final g:Ljava/util/concurrent/locks/Lock;

.field final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field i:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 157
    sput-object v1, Lio/reactivex/j/a;->j:[Ljava/lang/Object;

    new-array v1, v0, [Lio/reactivex/j/a$a;

    .line 164
    sput-object v1, Lio/reactivex/j/a;->c:[Lio/reactivex/j/a$a;

    new-array v0, v0, [Lio/reactivex/j/a$a;

    .line 167
    sput-object v0, Lio/reactivex/j/a;->d:[Lio/reactivex/j/a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 211
    invoke-direct {p0}, Lio/reactivex/j/d;-><init>()V

    .line 212
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/j/a;->e:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 213
    iget-object v0, p0, Lio/reactivex/j/a;->e:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/j/a;->f:Ljava/util/concurrent/locks/Lock;

    .line 214
    iget-object v0, p0, Lio/reactivex/j/a;->e:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/j/a;->g:Ljava/util/concurrent/locks/Lock;

    .line 215
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/j/a;->c:[Lio/reactivex/j/a$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/j/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 216
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/j/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 217
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/j/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Lio/reactivex/j/a;-><init>()V

    .line 228
    iget-object v0, p0, Lio/reactivex/j/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "defaultValue is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)[Lio/reactivex/j/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/j/a$a<",
            "TT;>;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lio/reactivex/j/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/j/a;->d:[Lio/reactivex/j/a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/j/a$a;

    .line 455
    sget-object v1, Lio/reactivex/j/a;->d:[Lio/reactivex/j/a$a;

    if-eq v0, v1, :cond_0

    .line 457
    invoke-direct {p0, p1}, Lio/reactivex/j/a;->b(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 4

    .line 464
    iget-object v0, p0, Lio/reactivex/j/a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 465
    iget-wide v0, p0, Lio/reactivex/j/a;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/j/a;->i:J

    .line 466
    iget-object v0, p0, Lio/reactivex/j/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 467
    iget-object p1, p0, Lio/reactivex/j/a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static create()Lio/reactivex/j/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/j/a<",
            "TT;>;"
        }
    .end annotation

    .line 186
    new-instance v0, Lio/reactivex/j/a;

    invoke-direct {v0}, Lio/reactivex/j/a;-><init>()V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/Object;)Lio/reactivex/j/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/j/a<",
            "TT;>;"
        }
    .end annotation

    .line 203
    new-instance v0, Lio/reactivex/j/a;

    invoke-direct {v0, p0}, Lio/reactivex/j/a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final a(Lio/reactivex/j/a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j/a$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 421
    :cond_0
    iget-object v0, p0, Lio/reactivex/j/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/j/a$a;

    .line 422
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 428
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 439
    sget-object v1, Lio/reactivex/j/a;->c:[Lio/reactivex/j/a$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 441
    new-array v5, v5, [Lio/reactivex/j/a$a;

    .line 442
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 443
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 445
    :goto_2
    iget-object v2, p0, Lio/reactivex/j/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 308
    iget-object v0, p0, Lio/reactivex/j/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 309
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lio/reactivex/j/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 323
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValues()[Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    sget-object v0, Lio/reactivex/j/a;->j:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 339
    invoke-virtual {p0, v0}, Lio/reactivex/j/a;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 340
    sget-object v1, Lio/reactivex/j/a;->j:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    iget-object v0, p0, Lio/reactivex/j/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 360
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 367
    array-length v3, p1

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 368
    aput-object v0, p1, v2

    .line 369
    array-length v0, p1

    if-eq v0, v4, :cond_2

    .line 370
    aput-object v1, p1, v4

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 374
    aput-object v0, p1, v2

    :cond_2
    :goto_0
    return-object p1

    .line 361
    :cond_3
    :goto_1
    array-length v0, p1

    if-eqz v0, :cond_4

    .line 362
    aput-object v1, p1, v2

    :cond_4
    return-object p1
.end method

.method public final hasComplete()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lio/reactivex/j/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lio/reactivex/j/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/j/a$a;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasThrowable()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lio/reactivex/j/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 388
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasValue()Z
    .locals 2

    .line 397
    iget-object v0, p0, Lio/reactivex/j/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 7

    .line 287
    iget-object v0, p0, Lio/reactivex/j/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    .line 291
    invoke-direct {p0, v0}, Lio/reactivex/j/a;->a(Ljava/lang/Object;)[Lio/reactivex/j/a$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 292
    iget-wide v5, p0, Lio/reactivex/j/a;->i:J

    invoke-virtual {v4, v0, v5, v6}, Lio/reactivex/j/a$a;->a(Ljava/lang/Object;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 274
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lio/reactivex/j/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 279
    :cond_0
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 280
    invoke-direct {p0, p1}, Lio/reactivex/j/a;->a(Ljava/lang/Object;)[Lio/reactivex/j/a$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 281
    iget-wide v4, p0, Lio/reactivex/j/a;->i:J

    invoke-virtual {v3, p1, v4, v5}, Lio/reactivex/j/a$a;->a(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 260
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lio/reactivex/j/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 266
    invoke-direct {p0, p1}, Lio/reactivex/j/a;->b(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lio/reactivex/j/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/j/a$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 268
    iget-wide v4, p0, Lio/reactivex/j/a;->i:J

    invoke-virtual {v3, p1, v4, v5}, Lio/reactivex/j/a$a;->a(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lio/reactivex/j/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 233
    new-instance v0, Lio/reactivex/j/a$a;

    invoke-direct {v0, p1, p0}, Lio/reactivex/j/a$a;-><init>(Lio/reactivex/ag;Lio/reactivex/j/a;)V

    .line 234
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1403
    :cond_0
    iget-object v1, p0, Lio/reactivex/j/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/j/a$a;

    .line 1404
    sget-object v2, Lio/reactivex/j/a;->d:[Lio/reactivex/j/a$a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 1407
    :cond_1
    array-length v2, v1

    add-int/lit8 v5, v2, 0x1

    .line 1409
    new-array v5, v5, [Lio/reactivex/j/a$a;

    .line 1410
    invoke-static {v1, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1411
    aput-object v0, v5, v2

    .line 1412
    iget-object v2, p0, Lio/reactivex/j/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_8

    .line 236
    iget-boolean p1, v0, Lio/reactivex/j/a$a;->g:Z

    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p0, v0}, Lio/reactivex/j/a;->a(Lio/reactivex/j/a$a;)V

    return-void

    .line 1505
    :cond_2
    iget-boolean p1, v0, Lio/reactivex/j/a$a;->g:Z

    if-nez p1, :cond_7

    .line 1509
    monitor-enter v0

    .line 1510
    :try_start_0
    iget-boolean p1, v0, Lio/reactivex/j/a$a;->g:Z

    if-eqz p1, :cond_3

    .line 1511
    monitor-exit v0

    return-void

    .line 1513
    :cond_3
    iget-boolean p1, v0, Lio/reactivex/j/a$a;->c:Z

    if-eqz p1, :cond_4

    .line 1514
    monitor-exit v0

    return-void

    .line 1517
    :cond_4
    iget-object p1, v0, Lio/reactivex/j/a$a;->b:Lio/reactivex/j/a;

    .line 1518
    iget-object v1, p1, Lio/reactivex/j/a;->f:Ljava/util/concurrent/locks/Lock;

    .line 1520
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1521
    iget-wide v5, p1, Lio/reactivex/j/a;->i:J

    iput-wide v5, v0, Lio/reactivex/j/a$a;->h:J

    .line 1522
    iget-object p1, p1, Lio/reactivex/j/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    .line 1523
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 1525
    :goto_1
    iput-boolean v1, v0, Lio/reactivex/j/a$a;->d:Z

    .line 1526
    iput-boolean v3, v0, Lio/reactivex/j/a$a;->c:Z

    .line 1527
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_7

    .line 1530
    invoke-virtual {v0, p1}, Lio/reactivex/j/a$a;->test(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1574
    :goto_2
    iget-boolean p1, v0, Lio/reactivex/j/a$a;->g:Z

    if-nez p1, :cond_7

    .line 1578
    monitor-enter v0

    .line 1579
    :try_start_1
    iget-object p1, v0, Lio/reactivex/j/a$a;->e:Lio/reactivex/internal/util/a;

    if-nez p1, :cond_6

    .line 1581
    iput-boolean v4, v0, Lio/reactivex/j/a$a;->d:Z

    .line 1582
    monitor-exit v0

    return-void

    :cond_6
    const/4 v1, 0x0

    .line 1584
    iput-object v1, v0, Lio/reactivex/j/a$a;->e:Lio/reactivex/internal/util/a;

    .line 1585
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1587
    invoke-virtual {p1, v0}, Lio/reactivex/internal/util/a;->forEachWhile(Lio/reactivex/internal/util/a$a;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1585
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 1527
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_7
    return-void

    .line 242
    :cond_8
    iget-object v0, p0, Lio/reactivex/j/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 243
    sget-object v1, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-ne v0, v1, :cond_9

    .line 244
    invoke-interface {p1}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 246
    :cond_9
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
