.class public final Lio/reactivex/internal/operators/flowable/et;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/et$b;,
        Lio/reactivex/internal/operators/flowable/et$c;,
        Lio/reactivex/internal/operators/flowable/et$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/j<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:J

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;JJI)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 37
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/et;->c:J

    .line 38
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/et;->d:J

    .line 39
    iput p6, p0, Lio/reactivex/internal/operators/flowable/et;->e:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 44
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/et;->d:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/et;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/et$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/et;->c:J

    iget v4, p0, Lio/reactivex/internal/operators/flowable/et;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/et$a;-><init>(Lorg/b/c;JI)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et;->b:Lio/reactivex/j;

    new-instance v8, Lio/reactivex/internal/operators/flowable/et$c;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/et;->c:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/et;->d:J

    iget v7, p0, Lio/reactivex/internal/operators/flowable/et;->e:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/et$c;-><init>(Lorg/b/c;JJI)V

    invoke-virtual {v0, v8}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et;->b:Lio/reactivex/j;

    new-instance v8, Lio/reactivex/internal/operators/flowable/et$b;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/et;->c:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/et;->d:J

    iget v7, p0, Lio/reactivex/internal/operators/flowable/et;->e:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/et$b;-><init>(Lorg/b/c;JJI)V

    invoke-virtual {v0, v8}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
