.class public final Lio/reactivex/internal/operators/maybe/bl;
.super Lio/reactivex/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/bl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/q<",
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

    .line 34
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 35
    iput-wide p1, p0, Lio/reactivex/internal/operators/maybe/bl;->a:J

    .line 36
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/bl;->b:Ljava/util/concurrent/TimeUnit;

    .line 37
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/bl;->c:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 42
    new-instance v0, Lio/reactivex/internal/operators/maybe/bl$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/bl$a;-><init>(Lio/reactivex/t;)V

    .line 43
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    .line 44
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/bl;->c:Lio/reactivex/ah;

    iget-wide v1, p0, Lio/reactivex/internal/operators/maybe/bl;->a:J

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/bl;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 1072
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
