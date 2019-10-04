.class final Lio/reactivex/internal/operators/d/n$b;
.super Lio/reactivex/internal/subscriptions/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/internal/operators/d/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/d/n$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/d/n$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;ILio/reactivex/e/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;I",
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/c;-><init>(Lorg/b/c;)V

    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/d/n$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/d/n$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/d/n$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    new-array p1, p2, [Lio/reactivex/internal/operators/d/n$a;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 72
    new-instance v1, Lio/reactivex/internal/operators/d/n$a;

    invoke-direct {v1, p0, p3}, Lio/reactivex/internal/operators/d/n$a;-><init>(Lio/reactivex/internal/operators/d/n$b;Lio/reactivex/e/c;)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/d/n$b;->a:[Lio/reactivex/internal/operators/d/n$a;

    .line 75
    iput-object p3, p0, Lio/reactivex/internal/operators/d/n$b;->b:Lio/reactivex/e/c;

    .line 76
    iget-object p1, p0, Lio/reactivex/internal/operators/d/n$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 2081
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/reactivex/internal/operators/d/n$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/d/n$c;

    if-nez v1, :cond_1

    .line 2084
    new-instance v1, Lio/reactivex/internal/operators/d/n$c;

    invoke-direct {v1}, Lio/reactivex/internal/operators/d/n$c;-><init>()V

    .line 2085
    iget-object v2, p0, Lio/reactivex/internal/operators/d/n$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2243
    :cond_1
    invoke-virtual {v1}, Lio/reactivex/internal/operators/d/n$c;->get()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 2248
    invoke-virtual {v1, v2, v4}, Lio/reactivex/internal/operators/d/n$c;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    if-gez v2, :cond_3

    .line 2092
    iget-object v2, p0, Lio/reactivex/internal/operators/d/n$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 2096
    iput-object p1, v1, Lio/reactivex/internal/operators/d/n$c;->a:Ljava/lang/Object;

    goto :goto_2

    .line 2098
    :cond_4
    iput-object p1, v1, Lio/reactivex/internal/operators/d/n$c;->b:Ljava/lang/Object;

    .line 2255
    :goto_2
    iget-object p1, v1, Lio/reactivex/internal/operators/d/n$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    if-ne p1, v3, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    .line 2102
    iget-object p1, p0, Lio/reactivex/internal/operators/d/n$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_7

    .line 135
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/d/n$b;->b:Lio/reactivex/e/c;

    iget-object v2, v1, Lio/reactivex/internal/operators/d/n$c;->a:Ljava/lang/Object;

    iget-object v1, v1, Lio/reactivex/internal/operators/d/n$c;->b:Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The reducer returned a null value"

    invoke-static {p1, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 137
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/n$b;->a(Ljava/lang/Throwable;)V

    return-void

    .line 148
    :cond_7
    iget-object p1, p0, Lio/reactivex/internal/operators/d/n$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_9

    .line 149
    iget-object p1, p0, Lio/reactivex/internal/operators/d/n$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/internal/operators/d/n$c;

    .line 150
    iget-object v1, p0, Lio/reactivex/internal/operators/d/n$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    .line 153
    iget-object p1, p1, Lio/reactivex/internal/operators/d/n$c;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/n$b;->complete(Ljava/lang/Object;)V

    return-void

    .line 155
    :cond_8
    iget-object p1, p0, Lio/reactivex/internal/operators/d/n$b;->h:Lorg/b/c;

    invoke-interface {p1}, Lorg/b/c;->onComplete()V

    :cond_9
    return-void
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/d/n$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/n$b;->cancel()V

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/d/n$b;->h:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/n$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 122
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final cancel()V
    .locals 4

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/d/n$b;->a:[Lio/reactivex/internal/operators/d/n$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1227
    invoke-static {v3}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
