.class public final Lc/e/a/a/j/b/k;
.super Lc/e/a/a/j/b/d;
.source "InitializationChunk.java"


# static fields
.field public static final i:Lc/e/a/a/e/n;


# instance fields
.field public final j:Lc/e/a/a/j/b/e;

.field public k:J

.field public volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/a/e/n;

    invoke-direct {v0}, Lc/e/a/a/e/n;-><init>()V

    sput-object v0, Lc/e/a/a/j/b/k;->i:Lc/e/a/a/e/n;

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lc/e/a/a/j/b/e;)V
    .locals 11

    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 1
    invoke-direct/range {v0 .. v10}, Lc/e/a/a/j/b/d;-><init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    .line 2
    iput-object v1, v0, Lc/e/a/a/j/b/k;->j:Lc/e/a/a/j/b/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    iget-wide v1, p0, Lc/e/a/a/j/b/k;->k:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/n/l;->a(J)Lc/e/a/a/n/l;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v7, Lc/e/a/a/e/d;

    iget-object v2, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    iget-wide v3, v0, Lc/e/a/a/n/l;->e:J

    iget-object v1, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    .line 3
    invoke-virtual {v1, v0}, Lc/e/a/a/n/z;->a(Lc/e/a/a/n/l;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lc/e/a/a/e/d;-><init>(Lc/e/a/a/n/j;JJ)V

    .line 4
    iget-wide v0, p0, Lc/e/a/a/j/b/k;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 5
    iget-object v8, p0, Lc/e/a/a/j/b/k;->j:Lc/e/a/a/j/b/e;

    const/4 v9, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v8 .. v13}, Lc/e/a/a/j/b/e;->a(Lc/e/a/a/j/b/e$b;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc/e/a/a/j/b/k;->j:Lc/e/a/a/j/b/e;

    iget-object v0, v0, Lc/e/a/a/j/b/e;->a:Lc/e/a/a/e/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 7
    iget-boolean v3, p0, Lc/e/a/a/j/b/k;->l:Z

    if-nez v3, :cond_1

    .line 8
    sget-object v2, Lc/e/a/a/j/b/k;->i:Lc/e/a/a/e/n;

    invoke-interface {v0, v7, v2}, Lc/e/a/a/e/g;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 9
    :goto_1
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-interface {v7}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    iget-wide v2, v2, Lc/e/a/a/n/l;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lc/e/a/a/j/b/k;->k:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    iget-object v0, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    invoke-static {v0}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_3
    invoke-interface {v7}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    iget-wide v3, v3, Lc/e/a/a/n/l;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lc/e/a/a/j/b/k;->k:J

    .line 13
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 14
    iget-object v1, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    invoke-static {v1}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    .line 15
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/j/b/k;->l:Z

    return-void
.end method
