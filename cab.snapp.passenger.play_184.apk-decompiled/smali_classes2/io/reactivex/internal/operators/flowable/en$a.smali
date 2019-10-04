.class final Lio/reactivex/internal/operators/flowable/en$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/en;
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

.field final b:Lio/reactivex/internal/subscriptions/e;


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/internal/subscriptions/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/internal/subscriptions/e;",
            ")V"
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/en$a;->a:Lorg/b/c;

    .line 295
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/en$a;->b:Lio/reactivex/internal/subscriptions/e;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 315
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$a;->a:Lorg/b/c;

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

    .line 305
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$a;->b:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/e;->setSubscription(Lorg/b/d;)V

    return-void
.end method
