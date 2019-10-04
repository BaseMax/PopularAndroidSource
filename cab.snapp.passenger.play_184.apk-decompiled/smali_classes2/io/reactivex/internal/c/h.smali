.class public final Lio/reactivex/internal/c/h;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;
.implements Lio/reactivex/d;
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/al<",
        "TT;>;",
        "Lio/reactivex/d;",
        "Lio/reactivex/t<",
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

.field c:Lio/reactivex/b/c;

.field volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lio/reactivex/internal/c/h;->d:Z

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/c/h;->c:Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final blockingAwait(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5

    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 173
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/d;->verifyNonBlocking()V

    .line 174
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/internal/c/h;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 175
    invoke-direct {p0}, Lio/reactivex/internal/c/h;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 179
    invoke-direct {p0}, Lio/reactivex/internal/c/h;->a()V

    .line 180
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 183
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/c/h;->b:Ljava/lang/Throwable;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 185
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final blockingGet()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 84
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/d;->verifyNonBlocking()V

    .line 85
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    invoke-direct {p0}, Lio/reactivex/internal/c/h;->a()V

    .line 88
    invoke-static {v0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/c/h;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/c/h;->a:Ljava/lang/Object;

    return-object v0

    .line 93
    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final blockingGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 107
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/d;->verifyNonBlocking()V

    .line 108
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-direct {p0}, Lio/reactivex/internal/c/h;->a()V

    .line 111
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/c/h;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/c/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object p1

    .line 116
    :cond_2
    invoke-static {v0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final blockingGetError()Ljava/lang/Throwable;
    .locals 5

    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 130
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/d;->verifyNonBlocking()V

    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-direct {p0}, Lio/reactivex/internal/c/h;->a()V

    return-object v0

    .line 137
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/c/h;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final blockingGetError(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 5

    .line 148
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 150
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/d;->verifyNonBlocking()V

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/internal/c/h;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/c/h;->a()V

    .line 153
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-static {p1, p2, p3}, Lio/reactivex/internal/util/h;->timeoutMessage(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 156
    invoke-direct {p0}, Lio/reactivex/internal/c/h;->a()V

    .line 157
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 160
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/c/h;->b:Ljava/lang/Throwable;

    return-object p1
.end method

.method public final onComplete()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->countDown()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/c/h;->b:Ljava/lang/Throwable;

    .line 68
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->countDown()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/c/h;->c:Lio/reactivex/b/c;

    .line 54
    iget-boolean v0, p0, Lio/reactivex/internal/c/h;->d:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/c/h;->a:Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Lio/reactivex/internal/c/h;->countDown()V

    return-void
.end method
