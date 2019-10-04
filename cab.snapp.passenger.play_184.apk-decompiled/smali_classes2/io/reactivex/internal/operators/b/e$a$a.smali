.class final Lio/reactivex/internal/operators/b/e$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/e$a;
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
.field final a:Lio/reactivex/internal/operators/b/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/b/e$a<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/b/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/b/e$a<",
            "*TR;>;)V"
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 307
    iput-object p1, p0, Lio/reactivex/internal/operators/b/e$a$a;->a:Lio/reactivex/internal/operators/b/e$a;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lio/reactivex/internal/operators/b/e$a$a;->a:Lio/reactivex/internal/operators/b/e$a;

    .line 1183
    iget-object v1, v0, Lio/reactivex/internal/operators/b/e$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1184
    iget-object p1, v0, Lio/reactivex/internal/operators/b/e$a;->h:Lio/reactivex/internal/util/ErrorMode;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-eq p1, v1, :cond_0

    .line 1185
    iget-object p1, v0, Lio/reactivex/internal/operators/b/e$a;->i:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 1187
    iput p1, v0, Lio/reactivex/internal/operators/b/e$a;->o:I

    .line 1188
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/e$a;->a()V

    return-void

    .line 1190
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 312
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lio/reactivex/internal/operators/b/e$a$a;->a:Lio/reactivex/internal/operators/b/e$a;

    .line 1177
    iput-object p1, v0, Lio/reactivex/internal/operators/b/e$a;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1178
    iput p1, v0, Lio/reactivex/internal/operators/b/e$a;->o:I

    .line 1179
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/e$a;->a()V

    return-void
.end method
