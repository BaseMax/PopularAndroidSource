.class public final Lio/reactivex/internal/operators/c/k;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/f/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lio/reactivex/f/a;ILio/reactivex/e/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/f/a<",
            "+TT;>;I",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 38
    iput-object p1, p0, Lio/reactivex/internal/operators/c/k;->a:Lio/reactivex/f/a;

    .line 39
    iput p2, p0, Lio/reactivex/internal/operators/c/k;->b:I

    .line 40
    iput-object p3, p0, Lio/reactivex/internal/operators/c/k;->c:Lio/reactivex/e/g;

    .line 41
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/c/k;->a:Lio/reactivex/f/a;

    invoke-virtual {v0, p1}, Lio/reactivex/f/a;->subscribe(Lio/reactivex/ag;)V

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/c/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lio/reactivex/internal/operators/c/k;->b:I

    if-ne p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lio/reactivex/internal/operators/c/k;->a:Lio/reactivex/f/a;

    iget-object v0, p0, Lio/reactivex/internal/operators/c/k;->c:Lio/reactivex/e/g;

    invoke-virtual {p1, v0}, Lio/reactivex/f/a;->connect(Lio/reactivex/e/g;)V

    :cond_0
    return-void
.end method
