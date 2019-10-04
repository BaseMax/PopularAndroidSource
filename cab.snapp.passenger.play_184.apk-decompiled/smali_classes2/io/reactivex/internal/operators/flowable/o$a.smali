.class final Lio/reactivex/internal/operators/flowable/o$a;
.super Lio/reactivex/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/o;
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
.field final a:Lio/reactivex/internal/operators/flowable/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/o$b<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/o$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/o$b<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lio/reactivex/k/b;-><init>()V

    .line 240
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/o$a;->a:Lio/reactivex/internal/operators/flowable/o$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/o$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/o$a;->b:Z

    .line 269
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/o$a;->a:Lio/reactivex/internal/operators/flowable/o$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/o$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 255
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/o$a;->b:Z

    if-eqz v0, :cond_0

    .line 256
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/o$a;->b:Z

    .line 260
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/o$a;->a:Lio/reactivex/internal/operators/flowable/o$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/o$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 245
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/o$a;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/o$a;->b:Z

    .line 1111
    invoke-virtual {p0}, Lio/reactivex/k/b;->dispose()V

    .line 250
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/o$a;->a:Lio/reactivex/internal/operators/flowable/o$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/o$b;->a()V

    return-void
.end method
