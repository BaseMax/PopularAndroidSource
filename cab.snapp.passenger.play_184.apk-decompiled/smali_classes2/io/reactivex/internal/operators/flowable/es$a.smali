.class final Lio/reactivex/internal/operators/flowable/es$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
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
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TD;>;"
        }
    .end annotation
.end field

.field final d:Z

.field e:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;Ljava/lang/Object;Lio/reactivex/e/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;TD;",
            "Lio/reactivex/e/g<",
            "-TD;>;Z)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 89
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/es$a;->a:Lorg/b/c;

    .line 90
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/es$a;->b:Ljava/lang/Object;

    .line 91
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/es$a;->c:Lio/reactivex/e/g;

    .line 92
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/es$a;->d:Z

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 168
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/es$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->c:Lio/reactivex/e/g;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/es$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 172
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 174
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 163
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/es$a;->a()V

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 136
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/es$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->c:Lio/reactivex/e/g;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/es$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 141
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 142
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/es$a;->a:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 152
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/es$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 110
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->d:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0, v2, v1}, Lio/reactivex/internal/operators/flowable/es$a;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/es$a;->c:Lio/reactivex/e/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/es$a;->b:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 116
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 121
    :cond_0
    :goto_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/es$a;->e:Lorg/b/d;

    invoke-interface {v3}, Lorg/b/d;->cancel()V

    if-eqz v0, :cond_1

    .line 123
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/es$a;->a:Lorg/b/c;

    new-instance v4, Lio/reactivex/c/a;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v2

    aput-object v0, v5, v1

    invoke-direct {v4, v5}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 129
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/es$a;->e:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 130
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/es$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->e:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/es$a;->e:Lorg/b/d;

    .line 99
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/es$a;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/es$a;->e:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method
