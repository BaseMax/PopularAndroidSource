.class final Lio/reactivex/j/e$a;
.super Lio/reactivex/internal/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/j/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/c/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/j/e;


# direct methods
.method constructor <init>(Lio/reactivex/j/e;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    invoke-direct {p0}, Lio/reactivex/internal/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 548
    iget-object v0, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    iget-object v0, v0, Lio/reactivex/j/e;->a:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    return-void
.end method

.method public final dispose()V
    .locals 2

    .line 553
    iget-object v0, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    iget-boolean v0, v0, Lio/reactivex/j/e;->e:Z

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/j/e;->e:Z

    .line 556
    invoke-virtual {v0}, Lio/reactivex/j/e;->a()V

    .line 558
    iget-object v0, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    iget-object v0, v0, Lio/reactivex/j/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    iget-object v0, v0, Lio/reactivex/j/e;->i:Lio/reactivex/internal/c/b;

    invoke-virtual {v0}, Lio/reactivex/internal/c/b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    iget-object v0, v0, Lio/reactivex/j/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    iget-object v0, v0, Lio/reactivex/j/e;->a:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 568
    iget-object v0, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    iget-boolean v0, v0, Lio/reactivex/j/e;->e:Z

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 543
    iget-object v0, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    iget-object v0, v0, Lio/reactivex/j/e;->a:Lio/reactivex/internal/d/c;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    iget-object v0, v0, Lio/reactivex/j/e;->a:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final requestFusion(I)I
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 529
    iget-object p1, p0, Lio/reactivex/j/e$a;->a:Lio/reactivex/j/e;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lio/reactivex/j/e;->j:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
