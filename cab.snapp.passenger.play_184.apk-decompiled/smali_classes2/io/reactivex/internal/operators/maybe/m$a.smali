.class final Lio/reactivex/internal/operators/maybe/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/m$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TU;>;"
        }
    .end annotation
.end field

.field c:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/t;Lorg/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;",
            "Lorg/b/b<",
            "TU;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lio/reactivex/internal/operators/maybe/m$b;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/m$b;-><init>(Lio/reactivex/t;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->a:Lio/reactivex/internal/operators/maybe/m$b;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/m$a;->b:Lorg/b/b;

    return-void
.end method

.method private a()V
    .locals 2

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->b:Lorg/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/m$a;->a:Lio/reactivex/internal/operators/maybe/m$b;

    invoke-interface {v0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 62
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->c:Lio/reactivex/b/c;

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->a:Lio/reactivex/internal/operators/maybe/m$b;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->a:Lio/reactivex/internal/operators/maybe/m$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/m$b;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 96
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->c:Lio/reactivex/b/c;

    .line 97
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/m$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 89
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->c:Lio/reactivex/b/c;

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->a:Lio/reactivex/internal/operators/maybe/m$b;

    iput-object p1, v0, Lio/reactivex/internal/operators/maybe/m$b;->c:Ljava/lang/Throwable;

    .line 91
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/m$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/m$a;->c:Lio/reactivex/b/c;

    .line 76
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/m$a;->a:Lio/reactivex/internal/operators/maybe/m$b;

    iget-object p1, p1, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->c:Lio/reactivex/b/c;

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$a;->a:Lio/reactivex/internal/operators/maybe/m$b;

    iput-object p1, v0, Lio/reactivex/internal/operators/maybe/m$b;->b:Ljava/lang/Object;

    .line 84
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/m$a;->a()V

    return-void
.end method
