.class public final Lio/reactivex/internal/operators/c/cl;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cl$a;
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
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 24
    iput-wide p1, p0, Lio/reactivex/internal/operators/c/cl;->a:J

    .line 25
    iput-wide p3, p0, Lio/reactivex/internal/operators/c/cl;->b:J

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 30
    new-instance v6, Lio/reactivex/internal/operators/c/cl$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/cl;->a:J

    iget-wide v0, p0, Lio/reactivex/internal/operators/c/cl;->b:J

    add-long v4, v2, v0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/cl$a;-><init>(Lio/reactivex/ag;JJ)V

    .line 31
    invoke-interface {p1, v6}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1055
    iget-boolean p1, v6, Lio/reactivex/internal/operators/c/cl$a;->d:Z

    if-nez p1, :cond_1

    .line 1058
    iget-object p1, v6, Lio/reactivex/internal/operators/c/cl$a;->a:Lio/reactivex/ag;

    .line 1059
    iget-wide v0, v6, Lio/reactivex/internal/operators/c/cl$a;->b:J

    .line 1060
    iget-wide v2, v6, Lio/reactivex/internal/operators/c/cl$a;->c:J

    :goto_0
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    invoke-virtual {v6}, Lio/reactivex/internal/operators/c/cl$a;->get()I

    move-result v4

    if-nez v4, :cond_0

    .line 1061
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 1063
    :cond_0
    invoke-virtual {v6}, Lio/reactivex/internal/operators/c/cl$a;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1064
    invoke-virtual {v6, v0}, Lio/reactivex/internal/operators/c/cl$a;->lazySet(I)V

    .line 1065
    invoke-interface {p1}, Lio/reactivex/ag;->onComplete()V

    :cond_1
    return-void
.end method
