.class final Lio/reactivex/internal/operators/flowable/ew$a;
.super Lio/reactivex/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/ew$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ew$b<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/ew$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/ew$b<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Lio/reactivex/k/b;-><init>()V

    .line 306
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ew$a;->a:Lio/reactivex/internal/operators/flowable/ew$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 331
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ew$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ew$a;->b:Z

    .line 335
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ew$a;->a:Lio/reactivex/internal/operators/flowable/ew$b;

    .line 1180
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/ew$b;->l:Lorg/b/d;

    invoke-interface {v2}, Lorg/b/d;->cancel()V

    .line 1181
    iput-boolean v0, v1, Lio/reactivex/internal/operators/flowable/ew$b;->m:Z

    .line 1182
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/ew$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 321
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ew$a;->b:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ew$a;->b:Z

    .line 326
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ew$a;->a:Lio/reactivex/internal/operators/flowable/ew$b;

    .line 1170
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/ew$b;->l:Lorg/b/d;

    invoke-interface {v2}, Lorg/b/d;->cancel()V

    .line 1171
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/ew$b;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v2, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1172
    iput-boolean v0, v1, Lio/reactivex/internal/operators/flowable/ew$b;->m:Z

    .line 1173
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/ew$b;->a()V

    return-void

    .line 1175
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 311
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ew$a;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ew$a;->b:Z

    .line 315
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ew$a;->dispose()V

    .line 316
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ew$a;->a:Lio/reactivex/internal/operators/flowable/ew$b;

    .line 1164
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/ew$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1165
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/ew$b;->f:Lio/reactivex/internal/d/a;

    sget-object v1, Lio/reactivex/internal/operators/flowable/ew$b;->j:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 1166
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/ew$b;->a()V

    return-void
.end method
