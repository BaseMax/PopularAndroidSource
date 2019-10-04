.class abstract Lio/reactivex/internal/operators/flowable/cu$a;
.super Lio/reactivex/internal/subscriptions/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/subscriptions/b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field volatile c:Z


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/b;-><init>()V

    .line 55
    iput p1, p0, Lio/reactivex/internal/operators/flowable/cu$a;->b:I

    .line 56
    iput p2, p0, Lio/reactivex/internal/operators/flowable/cu$a;->a:I

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(J)V
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cu$a;->c:Z

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 82
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cu$a;->a:I

    iput v0, p0, Lio/reactivex/internal/operators/flowable/cu$a;->b:I

    return-void
.end method

.method public final isEmpty()Z
    .locals 2

    .line 77
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cu$a;->b:I

    iget v1, p0, Lio/reactivex/internal/operators/flowable/cu$a;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final poll()Ljava/lang/Integer;
    .locals 2

    .line 67
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cu$a;->b:I

    .line 68
    iget v1, p0, Lio/reactivex/internal/operators/flowable/cu$a;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 71
    iput v1, p0, Lio/reactivex/internal/operators/flowable/cu$a;->b:I

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cu$a;->poll()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final request(J)V
    .locals 5

    .line 87
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cu$a;->a()V

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/cu$a;->a(J)V

    :cond_1
    return-void
.end method

.method public final requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x1

    return p1
.end method
