.class final Lio/reactivex/internal/operators/c/dk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/disposables/a;

.field final b:Lio/reactivex/internal/operators/c/dk$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/dk$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/observers/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observers/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/b/c;

.field final synthetic e:Lio/reactivex/internal/operators/c/dk;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/dk;Lio/reactivex/internal/disposables/a;Lio/reactivex/internal/operators/c/dk$b;Lio/reactivex/observers/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/a;",
            "Lio/reactivex/internal/operators/c/dk$b<",
            "TT;>;",
            "Lio/reactivex/observers/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dk$a;->e:Lio/reactivex/internal/operators/c/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lio/reactivex/internal/operators/c/dk$a;->a:Lio/reactivex/internal/disposables/a;

    .line 99
    iput-object p3, p0, Lio/reactivex/internal/operators/c/dk$a;->b:Lio/reactivex/internal/operators/c/dk$b;

    .line 100
    iput-object p4, p0, Lio/reactivex/internal/operators/c/dk$a;->c:Lio/reactivex/observers/d;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$a;->b:Lio/reactivex/internal/operators/c/dk$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/c/dk$b;->d:Z

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$a;->a:Lio/reactivex/internal/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/a;->dispose()V

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$a;->c:Lio/reactivex/observers/d;

    invoke-virtual {v0, p1}, Lio/reactivex/observers/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 113
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dk$a;->d:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 114
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dk$a;->b:Lio/reactivex/internal/operators/c/dk$b;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/reactivex/internal/operators/c/dk$b;->d:Z

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$a;->d:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dk$a;->d:Lio/reactivex/b/c;

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$a;->a:Lio/reactivex/internal/disposables/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/a;->setResource(ILio/reactivex/b/c;)Z

    :cond_0
    return-void
.end method
