.class public final Lio/reactivex/internal/operators/e/b;
.super Lio/reactivex/ai;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/ai<",
        "TT;>;",
        "Lio/reactivex/al<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:[Lio/reactivex/internal/operators/e/b$a;

.field static final b:[Lio/reactivex/internal/operators/e/b$a;


# instance fields
.field final c:Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ao<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/e/b$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/e/b$a;

    .line 24
    sput-object v1, Lio/reactivex/internal/operators/e/b;->a:[Lio/reactivex/internal/operators/e/b$a;

    new-array v0, v0, [Lio/reactivex/internal/operators/e/b$a;

    .line 26
    sput-object v0, Lio/reactivex/internal/operators/e/b;->b:[Lio/reactivex/internal/operators/e/b$a;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/ao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "+TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/e/b;->c:Lio/reactivex/ao;

    .line 41
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/e/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/e/b;->a:[Lio/reactivex/internal/operators/e/b$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/e/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method final a(Lio/reactivex/internal/operators/e/b$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/e/b$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 89
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/e/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/e/b$a;

    .line 90
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 97
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

    .line 110
    sget-object v1, Lio/reactivex/internal/operators/e/b;->a:[Lio/reactivex/internal/operators/e/b$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 112
    new-array v5, v5, [Lio/reactivex/internal/operators/e/b$a;

    .line 113
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 114
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 116
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/e/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 142
    iput-object p1, p0, Lio/reactivex/internal/operators/e/b;->g:Ljava/lang/Throwable;

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/e/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/e/b;->b:[Lio/reactivex/internal/operators/e/b$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/e/b$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 145
    invoke-virtual {v3}, Lio/reactivex/internal/operators/e/b$a;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    iget-object v3, v3, Lio/reactivex/internal/operators/e/b$a;->a:Lio/reactivex/al;

    invoke-interface {v3, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

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

    .line 130
    iput-object p1, p0, Lio/reactivex/internal/operators/e/b;->f:Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/e/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/e/b;->b:[Lio/reactivex/internal/operators/e/b$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/e/b$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 133
    invoke-virtual {v3}, Lio/reactivex/internal/operators/e/b$a;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    iget-object v3, v3, Lio/reactivex/internal/operators/e/b$a;->a:Lio/reactivex/al;

    invoke-interface {v3, p1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Lio/reactivex/internal/operators/e/b$a;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/e/b$a;-><init>(Lio/reactivex/al;Lio/reactivex/internal/operators/e/b;)V

    .line 48
    invoke-interface {p1, v0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1071
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/e/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/e/b$a;

    .line 1072
    sget-object v2, Lio/reactivex/internal/operators/e/b;->b:[Lio/reactivex/internal/operators/e/b$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 1075
    :cond_1
    array-length v2, v1

    add-int/lit8 v4, v2, 0x1

    .line 1077
    new-array v4, v4, [Lio/reactivex/internal/operators/e/b$a;

    .line 1078
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    aput-object v0, v4, v2

    .line 1080
    iget-object v2, p0, Lio/reactivex/internal/operators/e/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_4

    .line 51
    invoke-virtual {v0}, Lio/reactivex/internal/operators/e/b$a;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/e/b;->a(Lio/reactivex/internal/operators/e/b$a;)V

    .line 64
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/e/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 65
    iget-object p1, p0, Lio/reactivex/internal/operators/e/b;->c:Lio/reactivex/ao;

    invoke-interface {p1, p0}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    :cond_3
    return-void

    .line 55
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/e/b;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 57
    invoke-interface {p1, v0}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 59
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/e/b;->f:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
