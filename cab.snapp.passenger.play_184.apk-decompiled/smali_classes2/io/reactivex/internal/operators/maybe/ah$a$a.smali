.class final Lio/reactivex/internal/operators/maybe/ah$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/ah$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/t<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/maybe/ah$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/ah$a;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/ah$a$a;->a:Lio/reactivex/internal/operators/maybe/ah$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ah$a$a;->a:Lio/reactivex/internal/operators/maybe/ah$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/ah$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ah$a$a;->a:Lio/reactivex/internal/operators/maybe/ah$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/ah$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ah$a$a;->a:Lio/reactivex/internal/operators/maybe/ah$a;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ah$a$a;->a:Lio/reactivex/internal/operators/maybe/ah$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/ah$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
