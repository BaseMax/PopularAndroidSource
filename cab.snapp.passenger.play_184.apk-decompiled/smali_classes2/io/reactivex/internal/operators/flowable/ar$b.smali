.class final Lio/reactivex/internal/operators/flowable/ar$b;
.super Lio/reactivex/internal/f/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ar;
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
        "Lio/reactivex/internal/f/b<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/a;

.field final d:Lio/reactivex/e/a;


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/b;-><init>(Lorg/b/c;)V

    .line 68
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ar$b;->a:Lio/reactivex/e/g;

    .line 69
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ar$b;->b:Lio/reactivex/e/g;

    .line 70
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ar$b;->c:Lio/reactivex/e/a;

    .line 71
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ar$b;->d:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->c:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->h:Z

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->e:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 138
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->d:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 140
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 141
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 130
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/ar$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 97
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->h:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->h:Z

    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ar$b;->b:Lio/reactivex/e/g;

    invoke-interface {v2, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 106
    invoke-static {v2}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 107
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ar$b;->e:Lorg/b/c;

    new-instance v4, Lio/reactivex/c/a;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    invoke-direct {v4, v5}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->e:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 115
    :cond_1
    :try_start_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ar$b;->d:Lio/reactivex/e/a;

    invoke-interface {p1}, Lio/reactivex/e/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 117
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 118
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

    .line 76
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->i:I

    if-eqz v0, :cond_1

    .line 81
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ar$b;->e:Lorg/b/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void

    .line 86
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->a:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->e:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 88
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ar$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 156
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ar$b;->g:Lio/reactivex/internal/b/g;

    invoke-interface {v3}, Lio/reactivex/internal/b/g;->poll()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_0

    .line 170
    :try_start_1
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ar$b;->a:Lio/reactivex/e/g;

    invoke-interface {v4, v3}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->d:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 172
    :try_start_2
    invoke-static {v3}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    :try_start_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ar$b;->b:Lio/reactivex/e/g;

    invoke-interface {v4, v3}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    :try_start_4
    invoke-static {v3}, Lio/reactivex/internal/util/h;->throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :catchall_1
    move-exception v4

    .line 176
    new-instance v5, Lio/reactivex/c/a;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-direct {v5, v1}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 181
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ar$b;->d:Lio/reactivex/e/a;

    invoke-interface {v1}, Lio/reactivex/e/a;->run()V

    throw v0

    .line 184
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->i:I

    if-ne v0, v2, :cond_1

    .line 185
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->c:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V

    .line 187
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ar$b;->d:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V

    :cond_1
    :goto_0
    return-object v3

    :catchall_3
    move-exception v3

    .line 158
    invoke-static {v3}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 160
    :try_start_5
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ar$b;->b:Lio/reactivex/e/g;

    invoke-interface {v4, v3}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 164
    invoke-static {v3}, Lio/reactivex/internal/util/h;->throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :catchall_4
    move-exception v4

    .line 162
    new-instance v5, Lio/reactivex/c/a;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-direct {v5, v1}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    throw v5
.end method

.method public final requestFusion(I)I
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ar$b;->a(I)I

    move-result p1

    return p1
.end method
