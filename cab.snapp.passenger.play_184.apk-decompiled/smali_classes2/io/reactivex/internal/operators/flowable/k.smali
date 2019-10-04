.class public final Lio/reactivex/internal/operators/flowable/k;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/d/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lio/reactivex/d/a;ILio/reactivex/e/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d/a<",
            "+TT;>;I",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/k;->b:Lio/reactivex/d/a;

    .line 41
    iput p2, p0, Lio/reactivex/internal/operators/flowable/k;->c:I

    .line 42
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/k;->d:Lio/reactivex/e/g;

    .line 43
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/k;->b:Lio/reactivex/d/a;

    invoke-virtual {v0, p1}, Lio/reactivex/d/a;->subscribe(Lorg/b/c;)V

    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lio/reactivex/internal/operators/flowable/k;->c:I

    if-ne p1, v0, :cond_0

    .line 50
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/k;->b:Lio/reactivex/d/a;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/k;->d:Lio/reactivex/e/g;

    invoke-virtual {p1, v0}, Lio/reactivex/d/a;->connect(Lio/reactivex/e/g;)V

    :cond_0
    return-void
.end method
