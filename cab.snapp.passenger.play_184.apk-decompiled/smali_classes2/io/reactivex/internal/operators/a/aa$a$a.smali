.class final Lio/reactivex/internal/operators/a/aa$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/aa$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/d;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/a/aa$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/a/aa$a;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lio/reactivex/internal/operators/a/aa$a$a;->a:Lio/reactivex/internal/operators/a/aa$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 208
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lio/reactivex/internal/operators/a/aa$a$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 3

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a$a;->a:Lio/reactivex/internal/operators/a/aa$a;

    .line 1166
    iget-object v1, v0, Lio/reactivex/internal/operators/a/aa$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1167
    invoke-virtual {v0}, Lio/reactivex/internal/operators/a/aa$a;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    .line 1168
    iget-object v1, v0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1170
    iget-object v0, v0, Lio/reactivex/internal/operators/a/aa$a;->a:Lio/reactivex/d;

    invoke-interface {v0, v1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1172
    :cond_0
    iget-object v0, v0, Lio/reactivex/internal/operators/a/aa$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void

    .line 1175
    :cond_1
    iget v1, v0, Lio/reactivex/internal/operators/a/aa$a;->b:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1176
    iget-object v0, v0, Lio/reactivex/internal/operators/a/aa$a;->f:Lorg/b/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a$a;->a:Lio/reactivex/internal/operators/a/aa$a;

    .line 1138
    iget-object v1, v0, Lio/reactivex/internal/operators/a/aa$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1139
    iget-boolean v1, v0, Lio/reactivex/internal/operators/a/aa$a;->c:Z

    if-nez v1, :cond_1

    .line 1140
    iget-object v1, v0, Lio/reactivex/internal/operators/a/aa$a;->f:Lorg/b/d;

    invoke-interface {v1}, Lorg/b/d;->cancel()V

    .line 1141
    iget-object v1, v0, Lio/reactivex/internal/operators/a/aa$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1}, Lio/reactivex/b/b;->dispose()V

    .line 1143
    iget-object v1, v0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 1144
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/a/aa$a;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_4

    .line 1145
    iget-object p1, v0, Lio/reactivex/internal/operators/a/aa$a;->a:Lio/reactivex/d;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1148
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1151
    :cond_1
    iget-object v1, v0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1152
    invoke-virtual {v0}, Lio/reactivex/internal/operators/a/aa$a;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 1153
    iget-object p1, v0, Lio/reactivex/internal/operators/a/aa$a;->a:Lio/reactivex/d;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1155
    :cond_2
    iget p1, v0, Lio/reactivex/internal/operators/a/aa$a;->b:I

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_4

    .line 1156
    iget-object p1, v0, Lio/reactivex/internal/operators/a/aa$a;->f:Lorg/b/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 1160
    :cond_3
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
