.class final Lio/reactivex/internal/operators/c/ct$j;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# static fields
.field static final c:[Lio/reactivex/internal/operators/c/ct$d;

.field static final d:[Lio/reactivex/internal/operators/c/ct$d;


# instance fields
.field final a:Lio/reactivex/internal/operators/c/ct$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ct$h<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/c/ct$d;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/c/ct$d;

    .line 239
    sput-object v1, Lio/reactivex/internal/operators/c/ct$j;->c:[Lio/reactivex/internal/operators/c/ct$d;

    new-array v0, v0, [Lio/reactivex/internal/operators/c/ct$d;

    .line 241
    sput-object v0, Lio/reactivex/internal/operators/c/ct$j;->d:[Lio/reactivex/internal/operators/c/ct$d;

    return-void
.end method

.method constructor <init>(Lio/reactivex/internal/operators/c/ct$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ct$h<",
            "TT;>;)V"
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 252
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ct$j;->a:Lio/reactivex/internal/operators/c/ct$h;

    .line 254
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/c/ct$j;->c:[Lio/reactivex/internal/operators/c/ct$d;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ct$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 255
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ct$j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a()V
    .locals 5

    .line 399
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/ct$d;

    .line 400
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 401
    iget-object v4, p0, Lio/reactivex/internal/operators/c/ct$j;->a:Lio/reactivex/internal/operators/c/ct$h;

    invoke-interface {v4, v3}, Lio/reactivex/internal/operators/c/ct$h;->replay(Lio/reactivex/internal/operators/c/ct$d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    .line 410
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/c/ct$j;->d:[Lio/reactivex/internal/operators/c/ct$d;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/ct$d;

    .line 411
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 412
    iget-object v4, p0, Lio/reactivex/internal/operators/c/ct$j;->a:Lio/reactivex/internal/operators/c/ct$h;

    invoke-interface {v4, v3}, Lio/reactivex/internal/operators/c/ct$h;->replay(Lio/reactivex/internal/operators/c/ct$d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lio/reactivex/internal/operators/c/ct$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ct$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 312
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/ct$d;

    .line 314
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 323
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

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

    .line 337
    sget-object v1, Lio/reactivex/internal/operators/c/ct$j;->c:[Lio/reactivex/internal/operators/c/ct$d;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 340
    new-array v5, v5, [Lio/reactivex/internal/operators/c/ct$d;

    .line 342
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 344
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 347
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ct$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final dispose()V
    .locals 2

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/c/ct$j;->d:[Lio/reactivex/internal/operators/c/ct$d;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 271
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/c/ct$j;->d:[Lio/reactivex/internal/operators/c/ct$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 387
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ct$j;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ct$j;->b:Z

    .line 389
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$j;->a:Lio/reactivex/internal/operators/c/ct$h;

    invoke-interface {v0}, Lio/reactivex/internal/operators/c/ct$h;->complete()V

    .line 390
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ct$j;->b()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 374
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ct$j;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ct$j;->b:Z

    .line 376
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$j;->a:Lio/reactivex/internal/operators/c/ct$h;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/c/ct$h;->error(Ljava/lang/Throwable;)V

    .line 377
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ct$j;->b()V

    return-void

    .line 379
    :cond_0
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

    .line 364
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ct$j;->b:Z

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$j;->a:Lio/reactivex/internal/operators/c/ct$h;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/c/ct$h;->next(Ljava/lang/Object;)V

    .line 366
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ct$j;->a()V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 357
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ct$j;->a()V

    :cond_0
    return-void
.end method
