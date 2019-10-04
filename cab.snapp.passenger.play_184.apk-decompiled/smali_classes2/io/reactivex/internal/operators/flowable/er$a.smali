.class final Lio/reactivex/internal/operators/flowable/er$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/er;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/er$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
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

.field final b:Lio/reactivex/ah;

.field c:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/er$a;->a:Lorg/b/c;

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/er$a;->b:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/er$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/er$a;->b:Lio/reactivex/ah;

    new-instance v1, Lio/reactivex/internal/operators/flowable/er$a$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/flowable/er$a$a;-><init>(Lio/reactivex/internal/operators/flowable/er$a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/er$a;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/er$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/er$a;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/er$a;->a:Lorg/b/c;

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

    .line 60
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/er$a;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/er$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/er$a;->c:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/er$a;->c:Lorg/b/d;

    .line 54
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/er$a;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/er$a;->c:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method
