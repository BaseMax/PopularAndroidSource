.class public Lc/e/a/a/j/b/i;
.super Lc/e/a/a/j/b/a;
.source "ContainerMediaChunk.java"


# static fields
.field public static final n:Lc/e/a/a/e/n;


# instance fields
.field public final o:I

.field public final p:J

.field public final q:Lc/e/a/a/j/b/e;

.field public r:J

.field public volatile s:Z

.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/a/e/n;

    invoke-direct {v0}, Lc/e/a/a/e/n;-><init>()V

    sput-object v0, Lc/e/a/a/j/b/i;->n:Lc/e/a/a/e/n;

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJIJLc/e/a/a/j/b/e;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct/range {p0 .. p15}, Lc/e/a/a/j/b/a;-><init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p16

    .line 2
    iput v1, v0, Lc/e/a/a/j/b/i;->o:I

    move-wide/from16 v1, p17

    .line 3
    iput-wide v1, v0, Lc/e/a/a/j/b/i;->p:J

    move-object/from16 v1, p19

    .line 4
    iput-object v1, v0, Lc/e/a/a/j/b/i;->q:Lc/e/a/a/j/b/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    iget-wide v1, p0, Lc/e/a/a/j/b/i;->r:J

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
    iget-wide v0, p0, Lc/e/a/a/j/b/i;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/j/b/a;->i()Lc/e/a/a/j/b/c;

    move-result-object v9

    .line 6
    iget-wide v0, p0, Lc/e/a/a/j/b/i;->p:J

    invoke-virtual {v9, v0, v1}, Lc/e/a/a/j/b/c;->a(J)V

    .line 7
    iget-object v8, p0, Lc/e/a/a/j/b/i;->q:Lc/e/a/a/j/b/e;

    .line 8
    invoke-virtual {p0, v9}, Lc/e/a/a/j/b/i;->b(Lc/e/a/a/j/b/c;)Lc/e/a/a/j/b/e$b;

    iget-wide v0, p0, Lc/e/a/a/j/b/a;->j:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    move-wide v10, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lc/e/a/a/j/b/a;->j:J

    iget-wide v4, p0, Lc/e/a/a/j/b/i;->p:J

    sub-long/2addr v0, v4

    move-wide v10, v0

    :goto_0
    iget-wide v0, p0, Lc/e/a/a/j/b/a;->k:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v12, v2

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lc/e/a/a/j/b/a;->k:J

    iget-wide v2, p0, Lc/e/a/a/j/b/i;->p:J

    sub-long/2addr v0, v2

    move-wide v12, v0

    .line 9
    :goto_1
    invoke-virtual/range {v8 .. v13}, Lc/e/a/a/j/b/e;->a(Lc/e/a/a/j/b/e$b;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :cond_2
    :try_start_1
    iget-object v0, p0, Lc/e/a/a/j/b/i;->q:Lc/e/a/a/j/b/e;

    iget-object v0, v0, Lc/e/a/a/j/b/e;->a:Lc/e/a/a/e/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    .line 11
    iget-boolean v3, p0, Lc/e/a/a/j/b/i;->s:Z

    if-nez v3, :cond_3

    .line 12
    sget-object v2, Lc/e/a/a/j/b/i;->n:Lc/e/a/a/e/n;

    invoke-interface {v0, v7, v2}, Lc/e/a/a/e/g;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    if-eq v2, v0, :cond_4

    const/4 v1, 0x1

    .line 13
    :cond_4
    invoke-static {v1}, Lc/e/a/a/o/e;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-interface {v7}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    iget-wide v3, v3, Lc/e/a/a/n/l;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lc/e/a/a/j/b/i;->r:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    iget-object v1, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    invoke-static {v1}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    .line 16
    iput-boolean v0, p0, Lc/e/a/a/j/b/i;->t:Z

    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_3
    invoke-interface {v7}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    iget-wide v3, v3, Lc/e/a/a/n/l;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lc/e/a/a/j/b/i;->r:J

    .line 18
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 19
    iget-object v1, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    invoke-static {v1}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    .line 20
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public b(Lc/e/a/a/j/b/c;)Lc/e/a/a/j/b/e$b;
    .locals 0

    return-object p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/j/b/i;->s:Z

    return-void
.end method

.method public g()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/b/l;->i:J

    iget v2, p0, Lc/e/a/a/j/b/i;->o:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/b/i;->t:Z

    return v0
.end method
