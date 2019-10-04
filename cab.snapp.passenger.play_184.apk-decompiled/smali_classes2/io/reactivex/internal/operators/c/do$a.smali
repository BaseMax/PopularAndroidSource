.class final Lio/reactivex/internal/operators/c/do$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/do$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/do$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field volatile d:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field volatile e:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/do$b;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/do$b<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 339
    iput-object p1, p0, Lio/reactivex/internal/operators/c/do$a;->a:Lio/reactivex/internal/operators/c/do$b;

    .line 340
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/do$a;->b:J

    .line 341
    iput p4, p0, Lio/reactivex/internal/operators/c/do$a;->c:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 392
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 5

    .line 385
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/do$a;->b:J

    iget-object v2, p0, Lio/reactivex/internal/operators/c/do$a;->a:Lio/reactivex/internal/operators/c/do$b;

    iget-wide v2, v2, Lio/reactivex/internal/operators/c/do$b;->k:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/do$a;->e:Z

    .line 387
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$a;->a:Lio/reactivex/internal/operators/c/do$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/do$b;->a()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 380
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$a;->a:Lio/reactivex/internal/operators/c/do$b;

    .line 1314
    iget-wide v1, p0, Lio/reactivex/internal/operators/c/do$a;->b:J

    iget-wide v3, v0, Lio/reactivex/internal/operators/c/do$b;->k:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1315
    iget-boolean p1, v0, Lio/reactivex/internal/operators/c/do$b;->d:Z

    if-nez p1, :cond_0

    .line 1316
    iget-object p1, v0, Lio/reactivex/internal/operators/c/do$b;->h:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    const/4 p1, 0x1

    .line 1318
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/do$a;->e:Z

    .line 1319
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/do$b;->a()V

    return-void

    .line 1321
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 370
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/do$a;->b:J

    iget-object v2, p0, Lio/reactivex/internal/operators/c/do$a;->a:Lio/reactivex/internal/operators/c/do$b;

    iget-wide v2, v2, Lio/reactivex/internal/operators/c/do$b;->k:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$a;->d:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/do$a;->a:Lio/reactivex/internal/operators/c/do$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/do$b;->a()V

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 346
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    instance-of v0, p1, Lio/reactivex/internal/b/e;

    if-eqz v0, :cond_1

    .line 349
    check-cast p1, Lio/reactivex/internal/b/e;

    const/4 v0, 0x7

    .line 351
    invoke-interface {p1, v0}, Lio/reactivex/internal/b/e;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 353
    iput-object p1, p0, Lio/reactivex/internal/operators/c/do$a;->d:Lio/reactivex/internal/b/j;

    .line 354
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/do$a;->e:Z

    .line 355
    iget-object p1, p0, Lio/reactivex/internal/operators/c/do$a;->a:Lio/reactivex/internal/operators/c/do$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/do$b;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 359
    iput-object p1, p0, Lio/reactivex/internal/operators/c/do$a;->d:Lio/reactivex/internal/b/j;

    return-void

    .line 364
    :cond_1
    new-instance p1, Lio/reactivex/internal/d/c;

    iget v0, p0, Lio/reactivex/internal/operators/c/do$a;->c:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/do$a;->d:Lio/reactivex/internal/b/j;

    :cond_2
    return-void
.end method
