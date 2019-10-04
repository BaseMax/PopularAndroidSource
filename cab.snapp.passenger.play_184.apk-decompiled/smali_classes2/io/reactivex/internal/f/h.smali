.class public abstract Lio/reactivex/internal/f/h;
.super Lio/reactivex/internal/subscriptions/c;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/c<",
        "TR;>;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected d:Lorg/b/d;

.field protected e:Z


# direct methods
.method public constructor <init>(Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/c;-><init>(Lorg/b/c;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 74
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/c;->cancel()V

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/f/h;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lio/reactivex/internal/f/h;->e:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lio/reactivex/internal/f/h;->i:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/f/h;->complete(Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/f/h;->h:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lio/reactivex/internal/f/h;->i:Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/f/h;->h:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/f/h;->d:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iput-object p1, p0, Lio/reactivex/internal/f/h;->d:Lorg/b/d;

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/f/h;->h:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 53
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
