.class abstract Lio/reactivex/internal/operators/d/i$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:[Lio/reactivex/internal/operators/d/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/d/i$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/b;

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/b/c;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;II)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 70
    new-instance v0, Lio/reactivex/internal/util/b;

    invoke-direct {v0}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/d/i$c;->c:Lio/reactivex/internal/util/b;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/d/i$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/d/i$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    iput-object p1, p0, Lio/reactivex/internal/operators/d/i$c;->a:Lorg/b/c;

    .line 81
    new-array p1, p2, [Lio/reactivex/internal/operators/d/i$a;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 84
    new-instance v1, Lio/reactivex/internal/operators/d/i$a;

    invoke-direct {v1, p0, p3}, Lio/reactivex/internal/operators/d/i$a;-><init>(Lio/reactivex/internal/operators/d/i$c;I)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/d/i$c;->b:[Lio/reactivex/internal/operators/d/i$a;

    .line 88
    iget-object p1, p0, Lio/reactivex/internal/operators/d/i$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method final b()V
    .locals 4

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$c;->b:[Lio/reactivex/internal/operators/d/i$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 114
    invoke-virtual {v3}, Lio/reactivex/internal/operators/d/i$a;->cancel()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final c()V
    .locals 5

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$c;->b:[Lio/reactivex/internal/operators/d/i$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 120
    iput-object v4, v3, Lio/reactivex/internal/operators/d/i$a;->e:Lio/reactivex/internal/b/i;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/i$c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/i$c;->e:Z

    .line 104
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$c;->b()V

    .line 106
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$c;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$c;->c()V

    :cond_0
    return-void
.end method

.method abstract onComplete()V
.end method

.method abstract onError(Ljava/lang/Throwable;)V
.end method

.method abstract onNext(Lio/reactivex/internal/operators/d/i$a;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/d/i$a<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public request(J)V
    .locals 1

    .line 93
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 95
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$c;->a()V

    :cond_0
    return-void
.end method
