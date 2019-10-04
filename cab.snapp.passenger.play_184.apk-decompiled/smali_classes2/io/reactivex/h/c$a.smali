.class final Lio/reactivex/h/c$a;
.super Lio/reactivex/internal/subscriptions/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/subscriptions/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/h/c;


# direct methods
.method constructor <init>(Lio/reactivex/h/c;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 546
    iget-object v0, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    iget-boolean v0, v0, Lio/reactivex/h/c;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/h/c;->h:Z

    .line 551
    invoke-virtual {v0}, Lio/reactivex/h/c;->a()V

    .line 553
    iget-object v0, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    iget-boolean v0, v0, Lio/reactivex/h/c;->l:Z

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    iget-object v0, v0, Lio/reactivex/h/c;->j:Lio/reactivex/internal/subscriptions/a;

    invoke-virtual {v0}, Lio/reactivex/internal/subscriptions/a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    iget-object v0, v0, Lio/reactivex/h/c;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 556
    iget-object v0, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    iget-object v0, v0, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 524
    iget-object v0, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    iget-object v0, v0, Lio/reactivex/h/c;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 519
    iget-object v0, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    iget-object v0, v0, Lio/reactivex/h/c;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    iget-object v0, v0, Lio/reactivex/h/c;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final request(J)V
    .locals 1

    .line 538
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    iget-object v0, v0, Lio/reactivex/h/c;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 540
    iget-object p1, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    invoke-virtual {p1}, Lio/reactivex/h/c;->b()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 530
    iget-object p1, p0, Lio/reactivex/h/c$a;->a:Lio/reactivex/h/c;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lio/reactivex/h/c;->l:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
