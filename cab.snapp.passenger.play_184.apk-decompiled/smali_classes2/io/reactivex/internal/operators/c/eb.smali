.class public final Lio/reactivex/internal/operators/c/eb;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/eb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/z<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ah;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 28
    iput-wide p1, p0, Lio/reactivex/internal/operators/c/eb;->b:J

    .line 29
    iput-object p3, p0, Lio/reactivex/internal/operators/c/eb;->c:Ljava/util/concurrent/TimeUnit;

    .line 30
    iput-object p4, p0, Lio/reactivex/internal/operators/c/eb;->a:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 35
    new-instance v0, Lio/reactivex/internal/operators/c/eb$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/c/eb$a;-><init>(Lio/reactivex/ag;)V

    .line 36
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 38
    iget-object p1, p0, Lio/reactivex/internal/operators/c/eb;->a:Lio/reactivex/ah;

    iget-wide v1, p0, Lio/reactivex/internal/operators/c/eb;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/c/eb;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/eb$a;->setResource(Lio/reactivex/b/c;)V

    return-void
.end method
