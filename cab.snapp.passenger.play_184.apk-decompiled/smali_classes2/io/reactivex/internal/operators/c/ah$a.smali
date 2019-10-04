.class final Lio/reactivex/internal/operators/c/ah$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ah$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/disposables/f;

.field final b:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Z

.field final synthetic d:Lio/reactivex/internal/operators/c/ah;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ah;Lio/reactivex/internal/disposables/f;Lio/reactivex/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/f;",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ah$a;->d:Lio/reactivex/internal/operators/c/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ah$a;->a:Lio/reactivex/internal/disposables/f;

    .line 53
    iput-object p3, p0, Lio/reactivex/internal/operators/c/ah$a;->b:Lio/reactivex/ag;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ah$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ah$a;->c:Z

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ah$a;->d:Lio/reactivex/internal/operators/c/ah;

    iget-object v0, v0, Lio/reactivex/internal/operators/c/ah;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/ah$a$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/c/ah$a$a;-><init>(Lio/reactivex/internal/operators/c/ah$a;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ah$a;->c:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ah$a;->c:Z

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ah$a;->b:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ah$a;->onComplete()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ah$a;->a:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->update(Lio/reactivex/b/c;)Z

    return-void
.end method
