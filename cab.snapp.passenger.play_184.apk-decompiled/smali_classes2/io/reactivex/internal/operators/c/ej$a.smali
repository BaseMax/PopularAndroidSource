.class final Lio/reactivex/internal/operators/c/ej$a;
.super Lio/reactivex/observers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ej;
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
        "Lio/reactivex/observers/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/ej$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ej$b<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ej$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ej$b<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    .line 289
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ej$a;->a:Lio/reactivex/internal/operators/c/ej$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 314
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ej$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ej$a;->b:Z

    .line 318
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ej$a;->a:Lio/reactivex/internal/operators/c/ej$b;

    .line 1173
    iget-object v2, v1, Lio/reactivex/internal/operators/c/ej$b;->k:Lio/reactivex/b/c;

    invoke-interface {v2}, Lio/reactivex/b/c;->dispose()V

    .line 1174
    iput-boolean v0, v1, Lio/reactivex/internal/operators/c/ej$b;->l:Z

    .line 1175
    invoke-virtual {v1}, Lio/reactivex/internal/operators/c/ej$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 304
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ej$a;->b:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ej$a;->b:Z

    .line 309
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ej$a;->a:Lio/reactivex/internal/operators/c/ej$b;

    .line 1163
    iget-object v2, v1, Lio/reactivex/internal/operators/c/ej$b;->k:Lio/reactivex/b/c;

    invoke-interface {v2}, Lio/reactivex/b/c;->dispose()V

    .line 1164
    iget-object v2, v1, Lio/reactivex/internal/operators/c/ej$b;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v2, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1165
    iput-boolean v0, v1, Lio/reactivex/internal/operators/c/ej$b;->l:Z

    .line 1166
    invoke-virtual {v1}, Lio/reactivex/internal/operators/c/ej$b;->a()V

    return-void

    .line 1168
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

    .line 294
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/ej$a;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/ej$a;->b:Z

    .line 298
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ej$a;->dispose()V

    .line 299
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ej$a;->a:Lio/reactivex/internal/operators/c/ej$b;

    .line 1157
    iget-object v0, p1, Lio/reactivex/internal/operators/c/ej$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1158
    iget-object v0, p1, Lio/reactivex/internal/operators/c/ej$b;->f:Lio/reactivex/internal/d/a;

    sget-object v1, Lio/reactivex/internal/operators/c/ej$b;->j:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 1159
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/ej$b;->a()V

    return-void
.end method
