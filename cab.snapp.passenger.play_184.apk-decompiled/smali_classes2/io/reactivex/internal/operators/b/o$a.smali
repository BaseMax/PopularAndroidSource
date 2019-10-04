.class final Lio/reactivex/internal/operators/b/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/o$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# static fields
.field static final f:Lio/reactivex/internal/operators/b/o$a$a;


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:Lio/reactivex/internal/util/b;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/b/o$a$a;",
            ">;"
        }
    .end annotation
.end field

.field volatile g:Z

.field h:Lio/reactivex/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lio/reactivex/internal/operators/b/o$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/b/o$a$a;-><init>(Lio/reactivex/internal/operators/b/o$a;)V

    sput-object v0, Lio/reactivex/internal/operators/b/o$a;->f:Lio/reactivex/internal/operators/b/o$a$a;

    return-void
.end method

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

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/b/o$a;->a:Lio/reactivex/d;

    .line 78
    iput-object p2, p0, Lio/reactivex/internal/operators/b/o$a;->b:Lio/reactivex/e/h;

    .line 79
    iput-boolean p3, p0, Lio/reactivex/internal/operators/b/o$a;->c:Z

    .line 80
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/o$a;->d:Lio/reactivex/internal/util/b;

    .line 81
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/o$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private a()V
    .locals 2

    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/b/o$a;->f:Lio/reactivex/internal/operators/b/o$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/b/o$a$a;

    if-eqz v0, :cond_0

    .line 154
    sget-object v1, Lio/reactivex/internal/operators/b/o$a;->f:Lio/reactivex/internal/operators/b/o$a$a;

    if-eq v0, v1, :cond_0

    .line 2231
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->h:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 162
    invoke-direct {p0}, Lio/reactivex/internal/operators/b/o$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/b/o$a;->f:Lio/reactivex/internal/operators/b/o$a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/o$a;->g:Z

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/b/o$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-boolean p1, p0, Lio/reactivex/internal/operators/b/o$a;->c:Z

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/o$a;->onComplete()V

    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/b/o$a;->a()V

    .line 129
    iget-object p1, p0, Lio/reactivex/internal/operators/b/o$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 130
    sget-object v0, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_1

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 135
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->b:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    new-instance v0, Lio/reactivex/internal/operators/b/o$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/b/o$a$a;-><init>(Lio/reactivex/internal/operators/b/o$a;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/b/o$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/b/o$a$a;

    .line 109
    sget-object v2, Lio/reactivex/internal/operators/b/o$a;->f:Lio/reactivex/internal/operators/b/o$a$a;

    if-eq v1, v2, :cond_2

    .line 112
    iget-object v2, p0, Lio/reactivex/internal/operators/b/o$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    .line 1231
    invoke-static {v1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 116
    :cond_1
    invoke-interface {p1, v0}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 99
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->h:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 101
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/b/o$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a;->h:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/b/o$a;->h:Lio/reactivex/b/c;

    .line 88
    iget-object p1, p0, Lio/reactivex/internal/operators/b/o$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
