.class public final Lio/reactivex/internal/operators/c/ck;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ck$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/z<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 27
    iput p1, p0, Lio/reactivex/internal/operators/c/ck;->a:I

    int-to-long v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    .line 28
    iput-wide v0, p0, Lio/reactivex/internal/operators/c/ck;->b:J

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 33
    new-instance v6, Lio/reactivex/internal/operators/c/ck$a;

    iget v0, p0, Lio/reactivex/internal/operators/c/ck;->a:I

    int-to-long v2, v0

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/ck;->b:J

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/ck$a;-><init>(Lio/reactivex/ag;JJ)V

    .line 34
    invoke-interface {p1, v6}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1058
    iget-boolean p1, v6, Lio/reactivex/internal/operators/c/ck$a;->d:Z

    if-nez p1, :cond_1

    .line 1061
    iget-object p1, v6, Lio/reactivex/internal/operators/c/ck$a;->a:Lio/reactivex/ag;

    .line 1062
    iget-wide v0, v6, Lio/reactivex/internal/operators/c/ck$a;->b:J

    .line 1063
    iget-wide v2, v6, Lio/reactivex/internal/operators/c/ck$a;->c:J

    :goto_0
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    invoke-virtual {v6}, Lio/reactivex/internal/operators/c/ck$a;->get()I

    move-result v4

    if-nez v4, :cond_0

    long-to-int v4, v2

    .line 1064
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 1066
    :cond_0
    invoke-virtual {v6}, Lio/reactivex/internal/operators/c/ck$a;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1067
    invoke-virtual {v6, v0}, Lio/reactivex/internal/operators/c/ck$a;->lazySet(I)V

    .line 1068
    invoke-interface {p1}, Lio/reactivex/ag;->onComplete()V

    :cond_1
    return-void
.end method
