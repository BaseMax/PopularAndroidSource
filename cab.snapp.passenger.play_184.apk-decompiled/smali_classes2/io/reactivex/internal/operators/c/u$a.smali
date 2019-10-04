.class final Lio/reactivex/internal/operators/c/u$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/u;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/u$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/u$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/u$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/u$b<",
            "TT;TR;>;I)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 295
    iput-object p1, p0, Lio/reactivex/internal/operators/c/u$a;->a:Lio/reactivex/internal/operators/c/u$b;

    .line 296
    iput p2, p0, Lio/reactivex/internal/operators/c/u$a;->b:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 320
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 5

    .line 316
    iget-object v0, p0, Lio/reactivex/internal/operators/c/u$a;->a:Lio/reactivex/internal/operators/c/u$b;

    iget v1, p0, Lio/reactivex/internal/operators/c/u$a;->b:I

    .line 1268
    monitor-enter v0

    .line 1269
    :try_start_0
    iget-object v2, v0, Lio/reactivex/internal/operators/c/u$b;->d:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1271
    monitor-exit v0

    return-void

    .line 1274
    :cond_0
    aget-object v1, v2, v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 1275
    iget v4, v0, Lio/reactivex/internal/operators/c/u$b;->k:I

    add-int/2addr v4, v3

    iput v4, v0, Lio/reactivex/internal/operators/c/u$b;->k:I

    array-length v2, v2

    if-ne v4, v2, :cond_3

    .line 1276
    :cond_2
    iput-boolean v3, v0, Lio/reactivex/internal/operators/c/u$b;->h:Z

    .line 1278
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 1280
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/u$b;->a()V

    .line 1282
    :cond_4
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/u$b;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 1278
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 311
    iget-object v0, p0, Lio/reactivex/internal/operators/c/u$a;->a:Lio/reactivex/internal/operators/c/u$b;

    iget v1, p0, Lio/reactivex/internal/operators/c/u$a;->b:I

    .line 1242
    iget-object v2, v0, Lio/reactivex/internal/operators/c/u$b;->i:Lio/reactivex/internal/util/b;

    invoke-virtual {v2, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1244
    iget-boolean p1, v0, Lio/reactivex/internal/operators/c/u$b;->f:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 1245
    monitor-enter v0

    .line 1246
    :try_start_0
    iget-object p1, v0, Lio/reactivex/internal/operators/c/u$b;->d:[Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 1248
    monitor-exit v0

    return-void

    .line 1251
    :cond_0
    aget-object v1, p1, v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 1252
    iget v3, v0, Lio/reactivex/internal/operators/c/u$b;->k:I

    add-int/2addr v3, v2

    iput v3, v0, Lio/reactivex/internal/operators/c/u$b;->k:I

    array-length p1, p1

    if-ne v3, p1, :cond_3

    .line 1253
    :cond_2
    iput-boolean v2, v0, Lio/reactivex/internal/operators/c/u$b;->h:Z

    .line 1255
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    .line 1258
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/u$b;->a()V

    .line 1260
    :cond_5
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/u$b;->b()V

    return-void

    .line 1262
    :cond_6
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lio/reactivex/internal/operators/c/u$a;->a:Lio/reactivex/internal/operators/c/u$b;

    iget v1, p0, Lio/reactivex/internal/operators/c/u$a;->b:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/c/u$b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 301
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
