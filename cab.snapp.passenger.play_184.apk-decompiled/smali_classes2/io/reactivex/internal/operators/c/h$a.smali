.class final Lio/reactivex/internal/operators/c/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:[Lio/reactivex/internal/operators/c/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/c/h$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/ag;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/c/h$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/c/h$a;->a:Lio/reactivex/ag;

    .line 84
    new-array p1, p2, [Lio/reactivex/internal/operators/c/h$b;

    iput-object p1, p0, Lio/reactivex/internal/operators/c/h$a;->b:[Lio/reactivex/internal/operators/c/h$b;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 4

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$a;->b:[Lio/reactivex/internal/operators/c/h$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 129
    invoke-virtual {v3}, Lio/reactivex/internal/operators/c/h$b;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final subscribe([Lio/reactivex/ae;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ae<",
            "+TT;>;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$a;->b:[Lio/reactivex/internal/operators/c/h$b;

    .line 89
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 91
    new-instance v4, Lio/reactivex/internal/operators/c/h$b;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lio/reactivex/internal/operators/c/h$a;->a:Lio/reactivex/ag;

    invoke-direct {v4, p0, v5, v6}, Lio/reactivex/internal/operators/c/h$b;-><init>(Lio/reactivex/internal/operators/c/h$a;ILio/reactivex/ag;)V

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 93
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/c/h$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 94
    iget-object v3, p0, Lio/reactivex/internal/operators/c/h$a;->a:Lio/reactivex/ag;

    invoke-interface {v3, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :goto_1
    if-ge v2, v1, :cond_2

    .line 97
    iget-object v3, p0, Lio/reactivex/internal/operators/c/h$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 101
    :cond_1
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final win(I)Z
    .locals 5

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$a;->b:[Lio/reactivex/internal/operators/c/h$b;

    .line 110
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    if-eq v4, p1, :cond_0

    .line 113
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lio/reactivex/internal/operators/c/h$b;->dispose()V

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    if-ne v0, p1, :cond_4

    return v1

    :cond_4
    return v2
.end method