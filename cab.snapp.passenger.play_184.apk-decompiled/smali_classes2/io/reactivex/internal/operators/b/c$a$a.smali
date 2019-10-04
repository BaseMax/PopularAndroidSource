.class final Lio/reactivex/internal/operators/b/c$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/c$a;
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
.field final a:Lio/reactivex/internal/operators/b/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/b/c$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/b/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/b/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 267
    iput-object p1, p0, Lio/reactivex/internal/operators/b/c$a$a;->a:Lio/reactivex/internal/operators/b/c$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 282
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a$a;->a:Lio/reactivex/internal/operators/b/c$a;

    const/4 v1, 0x0

    .line 1188
    iput-boolean v1, v0, Lio/reactivex/internal/operators/b/c$a;->i:Z

    .line 1189
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/c$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a$a;->a:Lio/reactivex/internal/operators/b/c$a;

    .line 1168
    iget-object v1, v0, Lio/reactivex/internal/operators/b/c$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1169
    iget-object p1, v0, Lio/reactivex/internal/operators/b/c$a;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v1, :cond_1

    .line 1170
    iget-object p1, v0, Lio/reactivex/internal/operators/b/c$a;->h:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 1171
    iget-object p1, v0, Lio/reactivex/internal/operators/b/c$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 1172
    sget-object v1, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq p1, v1, :cond_0

    .line 1173
    iget-object v1, v0, Lio/reactivex/internal/operators/b/c$a;->a:Lio/reactivex/d;

    invoke-interface {v1, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 1175
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/c$a;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 1176
    iget-object p1, v0, Lio/reactivex/internal/operators/b/c$a;->g:Lio/reactivex/internal/b/i;

    invoke-interface {p1}, Lio/reactivex/internal/b/i;->clear()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1179
    iput-boolean p1, v0, Lio/reactivex/internal/operators/b/c$a;->i:Z

    .line 1180
    invoke-virtual {v0}, Lio/reactivex/internal/operators/b/c$a;->a()V

    return-void

    .line 1183
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 272
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
