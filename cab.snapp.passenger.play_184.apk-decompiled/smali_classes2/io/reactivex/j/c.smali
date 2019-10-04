.class final Lio/reactivex/j/c;
.super Lio/reactivex/j/d;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/util/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j/d<",
        "TT;>;",
        "Lio/reactivex/internal/util/a$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/j/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Lio/reactivex/internal/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile d:Z


# direct methods
.method constructor <init>(Lio/reactivex/j/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lio/reactivex/j/d;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    return-void
.end method

.method private a()V
    .locals 2

    .line 168
    :goto_0
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lio/reactivex/j/c;->c:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lio/reactivex/j/c;->b:Z

    .line 172
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 174
    iput-object v1, p0, Lio/reactivex/j/c;->c:Lio/reactivex/internal/util/a;

    .line 175
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v0, p0}, Lio/reactivex/internal/util/a;->forEachWhile(Lio/reactivex/internal/util/a$a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 175
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 198
    iget-object v0, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    invoke-virtual {v0}, Lio/reactivex/j/d;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final hasComplete()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    invoke-virtual {v0}, Lio/reactivex/j/d;->hasComplete()Z

    move-result v0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    invoke-virtual {v0}, Lio/reactivex/j/d;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasThrowable()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    invoke-virtual {v0}, Lio/reactivex/j/d;->hasThrowable()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 142
    iget-boolean v0, p0, Lio/reactivex/j/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/j/c;->d:Z

    if-eqz v0, :cond_1

    .line 147
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lio/reactivex/j/c;->d:Z

    .line 150
    iget-boolean v1, p0, Lio/reactivex/j/c;->b:Z

    if-eqz v1, :cond_3

    .line 151
    iget-object v0, p0, Lio/reactivex/j/c;->c:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    .line 154
    iput-object v0, p0, Lio/reactivex/j/c;->c:Lio/reactivex/internal/util/a;

    .line 156
    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/a;->add(Ljava/lang/Object;)V

    .line 157
    monitor-exit p0

    return-void

    .line 159
    :cond_3
    iput-boolean v0, p0, Lio/reactivex/j/c;->b:Z

    .line 160
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    invoke-virtual {v0}, Lio/reactivex/j/d;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    .line 160
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lio/reactivex/j/c;->d:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 115
    :cond_0
    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/j/c;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iput-boolean v1, p0, Lio/reactivex/j/c;->d:Z

    .line 120
    iget-boolean v0, p0, Lio/reactivex/j/c;->b:Z

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lio/reactivex/j/c;->c:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    .line 124
    iput-object v0, p0, Lio/reactivex/j/c;->c:Lio/reactivex/internal/util/a;

    .line 126
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->setFirst(Ljava/lang/Object;)V

    .line 127
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 130
    iput-boolean v1, p0, Lio/reactivex/j/c;->b:Z

    .line 132
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 134
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 137
    :cond_4
    iget-object v0, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    invoke-virtual {v0, p1}, Lio/reactivex/j/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 132
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lio/reactivex/j/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    monitor-enter p0

    .line 90
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/j/c;->d:Z

    if-eqz v0, :cond_1

    .line 91
    monitor-exit p0

    return-void

    .line 93
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/j/c;->b:Z

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lio/reactivex/j/c;->c:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    .line 97
    iput-object v0, p0, Lio/reactivex/j/c;->c:Lio/reactivex/internal/util/a;

    .line 99
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->add(Ljava/lang/Object;)V

    .line 100
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lio/reactivex/j/c;->b:Z

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    invoke-virtual {v0, p1}, Lio/reactivex/j/d;->onNext(Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lio/reactivex/j/c;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 55
    iget-boolean v0, p0, Lio/reactivex/j/c;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/j/c;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/j/c;->b:Z

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lio/reactivex/j/c;->c:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    .line 64
    iput-object v0, p0, Lio/reactivex/j/c;->c:Lio/reactivex/internal/util/a;

    .line 66
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->disposable(Lio/reactivex/b/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->add(Ljava/lang/Object;)V

    .line 67
    monitor-exit p0

    return-void

    .line 69
    :cond_2
    iput-boolean v1, p0, Lio/reactivex/j/c;->b:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 77
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    return-void

    .line 79
    :cond_4
    iget-object v0, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    invoke-virtual {v0, p1}, Lio/reactivex/j/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 80
    invoke-direct {p0}, Lio/reactivex/j/c;->a()V

    return-void
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    invoke-virtual {v0, p1}, Lio/reactivex/j/d;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 182
    iget-object v0, p0, Lio/reactivex/j/c;->a:Lio/reactivex/j/d;

    invoke-static {p1, v0}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/ag;)Z

    move-result p1

    return p1
.end method
