.class final Lio/reactivex/internal/operators/flowable/de$d;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/b/c;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/de$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/de$j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field e:Z

.field f:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/de$j;Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/de$j<",
            "TT;>;",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 516
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 517
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/de$d;->a:Lio/reactivex/internal/operators/flowable/de$j;

    .line 518
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/de$d;->b:Lorg/b/c;

    .line 519
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/de$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 556
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$d;->dispose()V

    return-void
.end method

.method public final dispose()V
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    .line 561
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/de$d;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 563
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$d;->a:Lio/reactivex/internal/operators/flowable/de$j;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/de$j;->a(Lio/reactivex/internal/operators/flowable/de$d;)V

    .line 568
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$d;->a:Lio/reactivex/internal/operators/flowable/de$j;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/de$j;->a()V

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/de$d;->c:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 5

    .line 551
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$d;->get()J

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

.method public final produced(J)J
    .locals 0

    .line 546
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->producedCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final request(J)V
    .locals 5

    .line 525
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->addCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 530
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 533
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/de$d;->a:Lio/reactivex/internal/operators/flowable/de$j;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/de$j;->a()V

    .line 535
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/de$d;->a:Lio/reactivex/internal/operators/flowable/de$j;

    iget-object p1, p1, Lio/reactivex/internal/operators/flowable/de$j;->a:Lio/reactivex/internal/operators/flowable/de$g;

    invoke-interface {p1, p0}, Lio/reactivex/internal/operators/flowable/de$g;->replay(Lio/reactivex/internal/operators/flowable/de$d;)V

    :cond_0
    return-void
.end method
