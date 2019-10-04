.class public abstract Lio/fabric/sdk/android/services/concurrency/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Lio/fabric/sdk/android/services/concurrency/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/concurrency/a/a$a<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 82
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public cancel(Z)Z
    .locals 3

    .line 135
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const/4 v2, 0x0

    .line 1338
    invoke-virtual {v0, v2, v2, v1}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a/a;->a()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    const/4 v1, -0x1

    .line 1268
    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->acquireSharedInterruptibly(I)V

    .line 1269
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 p3, -0x1

    .line 1251
    invoke-virtual {v0, p3, p1, p2}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->tryAcquireSharedNanos(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1255
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1252
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Timeout waiting for task."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->c()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->b()Z

    move-result v0

    return v0
.end method
