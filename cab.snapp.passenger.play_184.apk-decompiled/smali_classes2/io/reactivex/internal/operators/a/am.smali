.class public final Lio/reactivex/internal/operators/a/am;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/am$a;,
        Lio/reactivex/internal/operators/a/am$b;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah;

.field final e:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/g;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/operators/a/am;->a:Lio/reactivex/g;

    .line 36
    iput-wide p2, p0, Lio/reactivex/internal/operators/a/am;->b:J

    .line 37
    iput-object p4, p0, Lio/reactivex/internal/operators/a/am;->c:Ljava/util/concurrent/TimeUnit;

    .line 38
    iput-object p5, p0, Lio/reactivex/internal/operators/a/am;->d:Lio/reactivex/ah;

    .line 39
    iput-object p6, p0, Lio/reactivex/internal/operators/a/am;->e:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 7

    .line 44
    new-instance v0, Lio/reactivex/b/b;

    invoke-direct {v0}, Lio/reactivex/b/b;-><init>()V

    .line 45
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 49
    iget-object v2, p0, Lio/reactivex/internal/operators/a/am;->d:Lio/reactivex/ah;

    new-instance v3, Lio/reactivex/internal/operators/a/am$a;

    invoke-direct {v3, p0, v1, v0, p1}, Lio/reactivex/internal/operators/a/am$a;-><init>(Lio/reactivex/internal/operators/a/am;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/b/b;Lio/reactivex/d;)V

    iget-wide v4, p0, Lio/reactivex/internal/operators/a/am;->b:J

    iget-object v6, p0, Lio/reactivex/internal/operators/a/am;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 53
    iget-object v2, p0, Lio/reactivex/internal/operators/a/am;->a:Lio/reactivex/g;

    new-instance v3, Lio/reactivex/internal/operators/a/am$b;

    invoke-direct {v3, v0, v1, p1}, Lio/reactivex/internal/operators/a/am$b;-><init>(Lio/reactivex/b/b;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/d;)V

    invoke-interface {v2, v3}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
