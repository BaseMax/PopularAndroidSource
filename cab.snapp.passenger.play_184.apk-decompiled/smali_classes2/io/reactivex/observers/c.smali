.class public final Lio/reactivex/observers/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/b/c;

.field c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/reactivex/observers/c;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lio/reactivex/observers/c;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 6

    .line 180
    iget-boolean v0, p0, Lio/reactivex/observers/c;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lio/reactivex/observers/c;->c:Z

    .line 186
    iget-object v1, p0, Lio/reactivex/observers/c;->b:Lio/reactivex/b/c;

    if-nez v1, :cond_1

    .line 1201
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Subscription not set!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1204
    :try_start_0
    iget-object v4, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    sget-object v5, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {v4, v5}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1212
    :try_start_1
    iget-object v4, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    invoke-interface {v4, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    .line 1214
    invoke-static {v4}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1216
    new-instance v5, Lio/reactivex/c/a;

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v1, v3, v2

    aput-object v4, v3, v0

    invoke-direct {v5, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v5}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v4

    .line 1206
    invoke-static {v4}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1208
    new-instance v5, Lio/reactivex/c/a;

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v1, v3, v2

    aput-object v4, v3, v0

    invoke-direct {v5, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v5}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 192
    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 194
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 195
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 8

    .line 138
    iget-boolean v0, p0, Lio/reactivex/observers/c;->c:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lio/reactivex/observers/c;->c:Z

    .line 144
    iget-object v1, p0, Lio/reactivex/observers/c;->b:Lio/reactivex/b/c;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_1

    .line 145
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "Subscription not set!"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 148
    :try_start_0
    iget-object v5, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    sget-object v6, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {v5, v6}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    iget-object v5, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    new-instance v6, Lio/reactivex/c/a;

    new-array v7, v3, [Ljava/lang/Throwable;

    aput-object p1, v7, v2

    aput-object v1, v7, v0

    invoke-direct {v6, v7}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v5, v6}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v5

    .line 158
    invoke-static {v5}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 160
    new-instance v6, Lio/reactivex/c/a;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p1, v4, v2

    aput-object v1, v4, v0

    aput-object v5, v4, v3

    invoke-direct {v6, v4}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v6}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v5

    .line 150
    invoke-static {v5}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 152
    new-instance v6, Lio/reactivex/c/a;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p1, v4, v2

    aput-object v1, v4, v0

    aput-object v5, v4, v3

    invoke-direct {v6, v4}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v6}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 166
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 170
    :cond_2
    :try_start_2
    iget-object v1, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    invoke-interface {v1, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    .line 172
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 174
    new-instance v4, Lio/reactivex/c/a;

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object p1, v3, v2

    aput-object v1, v3, v0

    invoke-direct {v4, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v4}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 78
    iget-boolean v0, p0, Lio/reactivex/observers/c;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lio/reactivex/observers/c;->b:Lio/reactivex/b/c;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1115
    iput-boolean v3, p0, Lio/reactivex/observers/c;->c:Z

    .line 1117
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Subscription not set!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1120
    :try_start_0
    iget-object v0, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    sget-object v4, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {v0, v4}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1128
    :try_start_1
    iget-object v0, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1130
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1132
    new-instance v4, Lio/reactivex/c/a;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v0, v2, v3

    invoke-direct {v4, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v4}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 1122
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1124
    new-instance v4, Lio/reactivex/c/a;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v0, v2, v3

    invoke-direct {v4, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v4}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 87
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 89
    :try_start_2
    iget-object v0, p0, Lio/reactivex/observers/c;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 95
    invoke-virtual {p0, p1}, Lio/reactivex/observers/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    .line 91
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 92
    new-instance v4, Lio/reactivex/c/a;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v0, v2, v3

    invoke-direct {v4, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lio/reactivex/observers/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 100
    :cond_2
    :try_start_3
    iget-object v0, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p1

    .line 102
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 104
    :try_start_4
    iget-object v0, p0, Lio/reactivex/observers/c;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 110
    invoke-virtual {p0, p1}, Lio/reactivex/observers/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_4
    move-exception v0

    .line 106
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 107
    new-instance v4, Lio/reactivex/c/a;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v0, v2, v3

    invoke-direct {v4, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lio/reactivex/observers/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 5

    .line 46
    iget-object v0, p0, Lio/reactivex/observers/c;->b:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iput-object p1, p0, Lio/reactivex/observers/c;->b:Lio/reactivex/b/c;

    .line 49
    :try_start_0
    iget-object v0, p0, Lio/reactivex/observers/c;->a:Lio/reactivex/ag;

    invoke-interface {v0, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lio/reactivex/observers/c;->c:Z

    .line 55
    :try_start_1
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 57
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 58
    new-instance v2, Lio/reactivex/c/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object p1, v3, v1

    invoke-direct {v2, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
