.class final Lio/reactivex/internal/operators/a/ac$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Lio/reactivex/b/b;

.field final c:Lio/reactivex/internal/util/b;

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/d;Lio/reactivex/b/b;Lio/reactivex/internal/util/b;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ac$a;->a:Lio/reactivex/d;

    .line 75
    iput-object p2, p0, Lio/reactivex/internal/operators/a/ac$a;->b:Lio/reactivex/b/b;

    .line 76
    iput-object p3, p0, Lio/reactivex/internal/operators/a/ac$a;->c:Lio/reactivex/internal/util/b;

    .line 77
    iput-object p4, p0, Lio/reactivex/internal/operators/a/ac$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a()V
    .locals 2

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ac$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ac$a;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ac$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/a/ac$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lio/reactivex/internal/operators/a/ac$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ac$a;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lio/reactivex/internal/operators/a/ac$a;->a()V

    return-void

    .line 90
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ac$a;->b:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-void
.end method
