.class public final Lio/reactivex/internal/operators/a/an;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/an$a;
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lio/reactivex/ah;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 33
    iput-wide p1, p0, Lio/reactivex/internal/operators/a/an;->a:J

    .line 34
    iput-object p3, p0, Lio/reactivex/internal/operators/a/an;->b:Ljava/util/concurrent/TimeUnit;

    .line 35
    iput-object p4, p0, Lio/reactivex/internal/operators/a/an;->c:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 4

    .line 40
    new-instance v0, Lio/reactivex/internal/operators/a/an$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/a/an$a;-><init>(Lio/reactivex/d;)V

    .line 41
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 42
    iget-object p1, p0, Lio/reactivex/internal/operators/a/an;->c:Lio/reactivex/ah;

    iget-wide v1, p0, Lio/reactivex/internal/operators/a/an;->a:J

    iget-object v3, p0, Lio/reactivex/internal/operators/a/an;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 1070
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
