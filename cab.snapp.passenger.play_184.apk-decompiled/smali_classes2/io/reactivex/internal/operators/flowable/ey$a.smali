.class final Lio/reactivex/internal/operators/flowable/ey$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/ey;

.field private final b:Lio/reactivex/internal/operators/flowable/ey$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ey$b<",
            "TT;TU;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/ey;Lio/reactivex/internal/operators/flowable/ey$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/ey$b<",
            "TT;TU;TR;>;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ey$a;->a:Lio/reactivex/internal/operators/flowable/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ey$a;->b:Lio/reactivex/internal/operators/flowable/ey$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ey$a;->b:Lio/reactivex/internal/operators/flowable/ey$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/ey$b;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ey$a;->b:Lio/reactivex/internal/operators/flowable/ey$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/ey$b;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ey$a;->b:Lio/reactivex/internal/operators/flowable/ey$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/ey$b;->setOther(Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 144
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
