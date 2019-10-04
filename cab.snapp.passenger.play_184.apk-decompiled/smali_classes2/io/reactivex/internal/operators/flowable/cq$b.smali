.class final Lio/reactivex/internal/operators/flowable/cq$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cq;
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

.field volatile b:Lio/reactivex/internal/operators/flowable/cq$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/cq$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:J


# direct methods
.method constructor <init>(Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 629
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 630
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cq$b;->a:Lorg/b/c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    .line 646
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cq$b;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 653
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/operators/flowable/cq$b;->getAndSet(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 656
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$b;->b:Lio/reactivex/internal/operators/flowable/cq$c;

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/cq$c;->a(Lio/reactivex/internal/operators/flowable/cq$b;)V

    .line 664
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/cq$c;->a()V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 635
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->addCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 637
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cq$b;->b:Lio/reactivex/internal/operators/flowable/cq$c;

    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/cq$c;->a()V

    :cond_0
    return-void
.end method
