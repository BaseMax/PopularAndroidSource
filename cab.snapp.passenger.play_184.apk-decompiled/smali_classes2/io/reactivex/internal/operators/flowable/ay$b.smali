.class final Lio/reactivex/internal/operators/flowable/ay$b;
.super Lio/reactivex/internal/f/b;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/b<",
        "TT;TT;>;",
        "Lio/reactivex/internal/b/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/b;-><init>(Lorg/b/c;)V

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ay$b;->a:Lio/reactivex/e/q;

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ay$b;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ay$b;->f:Lorg/b/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4
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

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ay$b;->g:Lio/reactivex/internal/b/g;

    .line 88
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ay$b;->a:Lio/reactivex/e/q;

    .line 91
    :cond_0
    :goto_0
    invoke-interface {v0}, Lio/reactivex/internal/b/g;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_1
    invoke-interface {v1, v2}, Lio/reactivex/e/q;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 100
    :cond_2
    iget v2, p0, Lio/reactivex/internal/operators/flowable/ay$b;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x1

    .line 101
    invoke-interface {v0, v2, v3}, Lio/reactivex/internal/b/g;->request(J)V

    goto :goto_0
.end method

.method public final requestFusion(I)I
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ay$b;->a(I)I

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

    .line 59
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ay$b;->h:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ay$b;->i:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 63
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ay$b;->e:Lorg/b/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return v1

    .line 68
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ay$b;->a:Lio/reactivex/e/q;

    invoke-interface {v0, p1}, Lio/reactivex/e/q;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 74
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ay$b;->e:Lorg/b/c;

    invoke-interface {v1, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    .line 70
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ay$b;->a(Ljava/lang/Throwable;)V

    return v1
.end method
