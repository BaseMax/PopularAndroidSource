.class public final Lio/reactivex/internal/operators/a/ab;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/ab$a;
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/g;


# direct methods
.method public constructor <init>([Lio/reactivex/g;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 26
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ab;->a:[Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 6

    .line 31
    new-instance v0, Lio/reactivex/b/b;

    invoke-direct {v0}, Lio/reactivex/b/b;-><init>()V

    .line 32
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 34
    new-instance v2, Lio/reactivex/internal/operators/a/ab$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/a/ab;->a:[Lio/reactivex/g;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, p1, v1, v0, v3}, Lio/reactivex/internal/operators/a/ab$a;-><init>(Lio/reactivex/d;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/b/b;I)V

    .line 35
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 37
    iget-object p1, p0, Lio/reactivex/internal/operators/a/ab;->a:[Lio/reactivex/g;

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 38
    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    if-nez v4, :cond_1

    .line 43
    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 44
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, p1}, Lio/reactivex/internal/operators/a/ab$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 49
    :cond_1
    invoke-interface {v4, v2}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/internal/operators/a/ab$a;->onComplete()V

    return-void
.end method
