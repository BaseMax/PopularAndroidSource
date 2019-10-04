.class final Lio/reactivex/internal/operators/b/l$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/l$a$a;
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

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:Lio/reactivex/internal/util/b;

.field final e:Lio/reactivex/internal/operators/b/l$a$a;

.field final f:I

.field g:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/b/c;

.field volatile i:Z

.field volatile j:Z

.field volatile k:Z


# direct methods
.method constructor <init>(Lio/reactivex/d;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->a:Lio/reactivex/d;

    .line 95
    iput-object p2, p0, Lio/reactivex/internal/operators/b/l$a;->b:Lio/reactivex/e/h;

    .line 96
    iput-object p3, p0, Lio/reactivex/internal/operators/b/l$a;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 97
    iput p4, p0, Lio/reactivex/internal/operators/b/l$a;->f:I

    .line 98
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->d:Lio/reactivex/internal/util/b;

    .line 99
    new-instance p1, Lio/reactivex/internal/operators/b/l$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/b/l$a$a;-><init>(Lio/reactivex/internal/operators/b/l$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->e:Lio/reactivex/internal/operators/b/l$a$a;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 207
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/l$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a;->d:Lio/reactivex/internal/util/b;

    .line 212
    iget-object v1, p0, Lio/reactivex/internal/operators/b/l$a;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 215
    :cond_1
    iget-boolean v2, p0, Lio/reactivex/internal/operators/b/l$a;->k:Z

    if-eqz v2, :cond_2

    .line 216
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    return-void

    .line 220
    :cond_2
    iget-boolean v2, p0, Lio/reactivex/internal/operators/b/l$a;->i:Z

    if-nez v2, :cond_7

    .line 222
    sget-object v2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 223
    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 224
    iput-boolean v3, p0, Lio/reactivex/internal/operators/b/l$a;->k:Z

    .line 225
    iget-object v1, p0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v1}, Lio/reactivex/internal/b/j;->clear()V

    .line 226
    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lio/reactivex/internal/operators/b/l$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 232
    :cond_3
    iget-boolean v2, p0, Lio/reactivex/internal/operators/b/l$a;->j:Z

    const/4 v4, 0x0

    .line 236
    :try_start_0
    iget-object v5, p0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v5}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 238
    iget-object v4, p0, Lio/reactivex/internal/operators/b/l$a;->b:Lio/reactivex/e/h;

    invoke-interface {v4, v5}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null CompletableSource"

    invoke-static {v4, v5}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    .line 253
    iput-boolean v3, p0, Lio/reactivex/internal/operators/b/l$a;->k:Z

    .line 254
    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 256
    iget-object v1, p0, Lio/reactivex/internal/operators/b/l$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 258
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void

    :cond_6
    if-nez v5, :cond_7

    .line 264
    iput-boolean v3, p0, Lio/reactivex/internal/operators/b/l$a;->i:Z

    .line 265
    iget-object v2, p0, Lio/reactivex/internal/operators/b/l$a;->e:Lio/reactivex/internal/operators/b/l$a$a;

    invoke-interface {v4, v2}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 242
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 243
    iput-boolean v3, p0, Lio/reactivex/internal/operators/b/l$a;->k:Z

    .line 244
    iget-object v2, p0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v2}, Lio/reactivex/internal/b/j;->clear()V

    .line 245
    iget-object v2, p0, Lio/reactivex/internal/operators/b/l$a;->h:Lio/reactivex/b/c;

    invoke-interface {v2}, Lio/reactivex/b/c;->dispose()V

    .line 246
    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 247
    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lio/reactivex/internal/operators/b/l$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 268
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/l$a;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_1

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/l$a;->k:Z

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a;->h:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a;->e:Lio/reactivex/internal/operators/b/l$a$a;

    .line 2298
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/l$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lio/reactivex/internal/operators/b/l$a;->k:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/l$a;->j:Z

    .line 162
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/l$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 141
    iput-boolean v1, p0, Lio/reactivex/internal/operators/b/l$a;->k:Z

    .line 142
    iget-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->e:Lio/reactivex/internal/operators/b/l$a$a;

    .line 1298
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 143
    iget-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 144
    sget-object v0, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/l$a;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 148
    iget-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {p1}, Lio/reactivex/internal/b/j;->clear()V

    return-void

    .line 151
    :cond_1
    iput-boolean v1, p0, Lio/reactivex/internal/operators/b/l$a;->j:Z

    .line 152
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/l$a;->a()V

    return-void

    .line 155
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/l$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l$a;->h:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iput-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->h:Lio/reactivex/b/c;

    .line 106
    instance-of v0, p1, Lio/reactivex/internal/b/e;

    if-eqz v0, :cond_1

    .line 108
    check-cast p1, Lio/reactivex/internal/b/e;

    const/4 v0, 0x3

    .line 110
    invoke-interface {p1, v0}, Lio/reactivex/internal/b/e;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 112
    iput-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    .line 113
    iput-boolean v1, p0, Lio/reactivex/internal/operators/b/l$a;->j:Z

    .line 114
    iget-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 115
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/l$a;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 119
    iput-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    .line 120
    iget-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    return-void

    .line 124
    :cond_1
    new-instance p1, Lio/reactivex/internal/d/c;

    iget v0, p0, Lio/reactivex/internal/operators/b/l$a;->f:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->g:Lio/reactivex/internal/b/j;

    .line 125
    iget-object p1, p0, Lio/reactivex/internal/operators/b/l$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_2
    return-void
.end method
