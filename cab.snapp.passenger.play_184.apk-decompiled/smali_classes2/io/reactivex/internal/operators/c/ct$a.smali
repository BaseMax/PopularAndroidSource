.class abstract Lio/reactivex/internal/operators/c/ct$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/c/ct$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/internal/operators/c/ct$f;",
        ">;",
        "Lio/reactivex/internal/operators/c/ct$h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Lio/reactivex/internal/operators/c/ct$f;

.field b:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 596
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 597
    new-instance v0, Lio/reactivex/internal/operators/c/ct$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/c/ct$f;-><init>(Ljava/lang/Object;)V

    .line 598
    iput-object v0, p0, Lio/reactivex/internal/operators/c/ct$a;->a:Lio/reactivex/internal/operators/c/ct$f;

    .line 599
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/ct$a;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lio/reactivex/internal/operators/c/ct$f;)V
    .locals 1

    .line 607
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$a;->a:Lio/reactivex/internal/operators/c/ct$f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/ct$f;->set(Ljava/lang/Object;)V

    .line 608
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ct$a;->a:Lio/reactivex/internal/operators/c/ct$f;

    .line 609
    iget p1, p0, Lio/reactivex/internal/operators/c/ct$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/c/ct$a;->b:I

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method abstract a()V
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method b()V
    .locals 3

    .line 1624
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ct$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/ct$f;

    .line 1625
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ct$f;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1626
    new-instance v1, Lio/reactivex/internal/operators/c/ct$f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/c/ct$f;-><init>(Ljava/lang/Object;)V

    .line 1627
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ct$f;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/c/ct$f;->lazySet(Ljava/lang/Object;)V

    .line 1628
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/c/ct$a;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method c()Lio/reactivex/internal/operators/c/ct$f;
    .locals 1

    .line 774
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ct$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/ct$f;

    return-object v0
.end method

.method public final complete()V
    .locals 2

    .line 668
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/ct$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 669
    new-instance v1, Lio/reactivex/internal/operators/c/ct$f;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/c/ct$f;-><init>(Ljava/lang/Object;)V

    .line 670
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/c/ct$a;->a(Lio/reactivex/internal/operators/c/ct$f;)V

    .line 671
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ct$a;->b()V

    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 1

    .line 660
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ct$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 661
    new-instance v0, Lio/reactivex/internal/operators/c/ct$f;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/c/ct$f;-><init>(Ljava/lang/Object;)V

    .line 662
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/c/ct$a;->a(Lio/reactivex/internal/operators/c/ct$f;)V

    .line 663
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ct$a;->b()V

    return-void
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 652
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ct$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 653
    new-instance v0, Lio/reactivex/internal/operators/c/ct$f;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/c/ct$f;-><init>(Ljava/lang/Object;)V

    .line 654
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/c/ct$a;->a(Lio/reactivex/internal/operators/c/ct$f;)V

    .line 655
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ct$a;->a()V

    return-void
.end method

.method public final replay(Lio/reactivex/internal/operators/c/ct$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ct$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 676
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/ct$d;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1466
    :cond_1
    iget-object v1, p1, Lio/reactivex/internal/operators/c/ct$d;->c:Ljava/lang/Object;

    .line 683
    check-cast v1, Lio/reactivex/internal/operators/c/ct$f;

    if-nez v1, :cond_2

    .line 685
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ct$a;->c()Lio/reactivex/internal/operators/c/ct$f;

    move-result-object v1

    .line 686
    iput-object v1, p1, Lio/reactivex/internal/operators/c/ct$d;->c:Ljava/lang/Object;

    .line 690
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/ct$d;->isDisposed()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 691
    iput-object v3, p1, Lio/reactivex/internal/operators/c/ct$d;->c:Ljava/lang/Object;

    return-void

    .line 695
    :cond_3
    invoke-virtual {v1}, Lio/reactivex/internal/operators/c/ct$f;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/c/ct$f;

    if-eqz v2, :cond_5

    .line 697
    iget-object v1, v2, Lio/reactivex/internal/operators/c/ct$f;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/c/ct$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 698
    iget-object v4, p1, Lio/reactivex/internal/operators/c/ct$d;->b:Lio/reactivex/ag;

    invoke-static {v1, v4}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/ag;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 699
    iput-object v3, p1, Lio/reactivex/internal/operators/c/ct$d;->c:Ljava/lang/Object;

    return-void

    :cond_4
    move-object v1, v2

    goto :goto_0

    .line 708
    :cond_5
    iput-object v1, p1, Lio/reactivex/internal/operators/c/ct$d;->c:Ljava/lang/Object;

    neg-int v0, v0

    .line 710
    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/c/ct$d;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    return-void
.end method
