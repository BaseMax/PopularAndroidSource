.class final Lio/reactivex/internal/operators/flowable/ev$b;
.super Lio/reactivex/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/ev$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ev$c<",
            "TT;TB;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/ev$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/ev$c<",
            "TT;TB;*>;)V"
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Lio/reactivex/k/b;-><init>()V

    .line 332
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$b;->a:Lio/reactivex/internal/operators/flowable/ev$c;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 347
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$b;->a:Lio/reactivex/internal/operators/flowable/ev$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ev$c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$b;->a:Lio/reactivex/internal/operators/flowable/ev$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/ev$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$b;->a:Lio/reactivex/internal/operators/flowable/ev$c;

    .line 1304
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ev$c;->queue:Lio/reactivex/internal/b/i;

    new-instance v2, Lio/reactivex/internal/operators/flowable/ev$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lio/reactivex/internal/operators/flowable/ev$d;-><init>(Lio/reactivex/h/c;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 1305
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ev$c;->enter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1306
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ev$c;->a()V

    :cond_0
    return-void
.end method
