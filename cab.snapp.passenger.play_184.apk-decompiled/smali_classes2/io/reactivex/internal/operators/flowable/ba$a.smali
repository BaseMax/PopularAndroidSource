.class final Lio/reactivex/internal/operators/flowable/ba$a;
.super Lio/reactivex/internal/subscriptions/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ba$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/a<",
        "TT;>;",
        "Lio/reactivex/o<",
        "TT;>;"
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

.field final b:Lio/reactivex/internal/util/b;

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Lio/reactivex/b/b;

.field final f:I

.field g:Lorg/b/d;

.field volatile h:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;ZI)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/a;-><init>()V

    .line 80
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->a:Lorg/b/c;

    .line 81
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ba$a;->c:Lio/reactivex/e/h;

    .line 82
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/ba$a;->d:Z

    .line 83
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->b:Lio/reactivex/internal/util/b;

    .line 84
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->e:Lio/reactivex/b/b;

    .line 85
    iput p4, p0, Lio/reactivex/internal/operators/flowable/ba$a;->f:I

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ba$a;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->h:Z

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->g:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    return-void
.end method

.method public final clear()V
    .locals 0

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onComplete()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ba$a;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->a:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 161
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->f:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->g:Lorg/b/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->d:Z

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ba$a;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 135
    :cond_0
    iget p1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->f:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    .line 136
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->g:Lorg/b/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ba$a;->cancel()V

    const/4 p1, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ba$a;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_3

    .line 142
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 147
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 110
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->c:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ba$a;->getAndIncrement()I

    .line 120
    new-instance v0, Lio/reactivex/internal/operators/flowable/ba$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/ba$a$a;-><init>(Lio/reactivex/internal/operators/flowable/ba$a;)V

    .line 122
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, v0}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {p1, v0}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 112
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->g:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 114
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ba$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->g:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ba$a;->g:Lorg/b/d;

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 96
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ba$a;->f:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 98
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    :cond_0
    int-to-long v0, v0

    .line 100
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_1
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1
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

    return-object v0
.end method

.method public final request(J)V
    .locals 0

    return-void
.end method

.method public final requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method
