.class final Lio/reactivex/internal/operators/b/o$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/o$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/b/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/b/o$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/b/o$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/b/o$a<",
            "*>;)V"
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 212
    iput-object p1, p0, Lio/reactivex/internal/operators/b/o$a$a;->a:Lio/reactivex/internal/operators/b/o$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 227
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a$a;->a:Lio/reactivex/internal/operators/b/o$a;

    .line 1192
    iget-object v1, v0, Lio/reactivex/internal/operators/b/o$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1193
    iget-boolean v1, v0, Lio/reactivex/internal/operators/b/o$a;->g:Z

    if-eqz v1, :cond_1

    .line 1194
    iget-object v1, v0, Lio/reactivex/internal/operators/b/o$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1196
    iget-object v0, v0, Lio/reactivex/internal/operators/b/o$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void

    .line 1198
    :cond_0
    iget-object v0, v0, Lio/reactivex/internal/operators/b/o$a;->a:Lio/reactivex/d;

    invoke-interface {v0, v1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 222
    iget-object v0, p0, Lio/reactivex/internal/operators/b/o$a$a;->a:Lio/reactivex/internal/operators/b/o$a;

    .line 1171
    iget-object v1, v0, Lio/reactivex/internal/operators/b/o$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1172
    iget-object v1, v0, Lio/reactivex/internal/operators/b/o$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1173
    iget-boolean p1, v0, Lio/reactivex/internal/operators/b/o$a;->c:Z

    if-eqz p1, :cond_0

    .line 1174
    iget-boolean p1, v0, Lio/reactivex/internal/operators/b/o$a;->g:Z

    if-eqz p1, :cond_1

    .line 1175
    iget-object p1, v0, Lio/reactivex/internal/operators/b/o$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 1176
    iget-object v0, v0, Lio/reactivex/internal/operators/b/o$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1179
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/o$a;->dispose()V

    .line 1180
    iget-object p1, v0, Lio/reactivex/internal/operators/b/o$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 1181
    sget-object v1, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq p1, v1, :cond_1

    .line 1182
    iget-object v0, v0, Lio/reactivex/internal/operators/b/o$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 1188
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
