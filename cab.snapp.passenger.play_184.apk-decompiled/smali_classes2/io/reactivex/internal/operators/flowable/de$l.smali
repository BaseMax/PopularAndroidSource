.class final Lio/reactivex/internal/operators/flowable/de$l;
.super Lio/reactivex/internal/operators/flowable/de$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/de$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final d:Lio/reactivex/ah;

.field final e:J

.field final f:Ljava/util/concurrent/TimeUnit;

.field final g:I


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0

    .line 991
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/de$a;-><init>()V

    .line 992
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/de$l;->d:Lio/reactivex/ah;

    .line 993
    iput p1, p0, Lio/reactivex/internal/operators/flowable/de$l;->g:I

    .line 994
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/de$l;->e:J

    .line 995
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/de$l;->f:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1000
    new-instance v0, Lio/reactivex/i/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/de$l;->d:Lio/reactivex/ah;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/de$l;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/de$l;->f:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/i/b;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method final a()V
    .locals 9

    .line 1010
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$l;->d:Lio/reactivex/ah;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/de$l;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/de$l;->e:J

    sub-long/2addr v0, v2

    .line 1012
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$l;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/de$f;

    .line 1013
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/de$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/de$f;

    const/4 v4, 0x0

    :goto_0
    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    if-eqz v2, :cond_1

    .line 1018
    iget v5, p0, Lio/reactivex/internal/operators/flowable/de$l;->b:I

    iget v6, p0, Lio/reactivex/internal/operators/flowable/de$l;->g:I

    if-le v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1020
    iget v3, p0, Lio/reactivex/internal/operators/flowable/de$l;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/reactivex/internal/operators/flowable/de$l;->b:I

    .line 1022
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/de$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/de$f;

    goto :goto_0

    .line 1024
    :cond_0
    iget-object v5, v2, Lio/reactivex/internal/operators/flowable/de$f;->a:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/i/b;

    .line 1025
    invoke-virtual {v5}, Lio/reactivex/i/b;->time()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-gtz v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1027
    iget v3, p0, Lio/reactivex/internal/operators/flowable/de$l;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/reactivex/internal/operators/flowable/de$l;->b:I

    .line 1029
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/de$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/de$f;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 1782
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/de$a;->set(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1005
    check-cast p1, Lio/reactivex/i/b;

    invoke-virtual {p1}, Lio/reactivex/i/b;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final b()V
    .locals 10

    .line 1045
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$l;->d:Lio/reactivex/ah;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/de$l;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/de$l;->e:J

    sub-long/2addr v0, v2

    .line 1047
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$l;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/de$f;

    .line 1048
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/de$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/de$f;

    const/4 v4, 0x0

    :goto_0
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    if-eqz v2, :cond_0

    .line 1052
    iget v5, p0, Lio/reactivex/internal/operators/flowable/de$l;->b:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 1053
    iget-object v5, v2, Lio/reactivex/internal/operators/flowable/de$f;->a:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/i/b;

    .line 1054
    invoke-virtual {v5}, Lio/reactivex/i/b;->time()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1056
    iget v3, p0, Lio/reactivex/internal/operators/flowable/de$l;->b:I

    sub-int/2addr v3, v6

    iput v3, p0, Lio/reactivex/internal/operators/flowable/de$l;->b:I

    .line 1058
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/de$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/de$f;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 2782
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/de$a;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final c()Lio/reactivex/internal/operators/flowable/de$f;
    .locals 8

    .line 1073
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$l;->d:Lio/reactivex/ah;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/de$l;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/de$l;->e:J

    sub-long/2addr v0, v2

    .line 1074
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$l;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/de$f;

    .line 1075
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/de$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/de$f;

    :goto_0
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    if-eqz v2, :cond_0

    .line 1080
    iget-object v4, v2, Lio/reactivex/internal/operators/flowable/de$f;->a:Ljava/lang/Object;

    check-cast v4, Lio/reactivex/i/b;

    .line 1081
    invoke-virtual {v4}, Lio/reactivex/i/b;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lio/reactivex/i/b;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1084
    invoke-virtual {v4}, Lio/reactivex/i/b;->time()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    .line 1086
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/de$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/de$f;

    goto :goto_0

    :cond_0
    return-object v3
.end method
