.class final Lio/reactivex/internal/operators/c/eh$a;
.super Lio/reactivex/observers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/eh;
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
.field final a:Lio/reactivex/internal/operators/c/eh$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/eh$b<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/eh$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/eh$b<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    .line 256
    iput-object p1, p0, Lio/reactivex/internal/operators/c/eh$a;->a:Lio/reactivex/internal/operators/c/eh$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 279
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/eh$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/eh$a;->b:Z

    .line 283
    iget-object v1, p0, Lio/reactivex/internal/operators/c/eh$a;->a:Lio/reactivex/internal/operators/c/eh$b;

    .line 1156
    iget-object v2, v1, Lio/reactivex/internal/operators/c/eh$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1157
    iput-boolean v0, v1, Lio/reactivex/internal/operators/c/eh$b;->j:Z

    .line 1158
    invoke-virtual {v1}, Lio/reactivex/internal/operators/c/eh$b;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 269
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/eh$a;->b:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/eh$a;->b:Z

    .line 274
    iget-object v1, p0, Lio/reactivex/internal/operators/c/eh$a;->a:Lio/reactivex/internal/operators/c/eh$b;

    .line 1146
    iget-object v2, v1, Lio/reactivex/internal/operators/c/eh$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1147
    iget-object v2, v1, Lio/reactivex/internal/operators/c/eh$b;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v2, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1148
    iput-boolean v0, v1, Lio/reactivex/internal/operators/c/eh$b;->j:Z

    .line 1149
    invoke-virtual {v1}, Lio/reactivex/internal/operators/c/eh$b;->b()V

    return-void

    .line 1151
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 261
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/eh$a;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/eh$a;->a:Lio/reactivex/internal/operators/c/eh$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/eh$b;->a()V

    return-void
.end method
