.class final Lio/reactivex/internal/operators/flowable/ap$a;
.super Lio/reactivex/internal/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ap;
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
        "Lio/reactivex/internal/f/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/b/a<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-TT;>;)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/a;-><init>(Lio/reactivex/internal/b/a;)V

    .line 95
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ap$a;->a:Lio/reactivex/e/g;

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ap$a;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->onNext(Ljava/lang/Object;)V

    .line 102
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ap$a;->i:I

    if-nez v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ap$a;->a:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 106
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ap$a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ap$a;->g:Lio/reactivex/internal/b/g;

    invoke-interface {v0}, Lio/reactivex/internal/b/g;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ap$a;->a:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final requestFusion(I)I
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ap$a;->a(I)I

    move-result p1

    return p1
.end method

.method public final tryOnNext(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ap$a;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ap$a;->a:Lio/reactivex/e/g;

    invoke-interface {v1, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 117
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ap$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method
