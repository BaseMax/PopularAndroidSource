.class final Lio/reactivex/internal/operators/flowable/cd$a;
.super Lio/reactivex/internal/f/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cd;
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
        "Lio/reactivex/internal/f/t<",
        "TT;",
        "Lio/reactivex/y<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/t;-><init>(Lorg/b/c;)V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 54
    invoke-static {}, Lio/reactivex/y;->createOnComplete()Lio/reactivex/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/cd$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onDrop(Ljava/lang/Object;)V
    .locals 1

    .line 33
    check-cast p1, Lio/reactivex/y;

    .line 1059
    invoke-virtual {p1}, Lio/reactivex/y;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {p1}, Lio/reactivex/y;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 49
    invoke-static {p1}, Lio/reactivex/y;->createOnError(Ljava/lang/Throwable;)Lio/reactivex/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/cd$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/cd$a;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/cd$a;->g:J

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cd$a;->d:Lorg/b/c;

    invoke-static {p1}, Lio/reactivex/y;->createOnNext(Ljava/lang/Object;)Lio/reactivex/y;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method
