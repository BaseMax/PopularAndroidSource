.class public final Lc/e/a/a/e/h/u;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Lc/e/a/a/e/h/o;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lc/e/a/a/o/v;

.field public final c:Lc/e/a/a/o/u;

.field public d:Lc/e/a/a/e/q;

.field public e:Lcom/google/android/exoplayer2/Format;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/h/u;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Lc/e/a/a/o/v;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/e/h/u;->b:Lc/e/a/a/o/v;

    .line 4
    new-instance p1, Lc/e/a/a/o/u;

    iget-object v0, p0, Lc/e/a/a/e/h/u;->b:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    invoke-direct {p1, v0}, Lc/e/a/a/o/u;-><init>([B)V

    iput-object p1, p0, Lc/e/a/a/e/h/u;->c:Lc/e/a/a/o/u;

    return-void
.end method

.method public static a(Lc/e/a/a/o/u;)J
    .locals 2

    const/4 v0, 0x2

    .line 37
    invoke-virtual {p0, v0}, Lc/e/a/a/o/u;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 38
    invoke-virtual {p0, v0}, Lc/e/a/a/o/u;->a(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/a/a/e/h/u;->g:I

    .line 2
    iput-boolean v0, p0, Lc/e/a/a/e/h/u;->l:Z

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lc/e/a/a/e/h/u;->b:Lc/e/a/a/o/v;

    invoke-virtual {v0, p1}, Lc/e/a/a/o/v;->c(I)V

    .line 36
    iget-object p1, p0, Lc/e/a/a/e/h/u;->c:Lc/e/a/a/o/u;

    iget-object v0, p0, Lc/e/a/a/e/h/u;->b:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {p1, v0}, Lc/e/a/a/o/u;->a([B)V

    return-void
.end method

.method public a(JI)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lc/e/a/a/e/h/u;->k:J

    return-void
.end method

.method public a(Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V
    .locals 2

    .line 3
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->a()V

    .line 4
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/e/h/u;->d:Lc/e/a/a/e/q;

    .line 5
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/e/h/u;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Lc/e/a/a/o/u;I)V
    .locals 8

    .line 28
    invoke-virtual {p1}, Lc/e/a/a/o/u;->e()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 29
    iget-object p1, p0, Lc/e/a/a/e/h/u;->b:Lc/e/a/a/o/v;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lc/e/a/a/o/v;->e(I)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/h/u;->b:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    mul-int/lit8 v1, p2, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lc/e/a/a/o/u;->a([BII)V

    .line 31
    iget-object p1, p0, Lc/e/a/a/e/h/u;->b:Lc/e/a/a/o/v;

    invoke-virtual {p1, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 32
    :goto_0
    iget-object p1, p0, Lc/e/a/a/e/h/u;->d:Lc/e/a/a/e/q;

    iget-object v0, p0, Lc/e/a/a/e/h/u;->b:Lc/e/a/a/o/v;

    invoke-interface {p1, v0, p2}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 33
    iget-object v1, p0, Lc/e/a/a/e/h/u;->d:Lc/e/a/a/e/q;

    iget-wide v2, p0, Lc/e/a/a/e/h/u;->k:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    .line 34
    iget-wide p1, p0, Lc/e/a/a/e/h/u;->k:J

    iget-wide v0, p0, Lc/e/a/a/e/h/u;->s:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lc/e/a/a/e/h/u;->k:J

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 6

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-lez v0, :cond_7

    .line 8
    iget v0, p0, Lc/e/a/a/e/h/u;->g:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    iget v1, p0, Lc/e/a/a/e/h/u;->i:I

    iget v2, p0, Lc/e/a/a/e/h/u;->h:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 10
    iget-object v1, p0, Lc/e/a/a/e/h/u;->c:Lc/e/a/a/o/u;

    iget-object v1, v1, Lc/e/a/a/o/u;->a:[B

    iget v2, p0, Lc/e/a/a/e/h/u;->h:I

    invoke-virtual {p1, v1, v2, v0}, Lc/e/a/a/o/v;->a([BII)V

    .line 11
    iget v1, p0, Lc/e/a/a/e/h/u;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lc/e/a/a/e/h/u;->h:I

    .line 12
    iget v0, p0, Lc/e/a/a/e/h/u;->h:I

    iget v1, p0, Lc/e/a/a/e/h/u;->i:I

    if-ne v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Lc/e/a/a/e/h/u;->c:Lc/e/a/a/o/u;

    invoke-virtual {v0, v4}, Lc/e/a/a/o/u;->b(I)V

    .line 14
    iget-object v0, p0, Lc/e/a/a/e/h/u;->c:Lc/e/a/a/o/u;

    invoke-virtual {p0, v0}, Lc/e/a/a/e/h/u;->b(Lc/e/a/a/o/u;)V

    .line 15
    iput v4, p0, Lc/e/a/a/e/h/u;->g:I

    goto :goto_0

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 17
    :cond_2
    iget v0, p0, Lc/e/a/a/e/h/u;->j:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lc/e/a/a/e/h/u;->i:I

    .line 18
    iget v0, p0, Lc/e/a/a/e/h/u;->i:I

    iget-object v2, p0, Lc/e/a/a/e/h/u;->b:Lc/e/a/a/o/v;

    iget-object v2, v2, Lc/e/a/a/o/v;->a:[B

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 19
    invoke-virtual {p0, v0}, Lc/e/a/a/e/h/u;->a(I)V

    .line 20
    :cond_3
    iput v4, p0, Lc/e/a/a/e/h/u;->h:I

    .line 21
    iput v1, p0, Lc/e/a/a/e/h/u;->g:I

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_5

    .line 23
    iput v0, p0, Lc/e/a/a/e/h/u;->j:I

    .line 24
    iput v3, p0, Lc/e/a/a/e/h/u;->g:I

    goto :goto_0

    :cond_5
    if-eq v0, v1, :cond_0

    .line 25
    iput v4, p0, Lc/e/a/a/e/h/u;->g:I

    goto :goto_0

    .line 26
    :cond_6
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 27
    iput v2, p0, Lc/e/a/a/e/h/u;->g:I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final b(Lc/e/a/a/o/u;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lc/e/a/a/o/u;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/e/a/a/e/h/u;->l:Z

    .line 3
    invoke-virtual {p0, p1}, Lc/e/a/a/e/h/u;->f(Lc/e/a/a/o/u;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lc/e/a/a/e/h/u;->l:Z

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lc/e/a/a/e/h/u;->m:I

    if-nez v0, :cond_4

    .line 6
    iget v0, p0, Lc/e/a/a/e/h/u;->n:I

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lc/e/a/a/e/h/u;->e(Lc/e/a/a/o/u;)I

    move-result v0

    .line 8
    invoke-virtual {p0, p1, v0}, Lc/e/a/a/e/h/u;->a(Lc/e/a/a/o/u;I)V

    .line 9
    iget-boolean v0, p0, Lc/e/a/a/e/h/u;->p:Z

    if-eqz v0, :cond_2

    .line 10
    iget-wide v0, p0, Lc/e/a/a/e/h/u;->q:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lc/e/a/a/o/u;->c(I)V

    :cond_2
    return-void

    .line 11
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1
.end method

.method public final c(Lc/e/a/a/o/u;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lc/e/a/a/o/u;->b()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1}, Lc/e/a/a/o/g;->a(Lc/e/a/a/o/u;Z)Landroid/util/Pair;

    move-result-object v1

    .line 3
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lc/e/a/a/e/h/u;->r:I

    .line 4
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lc/e/a/a/e/h/u;->t:I

    .line 5
    invoke-virtual {p1}, Lc/e/a/a/o/u;->b()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d(Lc/e/a/a/o/u;)V
    .locals 4

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p1, v0}, Lc/e/a/a/o/u;->a(I)I

    move-result v1

    iput v1, p0, Lc/e/a/a/e/h/u;->o:I

    .line 2
    iget v1, p0, Lc/e/a/a/e/h/u;->o:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x6

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lc/e/a/a/o/u;->c(I)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1, v3}, Lc/e/a/a/o/u;->c(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x9

    .line 6
    invoke-virtual {p1, v0}, Lc/e/a/a/o/u;->c(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Lc/e/a/a/o/u;->c(I)V

    :goto_1
    return-void
.end method

.method public final e(Lc/e/a/a/o/u;)I
    .locals 3

    .line 1
    iget v0, p0, Lc/e/a/a/e/h/u;->o:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    .line 2
    invoke-virtual {p1, v1}, Lc/e/a/a/o/u;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0

    .line 3
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final f(Lc/e/a/a/o/u;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 1
    invoke-virtual {v1, v2}, Lc/e/a/a/o/u;->a(I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    .line 2
    invoke-virtual {v1, v2}, Lc/e/a/a/o/u;->a(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput v5, v0, Lc/e/a/a/e/h/u;->m:I

    .line 3
    iget v5, v0, Lc/e/a/a/e/h/u;->m:I

    if-nez v5, :cond_9

    if-ne v3, v2, :cond_1

    .line 4
    invoke-static/range {p1 .. p1}, Lc/e/a/a/e/h/u;->a(Lc/e/a/a/o/u;)J

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/u;->f()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x6

    .line 6
    invoke-virtual {v1, v5}, Lc/e/a/a/o/u;->a(I)I

    move-result v5

    iput v5, v0, Lc/e/a/a/e/h/u;->n:I

    const/4 v5, 0x4

    .line 7
    invoke-virtual {v1, v5}, Lc/e/a/a/o/u;->a(I)I

    move-result v5

    const/4 v6, 0x3

    .line 8
    invoke-virtual {v1, v6}, Lc/e/a/a/o/u;->a(I)I

    move-result v6

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    const/16 v5, 0x8

    if-nez v3, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/u;->e()I

    move-result v6

    .line 10
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/e/h/u;->c(Lc/e/a/a/o/u;)I

    move-result v7

    .line 11
    invoke-virtual {v1, v6}, Lc/e/a/a/o/u;->b(I)V

    add-int/lit8 v6, v7, 0x7

    .line 12
    div-int/2addr v6, v5

    new-array v6, v6, [B

    .line 13
    invoke-virtual {v1, v6, v4, v7}, Lc/e/a/a/o/u;->a([BII)V

    .line 14
    iget-object v8, v0, Lc/e/a/a/e/h/u;->f:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget v13, v0, Lc/e/a/a/e/h/u;->t:I

    iget v14, v0, Lc/e/a/a/e/h/u;->r:I

    .line 15
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v4, v0, Lc/e/a/a/e/h/u;->a:Ljava/lang/String;

    const-string v9, "audio/mp4a-latm"

    move-object/from16 v18, v4

    .line 16
    invoke-static/range {v8 .. v18}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 17
    iget-object v6, v0, Lc/e/a/a/e/h/u;->e:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 18
    iput-object v4, v0, Lc/e/a/a/e/h/u;->e:Lcom/google/android/exoplayer2/Format;

    const-wide/32 v6, 0x3d090000

    .line 19
    iget v8, v4, Lcom/google/android/exoplayer2/Format;->w:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    iput-wide v6, v0, Lc/e/a/a/e/h/u;->s:J

    .line 20
    iget-object v6, v0, Lc/e/a/a/e/h/u;->d:Lc/e/a/a/e/q;

    invoke-interface {v6, v4}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_1

    .line 21
    :cond_2
    invoke-static/range {p1 .. p1}, Lc/e/a/a/e/h/u;->a(Lc/e/a/a/o/u;)J

    move-result-wide v6

    long-to-int v4, v6

    .line 22
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/e/h/u;->c(Lc/e/a/a/o/u;)I

    move-result v6

    sub-int/2addr v4, v6

    .line 23
    invoke-virtual {v1, v4}, Lc/e/a/a/o/u;->c(I)V

    .line 24
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/e/h/u;->d(Lc/e/a/a/o/u;)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/u;->f()Z

    move-result v4

    iput-boolean v4, v0, Lc/e/a/a/e/h/u;->p:Z

    const-wide/16 v6, 0x0

    .line 26
    iput-wide v6, v0, Lc/e/a/a/e/h/u;->q:J

    .line 27
    iget-boolean v4, v0, Lc/e/a/a/e/h/u;->p:Z

    if-eqz v4, :cond_5

    if-ne v3, v2, :cond_4

    .line 28
    invoke-static/range {p1 .. p1}, Lc/e/a/a/e/h/u;->a(Lc/e/a/a/o/u;)J

    move-result-wide v2

    iput-wide v2, v0, Lc/e/a/a/e/h/u;->q:J

    goto :goto_2

    .line 29
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/u;->f()Z

    move-result v2

    .line 30
    iget-wide v3, v0, Lc/e/a/a/e/h/u;->q:J

    shl-long/2addr v3, v5

    invoke-virtual {v1, v5}, Lc/e/a/a/o/u;->a(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Lc/e/a/a/e/h/u;->q:J

    if-nez v2, :cond_4

    .line 31
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/u;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 32
    invoke-virtual {v1, v5}, Lc/e/a/a/o/u;->c(I)V

    :cond_6
    return-void

    .line 33
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1

    .line 34
    :cond_8
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1

    .line 35
    :cond_9
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
