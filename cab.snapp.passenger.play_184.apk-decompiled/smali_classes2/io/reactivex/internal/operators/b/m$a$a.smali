.class final Lio/reactivex/internal/operators/b/m$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/t<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/b/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/b/m$a<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/b/m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/b/m$a<",
            "*TR;>;)V"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 278
    iput-object p1, p0, Lio/reactivex/internal/operators/b/m$a$a;->a:Lio/reactivex/internal/operators/b/m$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 298
    iget-object v0, p0, Lio/reactivex/internal/operators/b/m$a$a;->a:Lio/reactivex/internal/operators/b/m$a;

    const/4 v1, 0x0

    .line 2166
    iput v1, v0, Lio/reactivex/internal/operators/b/m$a;->k:I

    .line 2167
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/m$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lio/reactivex/internal/operators/b/m$a$a;->a:Lio/reactivex/internal/operators/b/m$a;

    .line 1171
    iget-object v1, v0, Lio/reactivex/internal/operators/b/m$a;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1172
    iget-object p1, v0, Lio/reactivex/internal/operators/b/m$a;->f:Lio/reactivex/internal/util/ErrorMode;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-eq p1, v1, :cond_0

    .line 1173
    iget-object p1, v0, Lio/reactivex/internal/operators/b/m$a;->g:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 1175
    iput p1, v0, Lio/reactivex/internal/operators/b/m$a;->k:I

    .line 1176
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/m$a;->a()V

    return-void

    .line 1178
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 283
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lio/reactivex/internal/operators/b/m$a$a;->a:Lio/reactivex/internal/operators/b/m$a;

    .line 1160
    iput-object p1, v0, Lio/reactivex/internal/operators/b/m$a;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1161
    iput p1, v0, Lio/reactivex/internal/operators/b/m$a;->k:I

    .line 1162
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/m$a;->a()V

    return-void
.end method
