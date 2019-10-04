.class final Lio/reactivex/internal/operators/flowable/du$a;
.super Ljava/util/ArrayDeque;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/du;
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
        "Ljava/util/ArrayDeque<",
        "TT;>;",
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

.field final b:I

.field c:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/du$a;->a:Lorg/b/c;

    .line 47
    iput p2, p0, Lio/reactivex/internal/operators/flowable/du$a;->b:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/du$a;->c:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/du$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/du$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    iget v0, p0, Lio/reactivex/internal/operators/flowable/du$a;->b:I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/du$a;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/du$a;->a:Lorg/b/c;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/du$a;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/du$a;->c:Lorg/b/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/b/d;->request(J)V

    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/du$a;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/du$a;->c:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/du$a;->c:Lorg/b/d;

    .line 54
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/du$a;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/du$a;->c:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method
