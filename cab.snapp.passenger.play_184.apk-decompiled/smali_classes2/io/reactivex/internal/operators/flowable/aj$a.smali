.class final Lio/reactivex/internal/operators/flowable/aj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/aj$a$a;,
        Lio/reactivex/internal/operators/flowable/aj$a$b;,
        Lio/reactivex/internal/operators/flowable/aj$a$c;
    }
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

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah$c;

.field final e:Z

.field f:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            "Z)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/aj$a;->a:Lorg/b/c;

    .line 65
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/aj$a;->b:J

    .line 66
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/aj$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 67
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/aj$a;->d:Lio/reactivex/ah$c;

    .line 68
    iput-boolean p6, p0, Lio/reactivex/internal/operators/flowable/aj$a;->e:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aj$a;->f:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aj$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 5

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aj$a;->d:Lio/reactivex/ah$c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/aj$a$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/flowable/aj$a$a;-><init>(Lio/reactivex/internal/operators/flowable/aj$a;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/aj$a;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/aj$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aj$a;->d:Lio/reactivex/ah$c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/aj$a$b;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/flowable/aj$a$b;-><init>(Lio/reactivex/internal/operators/flowable/aj$a;Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/aj$a;->e:Z

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/aj$a;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/aj$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aj$a;->d:Lio/reactivex/ah$c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/aj$a$c;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/flowable/aj$a$c;-><init>(Lio/reactivex/internal/operators/flowable/aj$a;Ljava/lang/Object;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/aj$a;->b:J

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/aj$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aj$a;->f:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/aj$a;->f:Lorg/b/d;

    .line 75
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/aj$a;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aj$a;->f:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method
