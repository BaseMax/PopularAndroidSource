.class public final Lio/reactivex/internal/f/k;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/f/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/f/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field volatile d:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile e:Z

.field f:J

.field g:I


# direct methods
.method public constructor <init>(Lio/reactivex/internal/f/l;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/f/l<",
            "TT;>;I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/f/k;->a:Lio/reactivex/internal/f/l;

    .line 53
    iput p2, p0, Lio/reactivex/internal/f/k;->b:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 54
    iput p2, p0, Lio/reactivex/internal/f/k;->c:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 132
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDone()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lio/reactivex/internal/f/k;->e:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/f/k;->a:Lio/reactivex/internal/f/l;

    invoke-interface {v0, p0}, Lio/reactivex/internal/f/l;->innerComplete(Lio/reactivex/internal/f/k;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/f/k;->a:Lio/reactivex/internal/f/l;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/f/l;->innerError(Lio/reactivex/internal/f/k;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 88
    iget v0, p0, Lio/reactivex/internal/f/k;->g:I

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/f/k;->a:Lio/reactivex/internal/f/l;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/f/l;->innerNext(Lio/reactivex/internal/f/k;Ljava/lang/Object;)V

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/f/k;->a:Lio/reactivex/internal/f/l;

    invoke-interface {p1}, Lio/reactivex/internal/f/l;->drain()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 59
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 62
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x3

    .line 64
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 66
    iput v1, p0, Lio/reactivex/internal/f/k;->g:I

    .line 67
    iput-object v0, p0, Lio/reactivex/internal/f/k;->d:Lio/reactivex/internal/b/j;

    .line 68
    iput-boolean v2, p0, Lio/reactivex/internal/f/k;->e:Z

    .line 69
    iget-object p1, p0, Lio/reactivex/internal/f/k;->a:Lio/reactivex/internal/f/l;

    invoke-interface {p1, p0}, Lio/reactivex/internal/f/l;->innerComplete(Lio/reactivex/internal/f/k;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 73
    iput v1, p0, Lio/reactivex/internal/f/k;->g:I

    .line 74
    iput-object v0, p0, Lio/reactivex/internal/f/k;->d:Lio/reactivex/internal/b/j;

    .line 75
    iget v0, p0, Lio/reactivex/internal/f/k;->b:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/o;->request(Lorg/b/d;I)V

    return-void

    .line 80
    :cond_1
    iget v0, p0, Lio/reactivex/internal/f/k;->b:I

    invoke-static {v0}, Lio/reactivex/internal/util/o;->createQueue(I)Lio/reactivex/internal/b/j;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/f/k;->d:Lio/reactivex/internal/b/j;

    .line 82
    iget v0, p0, Lio/reactivex/internal/f/k;->b:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/o;->request(Lorg/b/d;I)V

    :cond_2
    return-void
.end method

.method public final queue()Lio/reactivex/internal/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/f/k;->d:Lio/reactivex/internal/b/j;

    return-object v0
.end method

.method public final request(J)V
    .locals 3

    .line 107
    iget v0, p0, Lio/reactivex/internal/f/k;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 108
    iget-wide v0, p0, Lio/reactivex/internal/f/k;->f:J

    add-long/2addr v0, p1

    .line 109
    iget p1, p0, Lio/reactivex/internal/f/k;->c:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 110
    iput-wide p1, p0, Lio/reactivex/internal/f/k;->f:J

    .line 111
    invoke-virtual {p0}, Lio/reactivex/internal/f/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 113
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/f/k;->f:J

    :cond_1
    return-void
.end method

.method public final requestOne()V
    .locals 5

    .line 119
    iget v0, p0, Lio/reactivex/internal/f/k;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 120
    iget-wide v0, p0, Lio/reactivex/internal/f/k;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 121
    iget v2, p0, Lio/reactivex/internal/f/k;->c:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x0

    .line 122
    iput-wide v2, p0, Lio/reactivex/internal/f/k;->f:J

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/f/k;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/b/d;

    invoke-interface {v2, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 125
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/f/k;->f:J

    :cond_1
    return-void
.end method

.method public final setDone()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lio/reactivex/internal/f/k;->e:Z

    return-void
.end method
