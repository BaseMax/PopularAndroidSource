.class final Lio/reactivex/internal/operators/b/l$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/l$a;
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
.field final a:Lio/reactivex/internal/operators/b/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/b/l$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/b/l$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/b/l$a<",
            "*>;)V"
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 279
    iput-object p1, p0, Lio/reactivex/internal/operators/b/l$a$a;->a:Lio/reactivex/internal/operators/b/l$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 294
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a$a;->a:Lio/reactivex/internal/operators/b/l$a;

    const/4 v1, 0x0

    .line 1202
    iput-boolean v1, v0, Lio/reactivex/internal/operators/b/l$a;->i:Z

    .line 1203
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/l$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a$a;->a:Lio/reactivex/internal/operators/b/l$a;

    .line 1181
    iget-object v1, v0, Lio/reactivex/internal/operators/b/l$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1182
    iget-object p1, v0, Lio/reactivex/internal/operators/b/l$a;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 1183
    iput-boolean p1, v0, Lio/reactivex/internal/operators/b/l$a;->k:Z

    .line 1184
    iget-object p1, v0, Lio/reactivex/internal/operators/b/l$a;->h:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 1185
    iget-object p1, v0, Lio/reactivex/internal/operators/b/l$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 1186
    sget-object v1, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq p1, v1, :cond_0

    .line 1187
    iget-object v1, v0, Lio/reactivex/internal/operators/b/l$a;->a:Lio/reactivex/d;

    invoke-interface {v1, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 1189
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/l$a;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 1190
    iget-object p1, v0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {p1}, Lio/reactivex/internal/b/j;->clear()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1193
    iput-boolean p1, v0, Lio/reactivex/internal/operators/b/l$a;->i:Z

    .line 1194
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/l$a;->a()V

    return-void

    .line 1197
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 284
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
