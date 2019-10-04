.class final Lio/reactivex/internal/operators/c/ah$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ah$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/c/ah$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ah$a;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ah$a$a;->a:Lio/reactivex/internal/operators/c/ah$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ah$a$a;->a:Lio/reactivex/internal/operators/c/ah$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/c/ah$a;->b:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ah$a$a;->a:Lio/reactivex/internal/operators/c/ah$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/c/ah$a;->b:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ah$a$a;->a:Lio/reactivex/internal/operators/c/ah$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/c/ah$a;->b:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ah$a$a;->a:Lio/reactivex/internal/operators/c/ah$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/c/ah$a;->a:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->update(Lio/reactivex/b/c;)Z

    return-void
.end method
