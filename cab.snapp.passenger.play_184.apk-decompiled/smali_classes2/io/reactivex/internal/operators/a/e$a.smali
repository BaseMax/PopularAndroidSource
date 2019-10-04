.class final Lio/reactivex/internal/operators/a/e$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:[Lio/reactivex/g;

.field c:I

.field final d:Lio/reactivex/internal/disposables/f;


# direct methods
.method constructor <init>(Lio/reactivex/d;[Lio/reactivex/g;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/a/e$a;->a:Lio/reactivex/d;

    .line 49
    iput-object p2, p0, Lio/reactivex/internal/operators/a/e$a;->b:[Lio/reactivex/g;

    .line 50
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/a/e$a;->d:Lio/reactivex/internal/disposables/f;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/a/e$a;->d:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/a/e$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/a/e$a;->b:[Lio/reactivex/g;

    .line 79
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/a/e$a;->d:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/f;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 83
    :cond_3
    iget v1, p0, Lio/reactivex/internal/operators/a/e$a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/reactivex/internal/operators/a/e$a;->c:I

    .line 84
    array-length v2, v0

    if-ne v1, v2, :cond_4

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/a/e$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void

    .line 89
    :cond_4
    aget-object v1, v0, v1

    invoke-interface {v1, p0}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/operators/a/e$a;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    return-void
.end method

.method public final onComplete()V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lio/reactivex/internal/operators/a/e$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/a/e$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/a/e$a;->d:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method
