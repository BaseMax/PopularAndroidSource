.class final Lio/reactivex/internal/operators/flowable/ev$a;
.super Lio/reactivex/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ev;
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
        "Lio/reactivex/k/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/ev$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ev$c<",
            "TT;*TV;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/ev$c;Lio/reactivex/h/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/ev$c<",
            "TT;*TV;>;",
            "Lio/reactivex/h/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Lio/reactivex/k/b;-><init>()V

    .line 358
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$a;->a:Lio/reactivex/internal/operators/flowable/ev$c;

    .line 359
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ev$a;->b:Lio/reactivex/h/c;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 5

    .line 380
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ev$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ev$a;->c:Z

    .line 384
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$a;->a:Lio/reactivex/internal/operators/flowable/ev$c;

    .line 1311
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ev$c;->d:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1312
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ev$c;->queue:Lio/reactivex/internal/b/i;

    new-instance v2, Lio/reactivex/internal/operators/flowable/ev$d;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ev$a;->b:Lio/reactivex/h/c;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/reactivex/internal/operators/flowable/ev$d;-><init>(Lio/reactivex/h/c;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 1313
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ev$c;->enter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1314
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ev$c;->a()V

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 370
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ev$a;->c:Z

    if-eqz v0, :cond_0

    .line 371
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ev$a;->c:Z

    .line 375
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$a;->a:Lio/reactivex/internal/operators/flowable/ev$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/ev$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1111
    invoke-virtual {p0}, Lio/reactivex/k/b;->dispose()V

    .line 365
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$a;->onComplete()V

    return-void
.end method
