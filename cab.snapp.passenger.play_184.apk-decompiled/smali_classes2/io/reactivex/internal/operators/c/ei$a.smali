.class final Lio/reactivex/internal/operators/c/ei$a;
.super Lio/reactivex/observers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/ei$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ei$c<",
            "TT;*TV;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ei$c;Lio/reactivex/j/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ei$c<",
            "TT;*TV;>;",
            "Lio/reactivex/j/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    .line 340
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ei$a;->a:Lio/reactivex/internal/operators/c/ei$c;

    .line 341
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ei$a;->b:Lio/reactivex/j/e;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 5

    .line 362
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ei$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ei$a;->c:Z

    .line 366
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ei$a;->a:Lio/reactivex/internal/operators/c/ei$c;

    .line 1293
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ei$c;->h:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1294
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ei$c;->queue:Lio/reactivex/internal/b/i;

    new-instance v2, Lio/reactivex/internal/operators/c/ei$d;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ei$a;->b:Lio/reactivex/j/e;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/reactivex/internal/operators/c/ei$d;-><init>(Lio/reactivex/j/e;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 1295
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ei$c;->enter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1296
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ei$c;->a()V

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 352
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ei$a;->c:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ei$a;->c:Z

    .line 357
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ei$a;->a:Lio/reactivex/internal/operators/c/ei$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/ei$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ei$a;->dispose()V

    .line 347
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ei$a;->onComplete()V

    return-void
.end method
