.class public final Lio/reactivex/internal/operators/maybe/c;
.super Lio/reactivex/q;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:[Lio/reactivex/internal/operators/maybe/c$a;

.field static final b:[Lio/reactivex/internal/operators/maybe/c$a;


# instance fields
.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/w<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/maybe/c$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 29
    sput-object v1, Lio/reactivex/internal/operators/maybe/c;->a:[Lio/reactivex/internal/operators/maybe/c$a;

    new-array v0, v0, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 32
    sput-object v0, Lio/reactivex/internal/operators/maybe/c;->b:[Lio/reactivex/internal/operators/maybe/c$a;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/maybe/c;->a:[Lio/reactivex/internal/operators/maybe/c$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method final a(Lio/reactivex/internal/operators/maybe/c$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/c$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 139
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 140
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 148
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 160
    sget-object v1, Lio/reactivex/internal/operators/maybe/c;->a:[Lio/reactivex/internal/operators/maybe/c$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 162
    new-array v5, v5, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 163
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 164
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 166
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final onComplete()V
    .locals 5

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/maybe/c;->b:[Lio/reactivex/internal/operators/maybe/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 112
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/c$a;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    iget-object v3, v3, Lio/reactivex/internal/operators/maybe/c$a;->a:Lio/reactivex/t;

    invoke-interface {v3}, Lio/reactivex/t;->onComplete()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 100
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/c;->f:Ljava/lang/Throwable;

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/maybe/c;->b:[Lio/reactivex/internal/operators/maybe/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 102
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/c$a;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    iget-object v3, v3, Lio/reactivex/internal/operators/maybe/c$a;->a:Lio/reactivex/t;

    invoke-interface {v3, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/c;->e:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/maybe/c;->b:[Lio/reactivex/internal/operators/maybe/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 91
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/c$a;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    iget-object v3, v3, Lio/reactivex/internal/operators/maybe/c$a;->a:Lio/reactivex/t;

    invoke-interface {v3, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lio/reactivex/internal/operators/maybe/c$a;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/c$a;-><init>(Lio/reactivex/t;Lio/reactivex/internal/operators/maybe/c;)V

    .line 51
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1120
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 1121
    sget-object v2, Lio/reactivex/internal/operators/maybe/c;->b:[Lio/reactivex/internal/operators/maybe/c$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 1124
    :cond_1
    array-length v2, v1

    add-int/lit8 v4, v2, 0x1

    .line 1127
    new-array v4, v4, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 1128
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1129
    aput-object v0, v4, v2

    .line 1130
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_4

    .line 54
    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/c$a;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/c;->a(Lio/reactivex/internal/operators/maybe/c$a;)V

    return-void

    .line 75
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/w;

    if-eqz p1, :cond_3

    .line 77
    invoke-interface {p1, p0}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    :cond_3
    return-void

    .line 59
    :cond_4
    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/c$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 62
    invoke-interface {p1, v0}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 64
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->e:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 66
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_6
    invoke-interface {p1}, Lio/reactivex/t;->onComplete()V

    :cond_7
    return-void
.end method
