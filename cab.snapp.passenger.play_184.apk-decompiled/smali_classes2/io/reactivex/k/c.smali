.class public final Lio/reactivex/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Lorg/b/d;

.field c:Z


# direct methods
.method public constructor <init>(Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 228
    :try_start_0
    iget-object v0, p0, Lio/reactivex/k/c;->b:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 230
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 231
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onComplete()V
    .locals 6

    .line 169
    iget-boolean v0, p0, Lio/reactivex/k/c;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lio/reactivex/k/c;->c:Z

    .line 174
    iget-object v1, p0, Lio/reactivex/k/c;->b:Lorg/b/d;

    if-nez v1, :cond_1

    .line 1189
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Subscription not set!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1192
    :try_start_0
    iget-object v4, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    sget-object v5, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-interface {v4, v5}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1200
    :try_start_1
    iget-object v4, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    invoke-interface {v4, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    .line 1202
    invoke-static {v4}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1204
    new-instance v5, Lio/reactivex/c/a;

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v1, v3, v2

    aput-object v4, v3, v0

    invoke-direct {v5, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v5}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v4

    .line 1194
    invoke-static {v4}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1196
    new-instance v5, Lio/reactivex/c/a;

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v1, v3, v2

    aput-object v4, v3, v0

    invoke-direct {v5, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v5}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 180
    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 182
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 183
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 8

    .line 127
    iget-boolean v0, p0, Lio/reactivex/k/c;->c:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lio/reactivex/k/c;->c:Z

    .line 133
    iget-object v1, p0, Lio/reactivex/k/c;->b:Lorg/b/d;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_1

    .line 134
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "Subscription not set!"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 137
    :try_start_0
    iget-object v5, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    sget-object v6, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-interface {v5, v6}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :try_start_1
    iget-object v5, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    new-instance v6, Lio/reactivex/c/a;

    new-array v7, v3, [Ljava/lang/Throwable;

    aput-object p1, v7, v2

    aput-object v1, v7, v0

    invoke-direct {v6, v7}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v5, v6}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v5

    .line 147
    invoke-static {v5}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 149
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

    .line 139
    invoke-static {v5}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 141
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

    .line 155
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 159
    :cond_2
    :try_start_2
    iget-object v1, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    invoke-interface {v1, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    .line 161
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 163
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

    .line 68
    iget-boolean v0, p0, Lio/reactivex/k/c;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lio/reactivex/k/c;->b:Lorg/b/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1105
    iput-boolean v3, p0, Lio/reactivex/k/c;->c:Z

    .line 1106
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Subscription not set!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1109
    :try_start_0
    iget-object v0, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    sget-object v4, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-interface {v0, v4}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1117
    :try_start_1
    iget-object v0, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1119
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1121
    new-instance v4, Lio/reactivex/c/a;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v0, v2, v3

    invoke-direct {v4, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v4}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 1111
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1113
    new-instance v4, Lio/reactivex/c/a;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v0, v2, v3

    invoke-direct {v4, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v4}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 77
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 79
    :try_start_2
    iget-object v0, p0, Lio/reactivex/k/c;->b:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 85
    invoke-virtual {p0, p1}, Lio/reactivex/k/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    .line 81
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 82
    new-instance v4, Lio/reactivex/c/a;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v0, v2, v3

    invoke-direct {v4, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lio/reactivex/k/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 90
    :cond_2
    :try_start_3
    iget-object v0, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p1

    .line 92
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 94
    :try_start_4
    iget-object v0, p0, Lio/reactivex/k/c;->b:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 100
    invoke-virtual {p0, p1}, Lio/reactivex/k/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_4
    move-exception v0

    .line 96
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 97
    new-instance v4, Lio/reactivex/c/a;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v0, v2, v3

    invoke-direct {v4, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lio/reactivex/k/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 5

    .line 46
    iget-object v0, p0, Lio/reactivex/k/c;->b:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iput-object p1, p0, Lio/reactivex/k/c;->b:Lorg/b/d;

    .line 49
    :try_start_0
    iget-object v0, p0, Lio/reactivex/k/c;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lio/reactivex/k/c;->c:Z

    .line 55
    :try_start_1
    invoke-interface {p1}, Lorg/b/d;->cancel()V
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

.method public final request(J)V
    .locals 3

    .line 211
    :try_start_0
    iget-object v0, p0, Lio/reactivex/k/c;->b:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 213
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 215
    :try_start_1
    iget-object p2, p0, Lio/reactivex/k/c;->b:Lorg/b/d;

    invoke-interface {p2}, Lorg/b/d;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p2

    .line 217
    invoke-static {p2}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 218
    new-instance v0, Lio/reactivex/c/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-direct {v0, v1}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
