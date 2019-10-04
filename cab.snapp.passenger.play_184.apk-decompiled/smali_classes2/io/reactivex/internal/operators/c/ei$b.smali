.class final Lio/reactivex/internal/operators/c/ei$b;
.super Lio/reactivex/observers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ei;
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
        "Lio/reactivex/observers/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/ei$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ei$c<",
            "TT;TB;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ei$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ei$c<",
            "TT;TB;*>;)V"
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    .line 314
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ei$b;->a:Lio/reactivex/internal/operators/c/ei$c;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 329
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ei$b;->a:Lio/reactivex/internal/operators/c/ei$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ei$c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ei$b;->a:Lio/reactivex/internal/operators/c/ei$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/ei$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ei$b;->a:Lio/reactivex/internal/operators/c/ei$c;

    .line 1286
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ei$c;->queue:Lio/reactivex/internal/b/i;

    new-instance v2, Lio/reactivex/internal/operators/c/ei$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lio/reactivex/internal/operators/c/ei$d;-><init>(Lio/reactivex/j/e;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 1287
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ei$c;->enter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1288
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ei$c;->a()V

    :cond_0
    return-void
.end method
