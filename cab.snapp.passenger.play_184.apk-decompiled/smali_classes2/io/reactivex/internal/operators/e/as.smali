.class public final Lio/reactivex/internal/operators/e/as;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/as$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/ai<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ao<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah;

.field final e:Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ao<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ao;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Lio/reactivex/ao<",
            "+TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/e/as;->a:Lio/reactivex/ao;

    .line 41
    iput-wide p2, p0, Lio/reactivex/internal/operators/e/as;->b:J

    .line 42
    iput-object p4, p0, Lio/reactivex/internal/operators/e/as;->c:Ljava/util/concurrent/TimeUnit;

    .line 43
    iput-object p5, p0, Lio/reactivex/internal/operators/e/as;->d:Lio/reactivex/ah;

    .line 44
    iput-object p6, p0, Lio/reactivex/internal/operators/e/as;->e:Lio/reactivex/ao;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;)V"
        }
    .end annotation

    .line 50
    new-instance v6, Lio/reactivex/internal/operators/e/as$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/e/as;->e:Lio/reactivex/ao;

    iget-wide v3, p0, Lio/reactivex/internal/operators/e/as;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/e/as;->c:Ljava/util/concurrent/TimeUnit;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/e/as$a;-><init>(Lio/reactivex/al;Lio/reactivex/ao;JLjava/util/concurrent/TimeUnit;)V

    .line 51
    invoke-interface {p1, v6}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    .line 53
    iget-object p1, v6, Lio/reactivex/internal/operators/e/as$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lio/reactivex/internal/operators/e/as;->d:Lio/reactivex/ah;

    iget-wide v1, p0, Lio/reactivex/internal/operators/e/as;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/e/as;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v1, v2, v3}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    .line 55
    iget-object p1, p0, Lio/reactivex/internal/operators/e/as;->a:Lio/reactivex/ao;

    invoke-interface {p1, v6}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    return-void
.end method
