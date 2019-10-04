.class final Lio/reactivex/internal/operators/c/em$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field

.field final c:[Lio/reactivex/internal/operators/c/em$c;

.field final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lio/reactivex/internal/util/b;

.field volatile g:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;I)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 118
    iput-object p1, p0, Lio/reactivex/internal/operators/c/em$b;->a:Lio/reactivex/ag;

    .line 119
    iput-object p2, p0, Lio/reactivex/internal/operators/c/em$b;->b:Lio/reactivex/e/h;

    .line 120
    new-array p1, p3, [Lio/reactivex/internal/operators/c/em$c;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 122
    new-instance v0, Lio/reactivex/internal/operators/c/em$c;

    invoke-direct {v0, p0, p2}, Lio/reactivex/internal/operators/c/em$c;-><init>(Lio/reactivex/internal/operators/c/em$b;I)V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/c/em$b;->c:[Lio/reactivex/internal/operators/c/em$c;

    .line 125
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/em$b;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 126
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/em$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 127
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/em$b;->f:Lio/reactivex/internal/util/b;

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 3

    .line 232
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$b;->c:[Lio/reactivex/internal/operators/c/em$c;

    const/4 v1, 0x0

    .line 233
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    if-eq v1, p1, :cond_0

    .line 235
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lio/reactivex/internal/operators/c/em$c;->dispose()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dispose()V
    .locals 4

    .line 206
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 207
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$b;->c:[Lio/reactivex/internal/operators/c/em$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 208
    invoke-virtual {v3}, Lio/reactivex/internal/operators/c/em$c;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/em$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/em$b;->g:Z

    const/4 v0, -0x1

    .line 194
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/em$b;->a(I)V

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$b;->a:Lio/reactivex/ag;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/em$b;->f:Lio/reactivex/internal/util/b;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/i;->onComplete(Lio/reactivex/ag;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/em$b;->g:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/em$b;->g:Z

    const/4 v0, -0x1

    .line 186
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/em$b;->a(I)V

    .line 187
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$b;->a:Lio/reactivex/ag;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/em$b;->f:Lio/reactivex/internal/util/b;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/i;->onError(Lio/reactivex/ag;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 148
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/em$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$b;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 152
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 153
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 154
    aput-object p1, v2, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 157
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 162
    aput-object p1, v2, v3

    goto :goto_0

    .line 168
    :cond_2
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/em$b;->b:Lio/reactivex/e/h;

    invoke-interface {p1, v2}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "combiner returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$b;->a:Lio/reactivex/ag;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/em$b;->f:Lio/reactivex/internal/util/b;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/i;->onNext(Lio/reactivex/ag;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 170
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/em$b;->dispose()V

    .line 172
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/em$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
