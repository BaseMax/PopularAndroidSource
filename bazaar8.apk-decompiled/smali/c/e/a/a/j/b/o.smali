.class public final Lc/e/a/a/j/b/o;
.super Lc/e/a/a/j/b/a;
.source "SingleSampleMediaChunk.java"


# instance fields
.field public final n:I

.field public final o:Lcom/google/android/exoplayer2/Format;

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJILcom/google/android/exoplayer2/Format;)V
    .locals 16

    move-object/from16 v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    .line 1
    invoke-direct/range {v0 .. v15}, Lc/e/a/a/j/b/a;-><init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p12

    .line 2
    iput v1, v0, Lc/e/a/a/j/b/o;->n:I

    move-object/from16 v1, p13

    .line 3
    iput-object v1, v0, Lc/e/a/a/j/b/o;->o:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    iget-wide v1, p0, Lc/e/a/a/j/b/o;->p:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/n/l;->a(J)Lc/e/a/a/n/l;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    invoke-virtual {v1, v0}, Lc/e/a/a/n/z;->a(Lc/e/a/a/n/l;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iget-wide v2, p0, Lc/e/a/a/j/b/o;->p:J

    add-long/2addr v0, v2

    :cond_0
    move-wide v5, v0

    .line 4
    new-instance v0, Lc/e/a/a/e/d;

    iget-object v2, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    iget-wide v3, p0, Lc/e/a/a/j/b/o;->p:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lc/e/a/a/e/d;-><init>(Lc/e/a/a/n/j;JJ)V

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/j/b/a;->i()Lc/e/a/a/j/b/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 6
    invoke-virtual {v1, v2, v3}, Lc/e/a/a/j/b/c;->a(J)V

    .line 7
    iget v2, p0, Lc/e/a/a/j/b/o;->n:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lc/e/a/a/j/b/c;->a(II)Lc/e/a/a/e/q;

    move-result-object v4

    .line 8
    iget-object v1, p0, Lc/e/a/a/j/b/o;->o:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v4, v1}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v3, v1, :cond_1

    .line 9
    iget-wide v5, p0, Lc/e/a/a/j/b/o;->p:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lc/e/a/a/j/b/o;->p:J

    const v1, 0x7fffffff

    .line 10
    invoke-interface {v4, v0, v1, v2}, Lc/e/a/a/e/q;->a(Lc/e/a/a/e/h;IZ)I

    move-result v3

    goto :goto_0

    .line 11
    :cond_1
    iget-wide v0, p0, Lc/e/a/a/j/b/o;->p:J

    long-to-int v8, v0

    .line 12
    iget-wide v5, p0, Lc/e/a/a/j/b/d;->f:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    invoke-static {v0}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    .line 14
    iput-boolean v2, p0, Lc/e/a/a/j/b/o;->q:Z

    return-void

    :catchall_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    invoke-static {v1}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    .line 16
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/b/o;->q:Z

    return v0
.end method
