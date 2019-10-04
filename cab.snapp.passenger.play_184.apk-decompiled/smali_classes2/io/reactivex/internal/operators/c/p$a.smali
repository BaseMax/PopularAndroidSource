.class final Lio/reactivex/internal/operators/c/p$a;
.super Lio/reactivex/observers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/p;
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
        "Lio/reactivex/observers/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/p$b<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/p$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/p$b<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    .line 183
    iput-object p1, p0, Lio/reactivex/internal/operators/c/p$a;->a:Lio/reactivex/internal/operators/c/p$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$a;->a:Lio/reactivex/internal/operators/c/p$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/p$b;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$a;->a:Lio/reactivex/internal/operators/c/p$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/p$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 188
    iget-object p1, p0, Lio/reactivex/internal/operators/c/p$a;->a:Lio/reactivex/internal/operators/c/p$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/p$b;->a()V

    return-void
.end method
