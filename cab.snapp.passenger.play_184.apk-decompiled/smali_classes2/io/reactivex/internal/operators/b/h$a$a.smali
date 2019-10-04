.class final Lio/reactivex/internal/operators/b/h$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/al<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/b/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/b/h$a<",
            "*TR;>;"
        }
    .end annotation
.end field

.field volatile b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/b/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/b/h$a<",
            "*TR;>;)V"
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 266
    iput-object p1, p0, Lio/reactivex/internal/operators/b/h$a$a;->a:Lio/reactivex/internal/operators/b/h$a;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 282
    iget-object v0, p0, Lio/reactivex/internal/operators/b/h$a$a;->a:Lio/reactivex/internal/operators/b/h$a;

    .line 1183
    iget-object v1, v0, Lio/reactivex/internal/operators/b/h$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1184
    iget-object v1, v0, Lio/reactivex/internal/operators/b/h$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1185
    iget-boolean p1, v0, Lio/reactivex/internal/operators/b/h$a;->c:Z

    if-nez p1, :cond_0

    .line 1186
    iget-object p1, v0, Lio/reactivex/internal/operators/b/h$a;->h:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 1187
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/h$a;->a()V

    .line 1189
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/h$a;->b()V

    return-void

    .line 1193
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 271
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lio/reactivex/internal/operators/b/h$a$a;->b:Ljava/lang/Object;

    .line 277
    iget-object p1, p0, Lio/reactivex/internal/operators/b/h$a$a;->a:Lio/reactivex/internal/operators/b/h$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/b/h$a;->b()V

    return-void
.end method
