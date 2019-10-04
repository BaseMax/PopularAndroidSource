.class final Lio/reactivex/internal/operators/flowable/cv$c;
.super Lio/reactivex/internal/operators/flowable/cv$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final d:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/cv$a;-><init>(JJ)V

    .line 118
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cv$c;->d:Lorg/b/c;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 123
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/cv$c;->a:J

    .line 124
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cv$c;->d:Lorg/b/c;

    .line 126
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/cv$c;->b:J

    :goto_0
    cmp-long v5, v3, v0

    if-eqz v5, :cond_1

    .line 127
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/cv$c;->c:Z

    if-eqz v5, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 132
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cv$c;->c:Z

    if-eqz v0, :cond_2

    return-void

    .line 135
    :cond_2
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method final a(J)V
    .locals 11

    .line 141
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/cv$c;->a:J

    .line 142
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/cv$c;->b:J

    .line 143
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/cv$c;->d:Lorg/b/c;

    const-wide/16 v5, 0x0

    move-wide v7, v2

    move-wide v2, p1

    :cond_0
    move-wide p1, v5

    :cond_1
    :goto_0
    cmp-long v9, p1, v2

    if-eqz v9, :cond_3

    cmp-long v9, v7, v0

    if-eqz v9, :cond_3

    .line 148
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/cv$c;->c:Z

    if-eqz v9, :cond_2

    return-void

    .line 152
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v9, 0x1

    add-long/2addr p1, v9

    add-long/2addr v7, v9

    goto :goto_0

    :cond_3
    cmp-long v2, v7, v0

    if-nez v2, :cond_5

    .line 159
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/cv$c;->c:Z

    if-nez p1, :cond_4

    .line 160
    invoke-interface {v4}, Lorg/b/c;->onComplete()V

    :cond_4
    return-void

    .line 165
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cv$c;->get()J

    move-result-wide v2

    cmp-long v9, p1, v2

    if-nez v9, :cond_1

    .line 167
    iput-wide v7, p0, Lio/reactivex/internal/operators/flowable/cv$c;->b:J

    neg-long p1, p1

    .line 168
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/cv$c;->addAndGet(J)J

    move-result-wide v2

    cmp-long p1, v2, v5

    if-nez p1, :cond_0

    return-void
.end method
