.class public final Lio/reactivex/internal/f/g;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/a;

.field final d:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final e:I

.field f:I

.field final g:I


# direct methods
.method public constructor <init>(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/g<",
            "-",
            "Lorg/b/d;",
            ">;I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/f/g;->a:Lio/reactivex/e/g;

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/f/g;->b:Lio/reactivex/e/g;

    .line 48
    iput-object p3, p0, Lio/reactivex/internal/f/g;->c:Lio/reactivex/e/a;

    .line 49
    iput-object p4, p0, Lio/reactivex/internal/f/g;->d:Lio/reactivex/e/g;

    .line 50
    iput p5, p0, Lio/reactivex/internal/f/g;->e:I

    shr-int/lit8 p1, p5, 0x2

    sub-int/2addr p5, p1

    .line 51
    iput p5, p0, Lio/reactivex/internal/f/g;->g:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 133
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final dispose()V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/f/g;->cancel()V

    return-void
.end method

.method public final hasCustomOnError()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/f/g;->b:Lio/reactivex/e/g;

    sget-object v1, Lio/reactivex/internal/a/a;->ON_ERROR_MISSING:Lio/reactivex/e/g;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isDisposed()Z
    .locals 2

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/f/g;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lio/reactivex/internal/f/g;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 106
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/f/g;->lazySet(Ljava/lang/Object;)V

    .line 108
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/f/g;->c:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 111
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/f/g;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 91
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/f/g;->lazySet(Ljava/lang/Object;)V

    .line 93
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/f/g;->b:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 96
    new-instance v1, Lio/reactivex/c/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 99
    :cond_0
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

    .line 69
    invoke-virtual {p0}, Lio/reactivex/internal/f/g;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/f/g;->a:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V

    .line 73
    iget p1, p0, Lio/reactivex/internal/f/g;->f:I

    add-int/lit8 p1, p1, 0x1

    .line 74
    iget v0, p0, Lio/reactivex/internal/f/g;->g:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lio/reactivex/internal/f/g;->f:I

    .line 76
    invoke-virtual {p0}, Lio/reactivex/internal/f/g;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    iget v0, p0, Lio/reactivex/internal/f/g;->g:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 78
    :cond_0
    iput p1, p0, Lio/reactivex/internal/f/g;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 81
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {p0}, Lio/reactivex/internal/f/g;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 83
    invoke-virtual {p0, p1}, Lio/reactivex/internal/f/g;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 56
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/f/g;->d:Lio/reactivex/e/g;

    invoke-interface {v0, p0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 61
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 62
    invoke-virtual {p0, v0}, Lio/reactivex/internal/f/g;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/f/g;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method
