.class final Lio/reactivex/internal/operators/flowable/p$a;
.super Lio/reactivex/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/p$b<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/p$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/p$b<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lio/reactivex/k/b;-><init>()V

    .line 198
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/p$a;->a:Lio/reactivex/internal/operators/flowable/p$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 213
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$a;->a:Lio/reactivex/internal/operators/flowable/p$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/p$b;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$a;->a:Lio/reactivex/internal/operators/flowable/p$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/p$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 203
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/p$a;->a:Lio/reactivex/internal/operators/flowable/p$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/p$b;->a()V

    return-void
.end method
