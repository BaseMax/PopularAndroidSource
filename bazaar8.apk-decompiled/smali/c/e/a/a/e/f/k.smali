.class public abstract Lc/e/a/a/e/f/k;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/e/f/k$b;,
        Lc/e/a/a/e/f/k$a;
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/e/f/f;

.field public b:Lc/e/a/a/e/q;

.field public c:Lc/e/a/a/e/i;

.field public d:Lc/e/a/a/e/f/h;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:Lc/e/a/a/e/f/k$a;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/a/e/f/f;

    invoke-direct {v0}, Lc/e/a/a/e/f/f;-><init>()V

    iput-object v0, p0, Lc/e/a/a/e/f/k;->a:Lc/e/a/a/e/f/f;

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/a/e/h;)I
    .locals 17

    move-object/from16 v11, p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 21
    iget-object v1, v11, Lc/e/a/a/e/f/k;->a:Lc/e/a/a/e/f/f;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lc/e/a/a/e/f/f;->a(Lc/e/a/a/e/h;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    .line 22
    iput v0, v11, Lc/e/a/a/e/f/k;->h:I

    const/4 v0, -0x1

    return v0

    .line 23
    :cond_1
    invoke-interface/range {p1 .. p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v3

    iget-wide v5, v11, Lc/e/a/a/e/f/k;->f:J

    sub-long/2addr v3, v5

    iput-wide v3, v11, Lc/e/a/a/e/f/k;->k:J

    .line 24
    iget-object v1, v11, Lc/e/a/a/e/f/k;->a:Lc/e/a/a/e/f/f;

    invoke-virtual {v1}, Lc/e/a/a/e/f/f;->b()Lc/e/a/a/o/v;

    move-result-object v1

    iget-wide v3, v11, Lc/e/a/a/e/f/k;->f:J

    iget-object v5, v11, Lc/e/a/a/e/f/k;->j:Lc/e/a/a/e/f/k$a;

    invoke-virtual {v11, v1, v3, v4, v5}, Lc/e/a/a/e/f/k;->a(Lc/e/a/a/o/v;JLc/e/a/a/e/f/k$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-interface/range {p1 .. p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v3

    iput-wide v3, v11, Lc/e/a/a/e/f/k;->f:J

    goto :goto_0

    :cond_2
    move-object/from16 v2, p1

    .line 26
    iget-object v1, v11, Lc/e/a/a/e/f/k;->j:Lc/e/a/a/e/f/k$a;

    iget-object v1, v1, Lc/e/a/a/e/f/k$a;->a:Lcom/google/android/exoplayer2/Format;

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->w:I

    iput v3, v11, Lc/e/a/a/e/f/k;->i:I

    .line 27
    iget-boolean v3, v11, Lc/e/a/a/e/f/k;->m:Z

    if-nez v3, :cond_3

    .line 28
    iget-object v3, v11, Lc/e/a/a/e/f/k;->b:Lc/e/a/a/e/q;

    invoke-interface {v3, v1}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 29
    iput-boolean v0, v11, Lc/e/a/a/e/f/k;->m:Z

    .line 30
    :cond_3
    iget-object v1, v11, Lc/e/a/a/e/f/k;->j:Lc/e/a/a/e/f/k$a;

    iget-object v1, v1, Lc/e/a/a/e/f/k$a;->b:Lc/e/a/a/e/f/h;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    .line 31
    iput-object v1, v11, Lc/e/a/a/e/f/k;->d:Lc/e/a/a/e/f/h;

    goto :goto_2

    .line 32
    :cond_4
    invoke-interface/range {p1 .. p1}, Lc/e/a/a/e/h;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 33
    new-instance v0, Lc/e/a/a/e/f/k$b;

    invoke-direct {v0, v13}, Lc/e/a/a/e/f/k$b;-><init>(Lc/e/a/a/e/f/j;)V

    iput-object v0, v11, Lc/e/a/a/e/f/k;->d:Lc/e/a/a/e/f/h;

    goto :goto_2

    .line 34
    :cond_5
    iget-object v1, v11, Lc/e/a/a/e/f/k;->a:Lc/e/a/a/e/f/f;

    invoke-virtual {v1}, Lc/e/a/a/e/f/f;->a()Lc/e/a/a/e/f/g;

    move-result-object v1

    .line 35
    iget v3, v1, Lc/e/a/a/e/f/g;->c:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    .line 36
    :goto_1
    new-instance v14, Lc/e/a/a/e/f/c;

    iget-wide v3, v11, Lc/e/a/a/e/f/k;->f:J

    .line 37
    invoke-interface/range {p1 .. p1}, Lc/e/a/a/e/h;->getLength()J

    move-result-wide v5

    iget v0, v1, Lc/e/a/a/e/f/g;->i:I

    iget v2, v1, Lc/e/a/a/e/f/g;->j:I

    add-int/2addr v0, v2

    int-to-long v7, v0

    iget-wide v1, v1, Lc/e/a/a/e/f/g;->d:J

    move-object v0, v14

    move-wide v15, v1

    move-wide v1, v3

    move-wide v3, v5

    move-object/from16 v5, p0

    move-wide v6, v7

    move-wide v8, v15

    invoke-direct/range {v0 .. v10}, Lc/e/a/a/e/f/c;-><init>(JJLc/e/a/a/e/f/k;JJZ)V

    iput-object v14, v11, Lc/e/a/a/e/f/k;->d:Lc/e/a/a/e/f/h;

    .line 38
    :goto_2
    iput-object v13, v11, Lc/e/a/a/e/f/k;->j:Lc/e/a/a/e/f/k$a;

    const/4 v0, 0x2

    .line 39
    iput v0, v11, Lc/e/a/a/e/f/k;->h:I

    .line 40
    iget-object v0, v11, Lc/e/a/a/e/f/k;->a:Lc/e/a/a/e/f/f;

    invoke-virtual {v0}, Lc/e/a/a/e/f/f;->d()V

    return v12
.end method

.method public final a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I
    .locals 3

    .line 15
    iget v0, p0, Lc/e/a/a/e/f/k;->h:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 16
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/e/f/k;->b(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I

    move-result p1

    return p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 18
    :cond_1
    iget-wide v0, p0, Lc/e/a/a/e/f/k;->f:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lc/e/a/a/e/h;->c(I)V

    .line 19
    iput v2, p0, Lc/e/a/a/e/f/k;->h:I

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_2
    invoke-virtual {p0, p1}, Lc/e/a/a/e/f/k;->a(Lc/e/a/a/e/h;)I

    move-result p1

    return p1
.end method

.method public a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 41
    iget v0, p0, Lc/e/a/a/e/f/k;->i:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public abstract a(Lc/e/a/a/o/v;)J
.end method

.method public final a(JJ)V
    .locals 3

    .line 10
    iget-object v0, p0, Lc/e/a/a/e/f/k;->a:Lc/e/a/a/e/f/f;

    invoke-virtual {v0}, Lc/e/a/a/e/f/f;->c()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 11
    iget-boolean p1, p0, Lc/e/a/a/e/f/k;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lc/e/a/a/e/f/k;->a(Z)V

    goto :goto_0

    .line 12
    :cond_0
    iget p1, p0, Lc/e/a/a/e/f/k;->h:I

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lc/e/a/a/e/f/k;->d:Lc/e/a/a/e/f/h;

    invoke-interface {p1, p3, p4}, Lc/e/a/a/e/f/h;->c(J)J

    move-result-wide p1

    iput-wide p1, p0, Lc/e/a/a/e/f/k;->e:J

    const/4 p1, 0x2

    .line 14
    iput p1, p0, Lc/e/a/a/e/f/k;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lc/e/a/a/e/i;Lc/e/a/a/e/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/e/f/k;->c:Lc/e/a/a/e/i;

    .line 2
    iput-object p2, p0, Lc/e/a/a/e/f/k;->b:Lc/e/a/a/e/q;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lc/e/a/a/e/f/k;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lc/e/a/a/e/f/k$a;

    invoke-direct {p1}, Lc/e/a/a/e/f/k$a;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/f/k;->j:Lc/e/a/a/e/f/k$a;

    .line 5
    iput-wide v0, p0, Lc/e/a/a/e/f/k;->f:J

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lc/e/a/a/e/f/k;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lc/e/a/a/e/f/k;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 8
    iput-wide v2, p0, Lc/e/a/a/e/f/k;->e:J

    .line 9
    iput-wide v0, p0, Lc/e/a/a/e/f/k;->g:J

    return-void
.end method

.method public abstract a(Lc/e/a/a/o/v;JLc/e/a/a/e/f/k$a;)Z
.end method

.method public final b(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lc/e/a/a/e/f/k;->d:Lc/e/a/a/e/f/h;

    invoke-interface {v2, v1}, Lc/e/a/a/e/f/h;->a(Lc/e/a/a/e/h;)J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    move-object/from16 v7, p2

    .line 2
    iput-wide v2, v7, Lc/e/a/a/e/n;->a:J

    return v4

    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    const-wide/16 v9, 0x2

    add-long/2addr v2, v9

    neg-long v2, v2

    .line 3
    invoke-virtual {v0, v2, v3}, Lc/e/a/a/e/f/k;->c(J)V

    .line 4
    :cond_1
    iget-boolean v2, v0, Lc/e/a/a/e/f/k;->l:Z

    if-nez v2, :cond_2

    .line 5
    iget-object v2, v0, Lc/e/a/a/e/f/k;->d:Lc/e/a/a/e/f/h;

    invoke-interface {v2}, Lc/e/a/a/e/f/h;->a()Lc/e/a/a/e/o;

    move-result-object v2

    .line 6
    iget-object v3, v0, Lc/e/a/a/e/f/k;->c:Lc/e/a/a/e/i;

    invoke-interface {v3, v2}, Lc/e/a/a/e/i;->a(Lc/e/a/a/e/o;)V

    .line 7
    iput-boolean v4, v0, Lc/e/a/a/e/f/k;->l:Z

    .line 8
    :cond_2
    iget-wide v2, v0, Lc/e/a/a/e/f/k;->k:J

    cmp-long v4, v2, v5

    if-gtz v4, :cond_4

    iget-object v2, v0, Lc/e/a/a/e/f/k;->a:Lc/e/a/a/e/f/f;

    invoke-virtual {v2, v1}, Lc/e/a/a/e/f/f;->a(Lc/e/a/a/e/h;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    .line 9
    iput v1, v0, Lc/e/a/a/e/f/k;->h:I

    const/4 v1, -0x1

    return v1

    .line 10
    :cond_4
    :goto_0
    iput-wide v5, v0, Lc/e/a/a/e/f/k;->k:J

    .line 11
    iget-object v1, v0, Lc/e/a/a/e/f/k;->a:Lc/e/a/a/e/f/f;

    invoke-virtual {v1}, Lc/e/a/a/e/f/f;->b()Lc/e/a/a/o/v;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lc/e/a/a/e/f/k;->a(Lc/e/a/a/o/v;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_5

    .line 13
    iget-wide v4, v0, Lc/e/a/a/e/f/k;->g:J

    add-long v9, v4, v2

    iget-wide v11, v0, Lc/e/a/a/e/f/k;->e:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_5

    .line 14
    invoke-virtual {v0, v4, v5}, Lc/e/a/a/e/f/k;->a(J)J

    move-result-wide v10

    .line 15
    iget-object v4, v0, Lc/e/a/a/e/f/k;->b:Lc/e/a/a/e/q;

    invoke-virtual {v1}, Lc/e/a/a/o/v;->d()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 16
    iget-object v9, v0, Lc/e/a/a/e/f/k;->b:Lc/e/a/a/e/q;

    const/4 v12, 0x1

    invoke-virtual {v1}, Lc/e/a/a/o/v;->d()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    .line 17
    iput-wide v7, v0, Lc/e/a/a/e/f/k;->e:J

    .line 18
    :cond_5
    iget-wide v4, v0, Lc/e/a/a/e/f/k;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lc/e/a/a/e/f/k;->g:J

    const/4 v1, 0x0

    return v1
.end method

.method public b(J)J
    .locals 2

    .line 19
    iget v0, p0, Lc/e/a/a/e/f/k;->i:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc/e/a/a/e/f/k;->g:J

    return-void
.end method
