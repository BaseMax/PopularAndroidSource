.class final Lio/reactivex/internal/operators/c/aj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/c/aj$a;->a:Lio/reactivex/ag;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aj$a;->b:Lio/reactivex/b/c;

    .line 51
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/c/aj$a;->b:Lio/reactivex/b/c;

    .line 52
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asObserver()Lio/reactivex/ag;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/c/aj$a;->a:Lio/reactivex/ag;

    .line 53
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aj$a;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aj$a;->a:Lio/reactivex/ag;

    .line 86
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/c/aj$a;->b:Lio/reactivex/b/c;

    .line 87
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asObserver()Lio/reactivex/ag;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/c/aj$a;->a:Lio/reactivex/ag;

    .line 88
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aj$a;->a:Lio/reactivex/ag;

    .line 78
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/c/aj$a;->b:Lio/reactivex/b/c;

    .line 79
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asObserver()Lio/reactivex/ag;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/c/aj$a;->a:Lio/reactivex/ag;

    .line 80
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

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aj$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aj$a;->b:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/c/aj$a;->b:Lio/reactivex/b/c;

    .line 66
    iget-object p1, p0, Lio/reactivex/internal/operators/c/aj$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
