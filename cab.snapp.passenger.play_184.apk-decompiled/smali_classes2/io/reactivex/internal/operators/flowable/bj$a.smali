.class abstract Lio/reactivex/internal/operators/flowable/bj$a;
.super Lio/reactivex/internal/subscriptions/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field volatile b:Z

.field c:Z


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/b;-><init>()V

    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bj$a;->a:Ljava/util/Iterator;

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

    .line 132
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bj$a;->b:Z

    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bj$a;->a:Ljava/util/Iterator;

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bj$a;->a:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bj$a;->a:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 97
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/bj$a;->c:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bj$a;->c:Z

    goto :goto_0

    .line 100
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 104
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bj$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Iterator.next() returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final request(J)V
    .locals 5

    .line 119
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bj$a;->a()V

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/bj$a;->a(J)V

    :cond_1
    return-void
.end method

.method public final requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x1

    return p1
.end method
