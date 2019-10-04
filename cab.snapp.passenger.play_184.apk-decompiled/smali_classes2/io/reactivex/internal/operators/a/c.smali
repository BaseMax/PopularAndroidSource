.class public final Lio/reactivex/internal/operators/a/c;
.super Lio/reactivex/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/c$a;
    }
.end annotation


# static fields
.field static final a:[Lio/reactivex/internal/operators/a/c$a;

.field static final b:[Lio/reactivex/internal/operators/a/c$a;


# instance fields
.field final c:Lio/reactivex/g;

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field f:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/a/c$a;

    .line 28
    sput-object v1, Lio/reactivex/internal/operators/a/c;->a:[Lio/reactivex/internal/operators/a/c$a;

    new-array v0, v0, [Lio/reactivex/internal/operators/a/c$a;

    .line 30
    sput-object v0, Lio/reactivex/internal/operators/a/c;->b:[Lio/reactivex/internal/operators/a/c$a;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/g;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/a/c;->c:Lio/reactivex/g;

    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/a/c;->a:[Lio/reactivex/internal/operators/a/c$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/a/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method final a(Lio/reactivex/internal/operators/a/c$a;)V
    .locals 6

    .line 111
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/a/c$a;

    .line 112
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 120
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

    .line 133
    sget-object v1, Lio/reactivex/internal/operators/a/c;->a:[Lio/reactivex/internal/operators/a/c$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 135
    new-array v5, v5, [Lio/reactivex/internal/operators/a/c$a;

    .line 136
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 137
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 140
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/a/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final onComplete()V
    .locals 5

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/a/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/a/c;->b:[Lio/reactivex/internal/operators/a/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/a/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v3}, Lio/reactivex/internal/operators/a/c$a;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    iget-object v3, v3, Lio/reactivex/internal/operators/a/c$a;->a:Lio/reactivex/d;

    invoke-interface {v3}, Lio/reactivex/d;->onComplete()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/a/c;->f:Ljava/lang/Throwable;

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/a/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/a/c;->b:[Lio/reactivex/internal/operators/a/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/a/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    invoke-virtual {v3}, Lio/reactivex/internal/operators/a/c$a;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    iget-object v3, v3, Lio/reactivex/internal/operators/a/c$a;->a:Lio/reactivex/d;

    invoke-interface {v3, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

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

.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 6

    .line 48
    new-instance v0, Lio/reactivex/internal/operators/a/c$a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/c$a;-><init>(Lio/reactivex/internal/operators/a/c;Lio/reactivex/d;)V

    .line 49
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1095
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/a/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/a/c$a;

    .line 1096
    sget-object v2, Lio/reactivex/internal/operators/a/c;->b:[Lio/reactivex/internal/operators/a/c$a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 1099
    :cond_1
    array-length v2, v1

    add-int/lit8 v5, v2, 0x1

    .line 1100
    new-array v5, v5, [Lio/reactivex/internal/operators/a/c$a;

    .line 1101
    invoke-static {v1, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1102
    aput-object v0, v5, v2

    .line 1103
    iget-object v2, p0, Lio/reactivex/internal/operators/a/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    .line 52
    invoke-virtual {v0}, Lio/reactivex/internal/operators/a/c$a;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/a/c;->a(Lio/reactivex/internal/operators/a/c$a;)V

    .line 56
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 57
    iget-object p1, p0, Lio/reactivex/internal/operators/a/c;->c:Lio/reactivex/g;

    invoke-interface {p1, p0}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void

    .line 60
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/a/c;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 62
    invoke-interface {p1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 64
    :cond_4
    invoke-interface {p1}, Lio/reactivex/d;->onComplete()V

    :cond_5
    return-void
.end method
