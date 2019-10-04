.class public final Lc/e/a/a/j/y$a;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;
.implements Lc/e/a/a/j/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lc/e/a/a/n/z;

.field public final c:Lc/e/a/a/j/y$b;

.field public final d:Lc/e/a/a/e/i;

.field public final e:Lc/e/a/a/o/i;

.field public final f:Lc/e/a/a/e/n;

.field public volatile g:Z

.field public h:Z

.field public i:J

.field public j:Lc/e/a/a/n/l;

.field public k:J

.field public l:Lc/e/a/a/e/q;

.field public m:Z

.field public final synthetic n:Lc/e/a/a/j/y;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/y;Landroid/net/Uri;Lc/e/a/a/n/j;Lc/e/a/a/j/y$b;Lc/e/a/a/e/i;Lc/e/a/a/o/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/e/a/a/j/y$a;->a:Landroid/net/Uri;

    .line 3
    new-instance p1, Lc/e/a/a/n/z;

    invoke-direct {p1, p3}, Lc/e/a/a/n/z;-><init>(Lc/e/a/a/n/j;)V

    iput-object p1, p0, Lc/e/a/a/j/y$a;->b:Lc/e/a/a/n/z;

    .line 4
    iput-object p4, p0, Lc/e/a/a/j/y$a;->c:Lc/e/a/a/j/y$b;

    .line 5
    iput-object p5, p0, Lc/e/a/a/j/y$a;->d:Lc/e/a/a/e/i;

    .line 6
    iput-object p6, p0, Lc/e/a/a/j/y$a;->e:Lc/e/a/a/o/i;

    .line 7
    new-instance p1, Lc/e/a/a/e/n;

    invoke-direct {p1}, Lc/e/a/a/e/n;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/y$a;->f:Lc/e/a/a/e/n;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lc/e/a/a/j/y$a;->h:Z

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Lc/e/a/a/j/y$a;->k:J

    const-wide/16 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/j/y$a;->a(J)Lc/e/a/a/n/l;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/y$a;->j:Lc/e/a/a/n/l;

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/y$a;->j:Lc/e/a/a/n/l;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/a/j/y$a;JJ)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lc/e/a/a/j/y$a;->a(JJ)V

    return-void
.end method

