.class final Lio/reactivex/internal/operators/flowable/al$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/y<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field c:Z

.field d:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/y<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/al$a;->a:Lorg/b/c;

    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/al$a;->b:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->c:Z

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->c:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->c:Z

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->c:Z

    if-eqz v0, :cond_1

    .line 65
    instance-of v0, p1, Lio/reactivex/y;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lio/reactivex/y;

    .line 67
    invoke-virtual {p1}, Lio/reactivex/y;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lio/reactivex/y;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 77
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->b:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The selector returned a null Notification"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p1}, Lio/reactivex/y;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 86
    invoke-virtual {p1}, Lio/reactivex/y;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/al$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 87
    :cond_2
    invoke-virtual {p1}, Lio/reactivex/y;->isOnComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/al$a;->d:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 89
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/al$a;->onComplete()V

    return-void

    .line 91
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->a:Lorg/b/c;

    invoke-virtual {p1}, Lio/reactivex/y;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 79
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 81
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/al$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->d:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/al$a;->d:Lorg/b/d;

    .line 58
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/al$a;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/al$a;->d:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method
