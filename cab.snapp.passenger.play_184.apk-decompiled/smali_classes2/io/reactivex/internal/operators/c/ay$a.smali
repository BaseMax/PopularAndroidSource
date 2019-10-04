.class final Lio/reactivex/internal/operators/c/ay$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ay$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Lio/reactivex/internal/util/b;

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Lio/reactivex/b/b;

.field f:Lio/reactivex/b/c;

.field volatile g:Z


# direct methods
.method constructor <init>(Lio/reactivex/d;Lio/reactivex/e/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;Z)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ay$a;->a:Lio/reactivex/d;

    .line 76
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ay$a;->c:Lio/reactivex/e/h;

    .line 77
    iput-boolean p3, p0, Lio/reactivex/internal/operators/c/ay$a;->d:Z

    .line 78
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ay$a;->b:Lio/reactivex/internal/util/b;

    .line 79
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ay$a;->e:Lio/reactivex/b/b;

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ay$a;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ay$a;->g:Z

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->f:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->f:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ay$a;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ay$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/ay$a;->d:Z

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ay$a;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 119
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ay$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ay$a;->dispose()V

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ay$a;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 125
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ay$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 130
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->c:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ay$a;->getAndIncrement()I

    .line 107
    new-instance v0, Lio/reactivex/internal/operators/c/ay$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/ay$a$a;-><init>(Lio/reactivex/internal/operators/c/ay$a;)V

    .line 109
    iget-boolean v1, p0, Lio/reactivex/internal/operators/c/ay$a;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/c/ay$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, v0}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-interface {p1, v0}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 99
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->f:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 101
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ay$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay$a;->f:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ay$a;->f:Lio/reactivex/b/c;

    .line 88
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ay$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
