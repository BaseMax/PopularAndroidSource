.class final Lio/reactivex/internal/operators/c/ct$p;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/c/ct$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/internal/operators/c/ct$h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile a:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 511
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final complete()V
    .locals 1

    .line 528
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/ct$p;->add(Ljava/lang/Object;)Z

    .line 529
    iget v0, p0, Lio/reactivex/internal/operators/c/ct$p;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/c/ct$p;->a:I

    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 0

    .line 522
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ct$p;->add(Ljava/lang/Object;)Z

    .line 523
    iget p1, p0, Lio/reactivex/internal/operators/c/ct$p;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/c/ct$p;->a:I

    return-void
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 516
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ct$p;->add(Ljava/lang/Object;)Z

    .line 517
    iget p1, p0, Lio/reactivex/internal/operators/c/ct$p;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/c/ct$p;->a:I

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

    .line 534
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/ct$d;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 538
    :cond_0
    iget-object v0, p1, Lio/reactivex/internal/operators/c/ct$d;->b:Lio/reactivex/ag;

    const/4 v1, 0x1

    .line 543
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/ct$d;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 546
    :cond_2
    iget v2, p0, Lio/reactivex/internal/operators/c/ct$p;->a:I

    .line 1466
    iget-object v3, p1, Lio/reactivex/internal/operators/c/ct$d;->c:Ljava/lang/Object;

    .line 548
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 549
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 552
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/c/ct$p;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 553
    invoke-static {v4, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/ag;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 556
    :cond_4
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/ct$d;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lio/reactivex/internal/operators/c/ct$d;->c:Ljava/lang/Object;

    neg-int v1, v1

    .line 563
    invoke-virtual {p1, v1}, Lio/reactivex/internal/operators/c/ct$d;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    return-void
.end method
