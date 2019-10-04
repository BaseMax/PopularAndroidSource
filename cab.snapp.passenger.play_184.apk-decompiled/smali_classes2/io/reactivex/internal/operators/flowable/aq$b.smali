.class final Lio/reactivex/internal/operators/flowable/aq$b;
.super Lio/reactivex/internal/subscriptions/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/aq;
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
        "Lio/reactivex/internal/subscriptions/a<",
        "TT;>;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/a;

.field c:Lorg/b/d;

.field d:Lio/reactivex/internal/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/a;-><init>()V

    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/aq$b;->a:Lorg/b/c;

    .line 66
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/aq$b;->b:Lio/reactivex/e/a;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 144
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/aq$b;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->b:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 148
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 149
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->c:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 102
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/aq$b;->a()V

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->d:Lio/reactivex/internal/b/g;

    invoke-interface {v0}, Lio/reactivex/internal/b/g;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->d:Lio/reactivex/internal/b/g;

    invoke-interface {v0}, Lio/reactivex/internal/b/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 96
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/aq$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 90
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/aq$b;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->c:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/aq$b;->c:Lorg/b/d;

    .line 74
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lio/reactivex/internal/b/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/aq$b;->d:Lio/reactivex/internal/b/g;

    .line 78
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/aq$b;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_1
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

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->d:Lio/reactivex/internal/b/g;

    invoke-interface {v0}, Lio/reactivex/internal/b/g;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/aq$b;->e:Z

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/aq$b;->a()V

    :cond_0
    return-object v0
.end method

.method public final request(J)V
    .locals 1

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->c:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method

.method public final requestFusion(I)I
    .locals 3

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->d:Lio/reactivex/internal/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    .line 114
    invoke-interface {v0, p1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/aq$b;->e:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method
