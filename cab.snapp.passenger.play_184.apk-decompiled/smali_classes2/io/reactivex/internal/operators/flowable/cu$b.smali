.class final Lio/reactivex/internal/operators/flowable/cu$b;
.super Lio/reactivex/internal/operators/flowable/cu$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final d:Lio/reactivex/internal/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/a<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/b/a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/b/a<",
            "-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/cu$a;-><init>(II)V

    .line 184
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cu$b;->d:Lio/reactivex/internal/b/a;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 189
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cu$b;->a:I

    .line 190
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/cu$b;->d:Lio/reactivex/internal/b/a;

    .line 192
    iget v2, p0, Lio/reactivex/internal/operators/flowable/cu$b;->b:I

    :goto_0
    if-eq v2, v0, :cond_1

    .line 193
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/cu$b;->c:Z

    if-eqz v3, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cu$b;->c:Z

    if-eqz v0, :cond_2

    return-void

    .line 201
    :cond_2
    invoke-interface {v1}, Lio/reactivex/internal/b/a;->onComplete()V

    return-void
.end method

.method final a(J)V
    .locals 9

    .line 207
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cu$b;->a:I

    .line 208
    iget v1, p0, Lio/reactivex/internal/operators/flowable/cu$b;->b:I

    .line 209
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cu$b;->d:Lio/reactivex/internal/b/a;

    const-wide/16 v3, 0x0

    move-wide v5, p1

    :cond_0
    move-wide p1, v3

    :cond_1
    :goto_0
    cmp-long v7, p1, v5

    if-eqz v7, :cond_4

    if-eq v1, v0, :cond_4

    .line 214
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/cu$b;->c:Z

    if-eqz v7, :cond_2

    return-void

    .line 218
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x1

    add-long/2addr p1, v7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-ne v1, v0, :cond_6

    .line 226
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/cu$b;->c:Z

    if-nez p1, :cond_5

    .line 227
    invoke-interface {v2}, Lio/reactivex/internal/b/a;->onComplete()V

    :cond_5
    return-void

    .line 232
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cu$b;->get()J

    move-result-wide v5

    cmp-long v7, p1, v5

    if-nez v7, :cond_1

    .line 234
    iput v1, p0, Lio/reactivex/internal/operators/flowable/cu$b;->b:I

    neg-long p1, p1

    .line 235
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/cu$b;->addAndGet(J)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-nez p1, :cond_0

    return-void
.end method
