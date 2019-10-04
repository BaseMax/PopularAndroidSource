.class final Lio/reactivex/internal/operators/d/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final synthetic c:Lio/reactivex/internal/operators/d/h$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/d/h$a;II)V
    .locals 0

    .line 169
    iput-object p1, p0, Lio/reactivex/internal/operators/d/h$a$a;->c:Lio/reactivex/internal/operators/d/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p2, p0, Lio/reactivex/internal/operators/d/h$a$a;->a:I

    .line 171
    iput p3, p0, Lio/reactivex/internal/operators/d/h$a$a;->b:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 7

    .line 196
    iget-object v0, p0, Lio/reactivex/internal/operators/d/h$a$a;->c:Lio/reactivex/internal/operators/d/h$a;

    iget-object v1, v0, Lio/reactivex/internal/operators/d/h$a;->b:Ljava/util/concurrent/atomic/AtomicLongArray;

    iget v0, p0, Lio/reactivex/internal/operators/d/h$a$a;->b:I

    iget v2, p0, Lio/reactivex/internal/operators/d/h$a$a;->a:I

    add-int/2addr v2, v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/d/h$a$a;->c:Lio/reactivex/internal/operators/d/h$a;

    iget v1, p0, Lio/reactivex/internal/operators/d/h$a$a;->b:I

    add-int/2addr v1, v1

    .line 1228
    iget-object v2, v0, Lio/reactivex/internal/operators/d/h$a;->b:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->decrementAndGet(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x1

    .line 1229
    iput-boolean v1, v0, Lio/reactivex/internal/operators/d/h$a;->k:Z

    .line 1230
    iget-object v1, v0, Lio/reactivex/internal/operators/d/h$a;->f:Lorg/b/d;

    invoke-interface {v1}, Lorg/b/d;->cancel()V

    .line 1232
    invoke-virtual {v0}, Lio/reactivex/internal/operators/d/h$a;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    iget-object v0, v0, Lio/reactivex/internal/operators/d/h$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 7

    .line 176
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/d/h$a$a;->c:Lio/reactivex/internal/operators/d/h$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/d/h$a;->b:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 179
    :cond_0
    iget v1, p0, Lio/reactivex/internal/operators/d/h$a$a;->a:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    return-void

    .line 183
    :cond_1
    invoke-static {v3, v4, p1, p2}, Lio/reactivex/internal/util/c;->addCap(JJ)J

    move-result-wide v5

    .line 184
    iget v2, p0, Lio/reactivex/internal/operators/d/h$a$a;->a:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object p1, p0, Lio/reactivex/internal/operators/d/h$a$a;->c:Lio/reactivex/internal/operators/d/h$a;

    iget-object p1, p1, Lio/reactivex/internal/operators/d/h$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget p2, p0, Lio/reactivex/internal/operators/d/h$a$a;->b:I

    if-ne p1, p2, :cond_2

    .line 189
    iget-object p1, p0, Lio/reactivex/internal/operators/d/h$a$a;->c:Lio/reactivex/internal/operators/d/h$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/d/h$a;->a()V

    :cond_2
    return-void
.end method
