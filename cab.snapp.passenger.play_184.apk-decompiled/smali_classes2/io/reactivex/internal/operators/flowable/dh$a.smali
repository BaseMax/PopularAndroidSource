.class final Lio/reactivex/internal/operators/flowable/dh$a;
.super Lio/reactivex/internal/operators/flowable/dd$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dh;
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
        "Lio/reactivex/internal/operators/flowable/dd$c<",
        "TT;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/h/a;Lorg/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/h/a<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lorg/b/d;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/dd$c;-><init>(Lorg/b/c;Lio/reactivex/h/a;Lorg/b/d;)V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dh$a;->c:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dh$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/dh$a;->a(Ljava/lang/Object;)V

    return-void
.end method
