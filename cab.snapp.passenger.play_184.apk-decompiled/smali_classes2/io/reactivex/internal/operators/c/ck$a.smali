.class final Lio/reactivex/internal/operators/c/ck$a;
.super Lio/reactivex/internal/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/c/b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;JJ)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lio/reactivex/internal/c/b;-><init>()V

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ck$a;->a:Lio/reactivex/ag;

    .line 53
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ck$a;->c:J

    .line 54
    iput-wide p4, p0, Lio/reactivex/internal/operators/c/ck$a;->b:J

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 91
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/ck$a;->b:J

    iput-wide v0, p0, Lio/reactivex/internal/operators/c/ck$a;->c:J

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/ck$a;->lazySet(I)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/ck$a;->set(I)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 102
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ck$a;->get()I

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

    .line 86
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/ck$a;->c:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/ck$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final poll()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/ck$a;->c:J

    .line 76
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/ck$a;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 77
    iput-wide v2, p0, Lio/reactivex/internal/operators/c/ck$a;->c:J

    long-to-int v1, v0

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/ck$a;->lazySet(I)V

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

    .line 38
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ck$a;->poll()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 108
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ck$a;->d:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
