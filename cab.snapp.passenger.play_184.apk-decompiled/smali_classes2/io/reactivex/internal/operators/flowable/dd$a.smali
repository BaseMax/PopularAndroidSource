.class final Lio/reactivex/internal/operators/flowable/dd$a;
.super Lio/reactivex/internal/operators/flowable/dd$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dd;
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
        "Ljava/lang/Object;",
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
            "Ljava/lang/Object;",
            ">;",
            "Lorg/b/d;",
            ")V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/dd$c;-><init>(Lorg/b/c;Lio/reactivex/h/a;Lorg/b/d;)V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/dd$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dd$a;->c:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dd$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
