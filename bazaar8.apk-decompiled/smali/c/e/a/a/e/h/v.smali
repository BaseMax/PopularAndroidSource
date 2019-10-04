.class public final Lc/e/a/a/e/h/v;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lc/e/a/a/e/h/o;


# instance fields
.field public final a:Lc/e/a/a/o/v;

.field public final b:Lc/e/a/a/e/m;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lc/e/a/a/e/q;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/e/h/v;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/e/a/a/e/h/v;->f:I

    .line 4
    new-instance v1, Lc/e/a/a/o/v;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object v1, p0, Lc/e/a/a/e/h/v;->a:Lc/e/a/a/o/v;

    .line 5
    iget-object v1, p0, Lc/e/a/a/e/h/v;->a:Lc/e/a/a/o/v;

    iget-object v1, v1, Lc/e/a/a/o/v;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 6
    new-instance v0, Lc/e/a/a/e/m;

    invoke-direct {v0}, Lc/e/a/a/e/m;-><init>()V

    iput-object v0, p0, Lc/e/a/a/e/h/v;->b:Lc/e/a/a/e/m;

    .line 7
    iput-object p1, p0, Lc/e/a/a/e/h/v;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/a/a/e/h/v;->f:I

    .line 2
    iput v0, p0, Lc/e/a/a/e/h/v;->g:I

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/e/h/v;->i:Z

    return-void
.end method

.method public a(JI)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lc/e/a/a/e/h/v;->l:J

    return-void
.end method