.method public static synthetic b(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/y$a;->b:Lc/e/a/a/n/z;

    return-object p0
.end method

.method public static synthetic c(Lc/e/a/a/j/y$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/y$a;->i:J

    return-wide v0
.end method

.method public static synthetic d(Lc/e/a/a/j/y$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/y$a;->k:J

    return-wide v0
.end method


# virtual methods
.method public final a(J)Lc/e/a/a/n/l;
    .locals 9

    .line 40
    new-instance v8, Lc/e/a/a/n/l;

    iget-object v1, p0, Lc/e/a/a/j/y$a;->a:Landroid/net/Uri;

    iget-object v0, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    .line 41
    invoke-static {v0}, Lc/e/a/a/j/y;->c(Lc/e/a/a/j/y;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v4, -0x1

    const/16 v7, 0x16

    move-object v0, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lc/e/a/a/n/l;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-object v8
.end method

.method public a()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 3
    iget-boolean v2, p0, Lc/e/a/a/j/y$a;->g:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    :try_start_0
    iget-object v4, p0, Lc/e/a/a/j/y$a;->f:Lc/e/a/a/e/n;

    iget-wide v11, v4, Lc/e/a/a/e/n;->a:J

    .line 5
    invoke-virtual {p0, v11, v12}, Lc/e/a/a/j/y$a;->a(J)Lc/e/a/a/n/l;

    move-result-object v4

    iput-object v4, p0, Lc/e/a/a/j/y$a;->j:Lc/e/a/a/n/l;

    .line 6
    iget-object v4, p0, Lc/e/a/a/j/y$a;->b:Lc/e/a/a/n/z;

    iget-object v5, p0, Lc/e/a/a/j/y$a;->j:Lc/e/a/a/n/l;

    invoke-virtual {v4, v5}, Lc/e/a/a/n/z;->a(Lc/e/a/a/n/l;)J

    move-result-wide v4

    iput-wide v4, p0, Lc/e/a/a/j/y$a;->k:J

    .line 7
    iget-wide v4, p0, Lc/e/a/a/j/y$a;->k:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 8
    iget-wide v4, p0, Lc/e/a/a/j/y$a;->k:J

    add-long/2addr v4, v11

    iput-wide v4, p0, Lc/e/a/a/j/y$a;->k:J

    .line 9
    :cond_0
    iget-object v4, p0, Lc/e/a/a/j/y$a;->b:Lc/e/a/a/n/z;

    invoke-virtual {v4}, Lc/e/a/a/n/z;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    .line 10
    iget-object v5, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    iget-object v6, p0, Lc/e/a/a/j/y$a;->b:Lc/e/a/a/n/z;

    invoke-virtual {v6}, Lc/e/a/a/n/z;->a()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->a(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    invoke-static {v5, v6}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 11
    iget-object v5, p0, Lc/e/a/a/j/y$a;->b:Lc/e/a/a/n/z;

    .line 12
    iget-object v6, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    invoke-static {v6}, Lc/e/a/a/j/y;->d(Lc/e/a/a/j/y;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    invoke-static {v6}, Lc/e/a/a/j/y;->d(Lc/e/a/a/j/y;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    iget v6, v6, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->f:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 13
    new-instance v5, Lc/e/a/a/j/t;

    iget-object v6, p0, Lc/e/a/a/j/y$a;->b:Lc/e/a/a/n/z;

    iget-object v7, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    invoke-static {v7}, Lc/e/a/a/j/y;->d(Lc/e/a/a/j/y;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->f:I

    invoke-direct {v5, v6, v7, p0}, Lc/e/a/a/j/t;-><init>(Lc/e/a/a/n/j;ILc/e/a/a/j/t$a;)V

    .line 14
    iget-object v6, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    invoke-virtual {v6}, Lc/e/a/a/j/y;->l()Lc/e/a/a/e/q;

    move-result-object v6

    iput-object v6, p0, Lc/e/a/a/j/y$a;->l:Lc/e/a/a/e/q;

    .line 15
    iget-object v6, p0, Lc/e/a/a/j/y$a;->l:Lc/e/a/a/e/q;

    invoke-static {}, Lc/e/a/a/j/y;->c()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    invoke-interface {v6, v7}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    move-object v6, v5

    .line 16
    new-instance v13, Lc/e/a/a/e/d;

    iget-wide v9, p0, Lc/e/a/a/j/y$a;->k:J

    move-object v5, v13

    move-wide v7, v11

    invoke-direct/range {v5 .. v10}, Lc/e/a/a/e/d;-><init>(Lc/e/a/a/n/j;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v2, p0, Lc/e/a/a/j/y$a;->c:Lc/e/a/a/j/y$b;

    iget-object v5, p0, Lc/e/a/a/j/y$a;->d:Lc/e/a/a/e/i;

    invoke-virtual {v2, v13, v5, v4}, Lc/e/a/a/j/y$b;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/i;Landroid/net/Uri;)Lc/e/a/a/e/g;

    move-result-object v2

    .line 18
    iget-boolean v4, p0, Lc/e/a/a/j/y$a;->h:Z

    if-eqz v4, :cond_2

    .line 19
    iget-wide v4, p0, Lc/e/a/a/j/y$a;->i:J

    invoke-interface {v2, v11, v12, v4, v5}, Lc/e/a/a/e/g;->a(JJ)V

    .line 20
    iput-boolean v0, p0, Lc/e/a/a/j/y$a;->h:Z

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 21
    iget-boolean v4, p0, Lc/e/a/a/j/y$a;->g:Z

    if-nez v4, :cond_3

    .line 22
    iget-object v4, p0, Lc/e/a/a/j/y$a;->e:Lc/e/a/a/o/i;

    invoke-virtual {v4}, Lc/e/a/a/o/i;->a()V

    .line 23
    iget-object v4, p0, Lc/e/a/a/j/y$a;->f:Lc/e/a/a/e/n;

    invoke-interface {v2, v13, v4}, Lc/e/a/a/e/g;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I

    move-result v1

    .line 24
    invoke-interface {v13}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    invoke-static {v6}, Lc/e/a/a/j/y;->e(Lc/e/a/a/j/y;)J

    move-result-wide v6

    add-long/2addr v6, v11

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 25
    invoke-interface {v13}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v11

    .line 26
    iget-object v4, p0, Lc/e/a/a/j/y$a;->e:Lc/e/a/a/o/i;

    invoke-virtual {v4}, Lc/e/a/a/o/i;->b()Z

    .line 27
    iget-object v4, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    invoke-static {v4}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    invoke-static {v5}, Lc/e/a/a/j/y;->f(Lc/e/a/a/j/y;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    .line 28
    :cond_4
    iget-object v2, p0, Lc/e/a/a/j/y$a;->f:Lc/e/a/a/e/n;

    invoke-interface {v13}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lc/e/a/a/e/n;->a:J

    .line 29
    :goto_2
    iget-object v2, p0, Lc/e/a/a/j/y$a;->b:Lc/e/a/a/n/z;

    invoke-static {v2}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v13

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eq v1, v3, :cond_5

    if-eqz v2, :cond_5

    .line 30
    iget-object v1, p0, Lc/e/a/a/j/y$a;->f:Lc/e/a/a/e/n;

    invoke-interface {v2}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v2

    iput-wide v2, v1, Lc/e/a/a/e/n;->a:J

    .line 31
    :cond_5
    iget-object v1, p0, Lc/e/a/a/j/y$a;->b:Lc/e/a/a/n/z;

    invoke-static {v1}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    .line 32
    throw v0

    :cond_6
    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .line 42
    iget-object v0, p0, Lc/e/a/a/j/y$a;->f:Lc/e/a/a/e/n;

    iput-wide p1, v0, Lc/e/a/a/e/n;->a:J

    .line 43
    iput-wide p3, p0, Lc/e/a/a/j/y$a;->i:J

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lc/e/a/a/j/y$a;->h:Z

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lc/e/a/a/j/y$a;->m:Z

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 9

    .line 33
    iget-boolean v0, p0, Lc/e/a/a/j/y$a;->m:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lc/e/a/a/j/y$a;->i:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/y$a;->n:Lc/e/a/a/j/y;

    .line 34
    invoke-static {v0}, Lc/e/a/a/j/y;->b(Lc/e/a/a/j/y;)J

    move-result-wide v0

    iget-wide v2, p0, Lc/e/a/a/j/y$a;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 35
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v6

    .line 36
    iget-object v0, p0, Lc/e/a/a/j/y$a;->l:Lc/e/a/a/e/q;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lc/e/a/a/e/q;

    .line 37
    invoke-interface {v2, p1, v6}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 38
    invoke-interface/range {v2 .. v8}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lc/e/a/a/j/y$a;->m:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/e/a/a/j/y$a;->g:Z

    return-void
.end method
