.class final Lio/reactivex/internal/operators/flowable/cq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cq;
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
        "Ljava/lang/Object;",
        "Lorg/b/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/cq$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/cq$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cq$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 677
    iput p2, p0, Lio/reactivex/internal/operators/flowable/cq$a;->b:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lorg/b/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 683
    new-instance v0, Lio/reactivex/internal/operators/flowable/cq$b;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/cq$b;-><init>(Lorg/b/c;)V

    .line 684
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 689
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cq$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/internal/operators/flowable/cq$c;

    if-eqz p1, :cond_1

    .line 691
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/cq$c;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 693
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/flowable/cq$c;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cq$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/cq$a;->b:I

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/cq$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 695
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cq$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, v1

    .line 1284
    :cond_2
    iget-object v1, p1, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/flowable/cq$b;

    .line 1287
    sget-object v2, Lio/reactivex/internal/operators/flowable/cq$c;->b:[Lio/reactivex/internal/operators/flowable/cq$b;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 1291
    :cond_3
    array-length v2, v1

    add-int/lit8 v4, v2, 0x1

    .line 1293
    new-array v4, v4, [Lio/reactivex/internal/operators/flowable/cq$b;

    .line 1294
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1295
    aput-object v0, v4, v2

    .line 1297
    iget-object v2, p1, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    .line 709
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/cq$b;->get()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    .line 710
    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/flowable/cq$c;->a(Lio/reactivex/internal/operators/flowable/cq$b;)V

    goto :goto_1

    .line 712
    :cond_4
    iput-object p1, v0, Lio/reactivex/internal/operators/flowable/cq$b;->b:Lio/reactivex/internal/operators/flowable/cq$c;

    .line 714
    :goto_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/cq$c;->a()V

    return-void
.end method
