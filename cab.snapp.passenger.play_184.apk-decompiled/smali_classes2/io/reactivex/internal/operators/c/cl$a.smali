.class final Lio/reactivex/internal/operators/c/cl$a;
.super Lio/reactivex/internal/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/c/b<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final b:J

.field c:J

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lio/reactivex/internal/c/b;-><init>()V

    .line 49
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cl$a;->a:Lio/reactivex/ag;

    .line 50
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/cl$a;->c:J

    .line 51
    iput-wide p4, p0, Lio/reactivex/internal/operators/c/cl$a;->b:J

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 88
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/cl$a;->b:J

    iput-wide v0, p0, Lio/reactivex/internal/operators/c/cl$a;->c:J

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/cl$a;->lazySet(I)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/cl$a;->set(I)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cl$a;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 5

    .line 83
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/cl$a;->c:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/cl$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final poll()Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/cl$a;->c:J

    .line 73
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/cl$a;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 74
    iput-wide v2, p0, Lio/reactivex/internal/operators/c/cl$a;->c:J

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/cl$a;->lazySet(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cl$a;->poll()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 105
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/cl$a;->d:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
