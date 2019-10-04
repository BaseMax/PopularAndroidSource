.class final Lio/reactivex/internal/operators/c/el$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/c/el;

.field private final b:Lio/reactivex/internal/operators/c/el$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/el$a<",
            "TT;TU;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/el;Lio/reactivex/internal/operators/c/el$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/el$a<",
            "TT;TU;TR;>;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lio/reactivex/internal/operators/c/el$b;->a:Lio/reactivex/internal/operators/c/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lio/reactivex/internal/operators/c/el$b;->b:Lio/reactivex/internal/operators/c/el$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/c/el$b;->b:Lio/reactivex/internal/operators/c/el$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/el$a;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/c/el$b;->b:Lio/reactivex/internal/operators/c/el$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/el$a;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/c/el$b;->b:Lio/reactivex/internal/operators/c/el$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/el$a;->setOther(Lio/reactivex/b/c;)Z

    return-void
.end method
