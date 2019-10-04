.class final Lio/reactivex/internal/operators/flowable/cr$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cr;
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

.field final b:Lio/reactivex/internal/operators/flowable/cr$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/cr$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:J


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/internal/operators/flowable/cr$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/flowable/cr$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 460
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 461
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cr$a;->a:Lorg/b/c;

    .line 462
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/cr$a;->b:Lio/reactivex/internal/operators/flowable/cr$b;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    .line 473
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/cr$a;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 474
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$a;->b:Lio/reactivex/internal/operators/flowable/cr$b;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/cr$b;->a(Lio/reactivex/internal/operators/flowable/cr$a;)V

    .line 475
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$a;->b:Lio/reactivex/internal/operators/flowable/cr$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/cr$b;->a()V

    :cond_0
    return-void
.end method

.method public final isCancelled()Z
    .locals 5

    .line 480
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cr$a;->get()J

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
    .locals 0

    .line 467
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->addCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 468
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cr$a;->b:Lio/reactivex/internal/operators/flowable/cr$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/cr$b;->a()V

    return-void
.end method
