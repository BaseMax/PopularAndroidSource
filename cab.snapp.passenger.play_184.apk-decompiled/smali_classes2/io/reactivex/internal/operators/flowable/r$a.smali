.class final Lio/reactivex/internal/operators/flowable/r$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/r;
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

.field final b:Lio/reactivex/internal/operators/flowable/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicLong;

.field d:Lio/reactivex/internal/operators/flowable/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field e:I

.field f:J


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/internal/operators/flowable/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/flowable/r<",
            "TT;>;)V"
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 373
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r$a;->a:Lorg/b/c;

    .line 374
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/r$a;->b:Lio/reactivex/internal/operators/flowable/r;

    .line 375
    iget-object p1, p2, Lio/reactivex/internal/operators/flowable/r;->i:Lio/reactivex/internal/operators/flowable/r$b;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r$a;->d:Lio/reactivex/internal/operators/flowable/r$b;

    .line 376
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 7

    .line 389
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r$a;->b:Lio/reactivex/internal/operators/flowable/r;

    .line 1176
    :cond_0
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/flowable/r$a;

    .line 1177
    array-length v2, v1

    if-eqz v2, :cond_4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 1184
    aget-object v6, v1, v5

    if-ne v6, p0, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v3, :cond_4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 1196
    sget-object v2, Lio/reactivex/internal/operators/flowable/r;->f:[Lio/reactivex/internal/operators/flowable/r$a;

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v2, -0x1

    .line 1198
    new-array v6, v6, [Lio/reactivex/internal/operators/flowable/r$a;

    .line 1199
    invoke-static {v1, v4, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    .line 1200
    invoke-static {v1, v4, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    .line 1203
    :goto_2
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 381
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->addCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 383
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/r$a;->b:Lio/reactivex/internal/operators/flowable/r;

    invoke-virtual {p1, p0}, Lio/reactivex/internal/operators/flowable/r;->a(Lio/reactivex/internal/operators/flowable/r$a;)V

    :cond_0
    return-void
.end method
