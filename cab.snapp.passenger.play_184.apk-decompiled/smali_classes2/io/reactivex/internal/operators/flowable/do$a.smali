.class final Lio/reactivex/internal/operators/flowable/do$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/internal/operators/flowable/dn$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/internal/operators/flowable/dn$b;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/flowable/dn$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/dn$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/internal/operators/flowable/dn$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/dn$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/internal/util/b;

.field f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/al;ILio/reactivex/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/do$a;->a:Lio/reactivex/al;

    .line 78
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/do$a;->b:Lio/reactivex/e/d;

    .line 79
    new-instance p1, Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-direct {p1, p0, p2}, Lio/reactivex/internal/operators/flowable/dn$c;-><init>(Lio/reactivex/internal/operators/flowable/dn$b;I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    .line 80
    new-instance p1, Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-direct {p1, p0, p2}, Lio/reactivex/internal/operators/flowable/dn$c;-><init>(Lio/reactivex/internal/operators/flowable/dn$b;I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    .line 81
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    return-void
.end method

.method private a()V
    .locals 1

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->cancel()V

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->a()V

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->cancel()V

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->a()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->cancel()V

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->cancel()V

    .line 93
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/do$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->a()V

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->a()V

    :cond_0
    return-void
.end method

.method public final drain()V
    .locals 10

    .line 113
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/do$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 120
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    iget-object v2, v2, Lio/reactivex/internal/operators/flowable/dn$c;->e:Lio/reactivex/internal/b/j;

    .line 121
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/dn$c;->e:Lio/reactivex/internal/b/j;

    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    .line 125
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/do$a;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->a()V

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->a()V

    return-void

    .line 131
    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v4}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 133
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/do$a;->a()V

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->a:Lio/reactivex/al;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 139
    :cond_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    iget-boolean v4, v4, Lio/reactivex/internal/operators/flowable/dn$c;->f:Z

    .line 141
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/do$a;->f:Ljava/lang/Object;

    if-nez v5, :cond_4

    .line 144
    :try_start_0
    invoke-interface {v2}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iput-object v5, p0, Lio/reactivex/internal/operators/flowable/do$a;->f:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 146
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 147
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/do$a;->a()V

    .line 148
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->a:Lio/reactivex/al;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_1
    const/4 v6, 0x0

    if-nez v5, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 156
    :goto_2
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    iget-boolean v8, v8, Lio/reactivex/internal/operators/flowable/dn$c;->f:Z

    .line 157
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/do$a;->g:Ljava/lang/Object;

    if-nez v9, :cond_6

    .line 160
    :try_start_1
    invoke-interface {v3}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    iput-object v9, p0, Lio/reactivex/internal/operators/flowable/do$a;->g:Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 162
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 163
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/do$a;->a()V

    .line 164
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->a:Lio/reactivex/al;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    :goto_3
    if-nez v9, :cond_7

    const/4 v6, 0x1

    :cond_7
    if-eqz v4, :cond_8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    if-eqz v6, :cond_8

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->a:Lio/reactivex/al;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v8, :cond_9

    if-eq v7, v6, :cond_9

    .line 178
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/do$a;->a()V

    .line 179
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->a:Lio/reactivex/al;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_9
    if-nez v7, :cond_d

    if-nez v6, :cond_d

    .line 190
    :try_start_2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/do$a;->b:Lio/reactivex/e/d;

    invoke-interface {v4, v5, v9}, Lio/reactivex/e/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v4, :cond_a

    .line 200
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/do$a;->a()V

    .line 201
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->a:Lio/reactivex/al;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_a
    const/4 v4, 0x0

    .line 205
    iput-object v4, p0, Lio/reactivex/internal/operators/flowable/do$a;->f:Ljava/lang/Object;

    .line 206
    iput-object v4, p0, Lio/reactivex/internal/operators/flowable/do$a;->g:Ljava/lang/Object;

    .line 208
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v4}, Lio/reactivex/internal/operators/flowable/dn$c;->request()V

    .line 209
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v4}, Lio/reactivex/internal/operators/flowable/dn$c;->request()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    .line 192
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 193
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/do$a;->a()V

    .line 194
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->a:Lio/reactivex/al;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 213
    :cond_b
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/do$a;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 214
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->a()V

    .line 215
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->a()V

    return-void

    .line 219
    :cond_c
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_d

    .line 221
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/do$a;->a()V

    .line 223
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->a:Lio/reactivex/al;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_d
    neg-int v1, v1

    .line 228
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/do$a;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    return-void
.end method

.method public final innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/do$a;->drain()V

    return-void

    .line 240
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dn$c;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
