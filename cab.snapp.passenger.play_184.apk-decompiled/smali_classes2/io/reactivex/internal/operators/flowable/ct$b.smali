.class final Lio/reactivex/internal/operators/flowable/ct$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
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

.field final b:Lio/reactivex/internal/operators/flowable/ct$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ct$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:J


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/internal/operators/flowable/ct$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/flowable/ct$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 495
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 496
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ct$b;->a:Lorg/b/c;

    .line 497
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ct$b;->b:Lio/reactivex/internal/operators/flowable/ct$a;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    .line 510
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/ct$b;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 511
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$b;->b:Lio/reactivex/internal/operators/flowable/ct$a;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/ct$a;->a(Lio/reactivex/internal/operators/flowable/ct$b;)V

    .line 512
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$b;->b:Lio/reactivex/internal/operators/flowable/ct$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ct$a;->a()V

    :cond_0
    return-void
.end method

.method public final isCancelled()Z
    .locals 5

    .line 517
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ct$b;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final request(J)V
    .locals 1

    .line 502
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->addCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 504
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ct$b;->b:Lio/reactivex/internal/operators/flowable/ct$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/ct$a;->a()V

    :cond_0
    return-void
.end method