.method public a(Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->a()V

    .line 5
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/e/h/v;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/e/h/v;->e:Lc/e/a/a/e/q;

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 2

    .line 8
    :goto_0
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-lez v0, :cond_3

    .line 9
    iget v0, p0, Lc/e/a/a/e/h/v;->f:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lc/e/a/a/e/h/v;->c(Lc/e/a/a/o/v;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lc/e/a/a/e/h/v;->d(Lc/e/a/a/o/v;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Lc/e/a/a/e/h/v;->b(Lc/e/a/a/o/v;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final b(Lc/e/a/a/o/v;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lc/e/a/a/o/v;->a:[B

    .line 2
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lc/e/a/a/o/v;->d()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 4
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_1
    iget-boolean v4, p0, Lc/e/a/a/e/h/v;->i:Z

    if-eqz v4, :cond_1

    aget-byte v4, v0, v1

    const/16 v7, 0xe0

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_2
    iput-boolean v3, p0, Lc/e/a/a/e/h/v;->i:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-virtual {p1, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 8
    iput-boolean v5, p0, Lc/e/a/a/e/h/v;->i:Z

    .line 9
    iget-object p1, p0, Lc/e/a/a/e/h/v;->a:Lc/e/a/a/o/v;

    iget-object p1, p1, Lc/e/a/a/o/v;->a:[B

    aget-byte v0, v0, v1

    aput-byte v0, p1, v6

    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lc/e/a/a/e/h/v;->g:I

    .line 11
    iput v6, p0, Lc/e/a/a/e/h/v;->f:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1, v2}, Lc/e/a/a/o/v;->e(I)V

    return-void
.end method

.method public final c(Lc/e/a/a/o/v;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    iget v1, p0, Lc/e/a/a/e/h/v;->k:I

    iget v2, p0, Lc/e/a/a/e/h/v;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lc/e/a/a/e/h/v;->e:Lc/e/a/a/e/q;

    invoke-interface {v1, p1, v0}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 3
    iget p1, p0, Lc/e/a/a/e/h/v;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lc/e/a/a/e/h/v;->g:I

    .line 4
    iget p1, p0, Lc/e/a/a/e/h/v;->g:I

    iget v4, p0, Lc/e/a/a/e/h/v;->k:I

    if-ge p1, v4, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/h/v;->e:Lc/e/a/a/e/q;

    iget-wide v1, p0, Lc/e/a/a/e/h/v;->l:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    .line 6
    iget-wide v0, p0, Lc/e/a/a/e/h/v;->l:J

    iget-wide v2, p0, Lc/e/a/a/e/h/v;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/e/a/a/e/h/v;->l:J

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lc/e/a/a/e/h/v;->g:I

    .line 8
    iput p1, p0, Lc/e/a/a/e/h/v;->f:I

    return-void
.end method

.method public final d(Lc/e/a/a/o/v;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/v;->a()I

    move-result v1

    iget v2, v0, Lc/e/a/a/e/h/v;->g:I

    const/4 v3, 0x4

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2
    iget-object v2, v0, Lc/e/a/a/e/h/v;->a:Lc/e/a/a/o/v;

    iget-object v2, v2, Lc/e/a/a/o/v;->a:[B

    iget v4, v0, Lc/e/a/a/e/h/v;->g:I

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v4, v1}, Lc/e/a/a/o/v;->a([BII)V

    .line 3
    iget v2, v0, Lc/e/a/a/e/h/v;->g:I

    add-int/2addr v2, v1

    iput v2, v0, Lc/e/a/a/e/h/v;->g:I

    .line 4
    iget v1, v0, Lc/e/a/a/e/h/v;->g:I

    if-ge v1, v3, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, v0, Lc/e/a/a/e/h/v;->a:Lc/e/a/a/o/v;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 6
    iget-object v1, v0, Lc/e/a/a/e/h/v;->a:Lc/e/a/a/o/v;

    invoke-virtual {v1}, Lc/e/a/a/o/v;->i()I

    move-result v1

    iget-object v4, v0, Lc/e/a/a/e/h/v;->b:Lc/e/a/a/e/m;

    invoke-static {v1, v4}, Lc/e/a/a/e/m;->a(ILc/e/a/a/e/m;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 7
    iput v2, v0, Lc/e/a/a/e/h/v;->g:I

    .line 8
    iput v4, v0, Lc/e/a/a/e/h/v;->f:I

    return-void

    .line 9
    :cond_1
    iget-object v1, v0, Lc/e/a/a/e/h/v;->b:Lc/e/a/a/e/m;

    iget v5, v1, Lc/e/a/a/e/m;->j:I

    iput v5, v0, Lc/e/a/a/e/h/v;->k:I

    .line 10
    iget-boolean v5, v0, Lc/e/a/a/e/h/v;->h:Z

    if-nez v5, :cond_2

    const-wide/32 v5, 0xf4240

    .line 11
    iget v7, v1, Lc/e/a/a/e/m;->n:I

    int-to-long v7, v7

    mul-long v7, v7, v5

    iget v15, v1, Lc/e/a/a/e/m;->k:I

    int-to-long v5, v15

    div-long/2addr v7, v5

    iput-wide v7, v0, Lc/e/a/a/e/h/v;->j:J

    .line 12
    iget-object v9, v0, Lc/e/a/a/e/h/v;->d:Ljava/lang/String;

    iget-object v10, v1, Lc/e/a/a/e/m;->i:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x1000

    iget v14, v1, Lc/e/a/a/e/m;->l:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lc/e/a/a/e/h/v;->c:Ljava/lang/String;

    move-object/from16 v19, v1

    invoke-static/range {v9 .. v19}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 13
    iget-object v5, v0, Lc/e/a/a/e/h/v;->e:Lc/e/a/a/e/q;

    invoke-interface {v5, v1}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 14
    iput-boolean v4, v0, Lc/e/a/a/e/h/v;->h:Z

    .line 15
    :cond_2
    iget-object v1, v0, Lc/e/a/a/e/h/v;->a:Lc/e/a/a/o/v;

    invoke-virtual {v1, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 16
    iget-object v1, v0, Lc/e/a/a/e/h/v;->e:Lc/e/a/a/e/q;

    iget-object v2, v0, Lc/e/a/a/e/h/v;->a:Lc/e/a/a/o/v;

    invoke-interface {v1, v2, v3}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    const/4 v1, 0x2

    .line 17
    iput v1, v0, Lc/e/a/a/e/h/v;->f:I

    return-void
.end method
