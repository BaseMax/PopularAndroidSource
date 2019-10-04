.class final Lio/reactivex/internal/operators/c/ek$b;
.super Lio/reactivex/internal/c/u;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/c/u<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/z<",
        "TT;>;>;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final l:Ljava/lang/Object;


# instance fields
.field final e:J

.field final f:Ljava/util/concurrent/TimeUnit;

.field final g:Lio/reactivex/ah;

.field final h:I

.field i:Lio/reactivex/b/c;

.field j:Lio/reactivex/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/c/ek$b;->l:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "I)V"
        }
    .end annotation

    .line 96
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/c/u;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/b/i;)V

    .line 88
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ek$b;->e:J

    .line 98
    iput-object p4, p0, Lio/reactivex/internal/operators/c/ek$b;->f:Ljava/util/concurrent/TimeUnit;

    .line 99
    iput-object p5, p0, Lio/reactivex/internal/operators/c/ek$b;->g:Lio/reactivex/ah;

    .line 100
    iput p6, p0, Lio/reactivex/internal/operators/c/ek$b;->h:I

    return-void
.end method

.method private a()V
    .locals 1

    .line 175
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method private b()V
    .locals 7

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->queue:Lio/reactivex/internal/b/i;

    check-cast v0, Lio/reactivex/internal/d/a;

    .line 193
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ek$b;->a:Lio/reactivex/ag;

    .line 194
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ek$b;->j:Lio/reactivex/j/e;

    const/4 v3, 0x1

    .line 200
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/ek$b;->m:Z

    .line 202
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ek$b;->b:Z

    .line 204
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    .line 206
    sget-object v5, Lio/reactivex/internal/operators/c/ek$b;->l:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    :cond_1
    const/4 v1, 0x0

    .line 207
    iput-object v1, p0, Lio/reactivex/internal/operators/c/ek$b;->j:Lio/reactivex/j/e;

    .line 208
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->clear()V

    .line 209
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$b;->a()V

    .line 210
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v2, v0}, Lio/reactivex/j/e;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 214
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/j/e;->onComplete()V

    return-void

    :cond_3
    if-eqz v6, :cond_6

    .line 223
    sget-object v5, Lio/reactivex/internal/operators/c/ek$b;->l:Ljava/lang/Object;

    if-ne v6, v5, :cond_5

    .line 224
    invoke-virtual {v2}, Lio/reactivex/j/e;->onComplete()V

    if-nez v4, :cond_4

    .line 226
    iget v2, p0, Lio/reactivex/internal/operators/c/ek$b;->h:I

    invoke-static {v2}, Lio/reactivex/j/e;->create(I)Lio/reactivex/j/e;

    move-result-object v2

    .line 227
    iput-object v2, p0, Lio/reactivex/internal/operators/c/ek$b;->j:Lio/reactivex/j/e;

    .line 229
    invoke-interface {v1, v2}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :cond_4
    iget-object v4, p0, Lio/reactivex/internal/operators/c/ek$b;->i:Lio/reactivex/b/c;

    invoke-interface {v4}, Lio/reactivex/b/c;->dispose()V

    goto :goto_0

    .line 236
    :cond_5
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    neg-int v3, v3

    .line 239
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/c/ek$b;->leave(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$b;->cancelled:Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$b;->cancelled:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$b;->b:Z

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$b;->b()V

    .line 160
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$b;->a()V

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 143
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$b;->c:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$b;->b:Z

    .line 145
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$b;->b()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$b;->a()V

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 124
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$b;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$b;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->j:Lio/reactivex/j/e;

    invoke-virtual {v0, p1}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 129
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ek$b;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->queue:Lio/reactivex/internal/b/i;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$b;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 138
    :cond_2
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$b;->b()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 7

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->i:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$b;->i:Lio/reactivex/b/c;

    .line 108
    iget p1, p0, Lio/reactivex/internal/operators/c/ek$b;->h:I

    invoke-static {p1}, Lio/reactivex/j/e;->create(I)Lio/reactivex/j/e;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$b;->j:Lio/reactivex/j/e;

    .line 110
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ek$b;->a:Lio/reactivex/ag;

    .line 111
    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->j:Lio/reactivex/j/e;

    invoke-interface {p1, v0}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 115
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/ek$b;->cancelled:Z

    if-nez p1, :cond_0

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->g:Lio/reactivex/ah;

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/ek$b;->e:J

    iget-object v6, p0, Lio/reactivex/internal/operators/c/ek$b;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 2

    .line 180
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$b;->cancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$b;->m:Z

    .line 182
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$b;->a()V

    .line 184
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$b;->queue:Lio/reactivex/internal/b/i;

    sget-object v1, Lio/reactivex/internal/operators/c/ek$b;->l:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$b;->b()V

    :cond_1
    return-void
.end method
