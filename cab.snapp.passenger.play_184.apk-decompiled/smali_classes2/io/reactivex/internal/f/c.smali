.class public abstract Lio/reactivex/internal/f/c;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Throwable;

.field c:Lorg/b/d;

.field volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final blockingGet()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lio/reactivex/internal/f/c;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 64
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/d;->verifyNonBlocking()V

    .line 65
    invoke-virtual {p0}, Lio/reactivex/internal/f/c;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    iget-object v1, p0, Lio/reactivex/internal/f/c;->c:Lorg/b/d;

    .line 68
    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v2, p0, Lio/reactivex/internal/f/c;->c:Lorg/b/d;

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v1}, Lorg/b/d;->cancel()V

    .line 72
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/f/c;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/f/c;->a:Ljava/lang/Object;

    return-object v0

    .line 78
    :cond_2
    invoke-static {v0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final onComplete()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lio/reactivex/internal/f/c;->countDown()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/f/c;->c:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/f/c;->c:Lorg/b/d;

    .line 41
    iget-boolean v0, p0, Lio/reactivex/internal/f/c;->d:Z

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 42
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    .line 43
    iget-boolean v0, p0, Lio/reactivex/internal/f/c;->d:Z

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/f/c;->c:Lorg/b/d;

    .line 45
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    :cond_0
    return-void
.end method
