.class final Lio/reactivex/internal/operators/d/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/l;
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

.field final b:Lio/reactivex/internal/operators/d/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/d/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Lorg/b/d;

.field d:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/internal/operators/d/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/d/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/d/l$a;->a:Lorg/b/c;

    .line 100
    iput-object p2, p0, Lio/reactivex/internal/operators/d/l$a;->b:Lio/reactivex/internal/operators/d/l;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 117
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->b:Lio/reactivex/internal/operators/d/l;

    iget-object v0, v0, Lio/reactivex/internal/operators/d/l;->i:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 120
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 122
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->c:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/l$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/l$a;->d:Z

    .line 195
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->b:Lio/reactivex/internal/operators/d/l;

    iget-object v0, v0, Lio/reactivex/internal/operators/d/l;->e:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 204
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->b:Lio/reactivex/internal/operators/d/l;

    iget-object v0, v0, Lio/reactivex/internal/operators/d/l;->f:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 206
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 207
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 197
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 198
    iget-object v1, p0, Lio/reactivex/internal/operators/d/l$a;->a:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 168
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/l$a;->d:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lio/reactivex/internal/operators/d/l$a;->d:Z

    .line 175
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/d/l$a;->b:Lio/reactivex/internal/operators/d/l;

    iget-object v1, v1, Lio/reactivex/internal/operators/d/l;->d:Lio/reactivex/e/g;

    invoke-interface {v1, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 177
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 178
    new-instance v2, Lio/reactivex/c/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v2

    .line 180
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 183
    :try_start_1
    iget-object p1, p0, Lio/reactivex/internal/operators/d/l$a;->b:Lio/reactivex/internal/operators/d/l;

    iget-object p1, p1, Lio/reactivex/internal/operators/d/l;->f:Lio/reactivex/e/a;

    invoke-interface {p1}, Lio/reactivex/e/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 185
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 186
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 146
    iget-boolean v0, p0, Lio/reactivex/internal/operators/d/l$a;->d:Z

    if-nez v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->b:Lio/reactivex/internal/operators/d/l;

    iget-object v0, v0, Lio/reactivex/internal/operators/d/l;->b:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 158
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->b:Lio/reactivex/internal/operators/d/l;

    iget-object v0, v0, Lio/reactivex/internal/operators/d/l;->c:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 160
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 161
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/l$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 150
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 151
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/l$a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->c:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iput-object p1, p0, Lio/reactivex/internal/operators/d/l$a;->c:Lorg/b/d;

    .line 131
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->b:Lio/reactivex/internal/operators/d/l;

    iget-object v0, v0, Lio/reactivex/internal/operators/d/l;->g:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object p1, p0, Lio/reactivex/internal/operators/d/l$a;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 133
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 134
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 135
    iget-object p1, p0, Lio/reactivex/internal/operators/d/l$a;->a:Lorg/b/c;

    sget-object v1, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-interface {p1, v1}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 136
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/d/l$a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 106
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->b:Lio/reactivex/internal/operators/d/l;

    iget-object v0, v0, Lio/reactivex/internal/operators/d/l;->h:Lio/reactivex/e/p;

    invoke-interface {v0, p1, p2}, Lio/reactivex/e/p;->accept(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 108
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 109
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 111
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/l$a;->c:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method
