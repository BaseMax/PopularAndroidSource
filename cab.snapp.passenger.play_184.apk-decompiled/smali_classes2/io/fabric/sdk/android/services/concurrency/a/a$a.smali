.class final Lio/fabric/sdk/android/services/concurrency/a/a$a;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error, synchronizer in invalid state: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a$a;->b:Ljava/lang/Throwable;

    const-string v1, "Task was cancelled."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/concurrency/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    .line 281
    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a$a;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 284
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a:Ljava/lang/Object;

    return-object v0

    .line 282
    :cond_2
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p0, v1, v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a:Ljava/lang/Object;

    and-int/lit8 p1, p3, 0xc

    if-eqz p1, :cond_0

    .line 361
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string p1, "Future.cancel() was called."

    invoke-direct {p2, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lio/fabric/sdk/android/services/concurrency/a/a$a;->b:Ljava/lang/Throwable;

    .line 363
    invoke-virtual {p0, p3}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->releaseShared(I)Z

    goto :goto_0

    .line 364
    :cond_1
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->getState()I

    move-result p1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    .line 367
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->acquireShared(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method final b()Z
    .locals 1

    .line 303
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .locals 1

    .line 310
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final tryAcquireShared(I)I
    .locals 0

    .line 226
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected final tryReleaseShared(I)Z
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->setState(I)V

    const/4 p1, 0x1

    return p1
.end method
