.class final Lio/reactivex/internal/operators/flowable/dz$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dz;
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
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/subscriptions/e;

.field d:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lorg/b/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dz$a;->a:Lorg/b/c;

    .line 44
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/dz$a;->b:Lorg/b/b;

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/dz$a;->d:Z

    .line 46
    new-instance p1, Lio/reactivex/internal/subscriptions/e;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lio/reactivex/internal/subscriptions/e;-><init>(Z)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dz$a;->c:Lio/reactivex/internal/subscriptions/e;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dz$a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dz$a;->d:Z

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dz$a;->b:Lorg/b/b;

    invoke-interface {v0, p0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dz$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dz$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dz$a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dz$a;->d:Z

    .line 59
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dz$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dz$a;->c:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/e;->setSubscription(Lorg/b/d;)V

    return-void
.end method
