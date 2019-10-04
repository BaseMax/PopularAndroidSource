.class public final Lio/reactivex/internal/util/b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final addThrowable(Ljava/lang/Throwable;)Z
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final isTerminated()Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final terminate()Ljava/lang/Throwable;
    .locals 1

    .line 43
    invoke-static {p0}, Lio/reactivex/internal/util/h;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
