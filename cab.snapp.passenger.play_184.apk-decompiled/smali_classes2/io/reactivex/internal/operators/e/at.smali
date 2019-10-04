.class public final Lio/reactivex/internal/operators/e/at;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/at$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/ai<",
        "Ljava/lang/Long;",
        ">;"
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
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 33
    iput-wide p1, p0, Lio/reactivex/internal/operators/e/at;->a:J

    .line 34
    iput-object p3, p0, Lio/reactivex/internal/operators/e/at;->b:Ljava/util/concurrent/TimeUnit;

    .line 35
    iput-object p4, p0, Lio/reactivex/internal/operators/e/at;->c:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lio/reactivex/internal/operators/e/at$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/e/at$a;-><init>(Lio/reactivex/al;)V

    .line 41
    invoke-interface {p1, v0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    .line 42
    iget-object p1, p0, Lio/reactivex/internal/operators/e/at;->c:Lio/reactivex/ah;

    iget-wide v1, p0, Lio/reactivex/internal/operators/e/at;->a:J

    iget-object v3, p0, Lio/reactivex/internal/operators/e/at;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 1070
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
