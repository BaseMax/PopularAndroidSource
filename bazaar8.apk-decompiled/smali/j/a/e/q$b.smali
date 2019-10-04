.class public final Lj/a/e/q$b;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field public final a:Lk/g;

.field public final b:Lk/g;

.field public final c:J

.field public d:Z

.field public e:Z

.field public final synthetic f:Lj/a/e/q;


# direct methods
.method public constructor <init>(Lj/a/e/q;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lk/g;

    invoke-direct {p1}, Lk/g;-><init>()V

    iput-object p1, p0, Lj/a/e/q$b;->a:Lk/g;

    .line 3
    new-instance p1, Lk/g;

    invoke-direct {p1}, Lk/g;-><init>()V

    iput-object p1, p0, Lj/a/e/q$b;->b:Lk/g;

    .line 4
    iput-wide p2, p0, Lj/a/e/q$b;->c:J

    return-void
.end method


# virtual methods
.method public a(Lk/i;J)V
    .locals 11

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    .line 1
    iget-object v2, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-boolean v3, p0, Lj/a/e/q$b;->e:Z

    .line 3
    iget-object v4, p0, Lj/a/e/q$b;->b:Lk/g;

    invoke-virtual {v4}, Lk/g;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lj/a/e/q$b;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 4
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {p1, p2, p3}, Lk/i;->skip(J)V

    .line 6
    iget-object p1, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2}, Lj/a/e/q;->c(Lokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    .line 7
    invoke-interface {p1, p2, p3}, Lk/i;->skip(J)V

    return-void

    .line 8
    :cond_2
    iget-object v2, p0, Lj/a/e/q$b;->a:Lk/g;

    invoke-interface {p1, v2, p2, p3}, Lk/z;->b(Lk/g;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    sub-long/2addr p2, v2

    .line 9
    iget-object v2, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    monitor-enter v2

    .line 10
    :try_start_1
    iget-object v3, p0, Lj/a/e/q$b;->b:Lk/g;

    invoke-virtual {v3}, Lk/g;->size()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 11
    :goto_2
    iget-object v0, p0, Lj/a/e/q$b;->b:Lk/g;

    iget-object v1, p0, Lj/a/e/q$b;->a:Lk/g;

    invoke-virtual {v0, v1}, Lk/g;->a(Lk/z;)J

    if-eqz v8, :cond_4

    .line 12
    iget-object v0, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 15
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    return-void
.end method

.method public b(Lk/g;J)J
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9

    .line 1
    :goto_0
    iget-object v6, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    monitor-enter v6

    .line 2
    :try_start_0
    iget-object v0, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-object v0, v0, Lj/a/e/q;->j:Lj/a/e/q$c;

    invoke-virtual {v0}, Lk/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v0, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-object v0, v0, Lj/a/e/q;->l:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-object v0, v0, Lj/a/e/q;->l:Lokhttp3/internal/http2/ErrorCode;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-boolean v8, v1, Lj/a/e/q$b;->d:Z

    if-nez v8, :cond_8

    .line 6
    iget-object v8, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-static {v8}, Lj/a/e/q;->a(Lj/a/e/q;)Ljava/util/Deque;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Deque;->isEmpty()Z

    move-result v8

    const-wide/16 v9, -0x1

    if-nez v8, :cond_1

    iget-object v8, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-static {v8}, Lj/a/e/q;->b(Lj/a/e/q;)Lj/a/e/a$a;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 7
    iget-object v7, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-static {v7}, Lj/a/e/q;->a(Lj/a/e/q;)Ljava/util/Deque;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj/C;

    .line 8
    iget-object v8, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-static {v8}, Lj/a/e/q;->b(Lj/a/e/q;)Lj/a/e/a$a;

    move-result-object v8

    move-object/from16 v13, p1

    move-wide v11, v9

    goto :goto_3

    .line 9
    :cond_1
    iget-object v8, v1, Lj/a/e/q$b;->b:Lk/g;

    invoke-virtual {v8}, Lk/g;->size()J

    move-result-wide v11

    cmp-long v8, v11, v4

    if-lez v8, :cond_2

    .line 10
    iget-object v8, v1, Lj/a/e/q$b;->b:Lk/g;

    iget-object v11, v1, Lj/a/e/q$b;->b:Lk/g;

    invoke-virtual {v11}, Lk/g;->size()J

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object/from16 v13, p1

    invoke-virtual {v8, v13, v11, v12}, Lk/g;->b(Lk/g;J)J

    move-result-wide v11

    .line 11
    iget-object v8, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-wide v14, v8, Lj/a/e/q;->a:J

    add-long/2addr v14, v11

    iput-wide v14, v8, Lj/a/e/q;->a:J

    if-nez v0, :cond_4

    .line 12
    iget-object v8, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-wide v14, v8, Lj/a/e/q;->a:J

    iget-object v8, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-object v8, v8, Lj/a/e/q;->d:Lj/a/e/k;

    iget-object v8, v8, Lj/a/e/k;->o:Lj/a/e/v;

    .line 13
    invoke-virtual {v8}, Lj/a/e/v;->c()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v7, v8

    cmp-long v16, v14, v7

    if-ltz v16, :cond_4

    .line 14
    iget-object v7, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-object v7, v7, Lj/a/e/q;->d:Lj/a/e/k;

    iget-object v8, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget v8, v8, Lj/a/e/q;->c:I

    iget-object v14, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-wide v14, v14, Lj/a/e/q;->a:J

    invoke-virtual {v7, v8, v14, v15}, Lj/a/e/k;->b(IJ)V

    .line 15
    iget-object v7, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iput-wide v4, v7, Lj/a/e/q;->a:J

    goto :goto_2

    :cond_2
    move-object/from16 v13, p1

    .line 16
    iget-boolean v7, v1, Lj/a/e/q$b;->e:Z

    if-nez v7, :cond_3

    if-nez v0, :cond_3

    .line 17
    iget-object v0, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-virtual {v0}, Lj/a/e/q;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    iget-object v0, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-object v0, v0, Lj/a/e/q;->j:Lj/a/e/q$c;

    invoke-virtual {v0}, Lj/a/e/q$c;->k()V

    monitor-exit v6

    goto/16 :goto_0

    :cond_3
    move-wide v11, v9

    :cond_4
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    iget-object v14, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-object v14, v14, Lj/a/e/q;->j:Lj/a/e/q$c;

    invoke-virtual {v14}, Lj/a/e/q$c;->k()V

    .line 19
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    .line 20
    invoke-interface {v8, v7}, Lj/a/e/a$a;->a(Lj/C;)V

    goto/16 :goto_0

    :cond_5
    cmp-long v2, v11, v9

    if-eqz v2, :cond_6

    .line 21
    invoke-virtual {v1, v11, v12}, Lj/a/e/q$b;->c(J)V

    return-wide v11

    :cond_6
    if-nez v0, :cond_7

    return-wide v9

    .line 22
    :cond_7
    new-instance v2, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {v2, v0}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v2

    .line 23
    :cond_8
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 24
    :try_start_4
    iget-object v2, v1, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-object v2, v2, Lj/a/e/q;->j:Lj/a/e/q$c;

    invoke-virtual {v2}, Lj/a/e/q$c;->k()V

    throw v0

    :catchall_1
    move-exception v0

    .line 25
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 26
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public b()Lk/B;
    .locals 1

    .line 27
    iget-object v0, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-object v0, v0, Lj/a/e/q;->j:Lj/a/e/q$c;

    return-object v0
.end method

.method public final c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    iget-object v0, v0, Lj/a/e/q;->d:Lj/a/e/k;

    invoke-virtual {v0, p1, p2}, Lj/a/e/k;->h(J)V

    return-void
.end method

.method public close()V
    .locals 7

    .line 1
    iget-object v0, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lj/a/e/q$b;->d:Z

    .line 3
    iget-object v1, p0, Lj/a/e/q$b;->b:Lk/g;

    invoke-virtual {v1}, Lk/g;->size()J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lj/a/e/q$b;->b:Lk/g;

    invoke-virtual {v3}, Lk/g;->p()V

    .line 5
    iget-object v3, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-static {v3}, Lj/a/e/q;->a(Lj/a/e/q;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-object v3, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-static {v3}, Lj/a/e/q;->b(Lj/a/e/q;)Lj/a/e/a$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-static {v3}, Lj/a/e/q;->a(Lj/a/e/q;)Ljava/util/Deque;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-object v3, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-static {v3}, Lj/a/e/q;->a(Lj/a/e/q;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 8
    iget-object v3, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-static {v3}, Lj/a/e/q;->b(Lj/a/e/q;)Lj/a/e/a$a;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 9
    :goto_0
    iget-object v5, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_1

    .line 11
    invoke-virtual {p0, v1, v2}, Lj/a/e/q$b;->c(J)V

    .line 12
    :cond_1
    iget-object v0, p0, Lj/a/e/q$b;->f:Lj/a/e/q;

    invoke-virtual {v0}, Lj/a/e/q;->a()V

    if-eqz v3, :cond_2

    .line 13
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/C;

    .line 14
    invoke-interface {v3, v1}, Lj/a/e/a$a;->a(Lj/C;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
