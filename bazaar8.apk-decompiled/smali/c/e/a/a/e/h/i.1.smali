.class public final Lc/e/a/a/e/h/i;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Lc/e/a/a/e/h/o;


# instance fields
.field public final a:Lc/e/a/a/o/u;

.field public final b:Lc/e/a/a/o/v;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lc/e/a/a/e/q;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:Lcom/google/android/exoplayer2/Format;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/e/h/i;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lc/e/a/a/o/u;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lc/e/a/a/o/u;-><init>([B)V

    iput-object v0, p0, Lc/e/a/a/e/h/i;->a:Lc/e/a/a/o/u;

    .line 4
    new-instance v0, Lc/e/a/a/o/v;

    iget-object v1, p0, Lc/e/a/a/e/h/i;->a:Lc/e/a/a/o/u;

    iget-object v1, v1, Lc/e/a/a/o/u;->a:[B

    invoke-direct {v0, v1}, Lc/e/a/a/o/v;-><init>([B)V

    iput-object v0, p0, Lc/e/a/a/e/h/i;->b:Lc/e/a/a/o/v;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lc/e/a/a/e/h/i;->f:I

    .line 6
    iput v0, p0, Lc/e/a/a/e/h/i;->g:I

    .line 7
    iput-boolean v0, p0, Lc/e/a/a/e/h/i;->h:Z

    .line 8
    iput-boolean v0, p0, Lc/e/a/a/e/h/i;->i:Z

    .line 9
    iput-object p1, p0, Lc/e/a/a/e/h/i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/a/a/e/h/i;->f:I

    .line 2
    iput v0, p0, Lc/e/a/a/e/h/i;->g:I

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/e/h/i;->h:Z

    .line 4
    iput-boolean v0, p0, Lc/e/a/a/e/h/i;->i:Z

    return-void
.end method

.method public a(JI)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lc/e/a/a/e/h/i;->m:J

    return-void
.end method

.method public a(Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V
    .locals 1

    .line 5
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->a()V

    .line 6
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/e/h/i;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/e/h/i;->e:Lc/e/a/a/e/q;

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 9

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-lez v0, :cond_5

    .line 10
    iget v0, p0, Lc/e/a/a/e/h/i;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    iget v2, p0, Lc/e/a/a/e/h/i;->l:I

    iget v3, p0, Lc/e/a/a/e/h/i;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 12
    iget-object v2, p0, Lc/e/a/a/e/h/i;->e:Lc/e/a/a/e/q;

    invoke-interface {v2, p1, v0}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 13
    iget v2, p0, Lc/e/a/a/e/h/i;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lc/e/a/a/e/h/i;->g:I

    .line 14
    iget v0, p0, Lc/e/a/a/e/h/i;->g:I

    iget v6, p0, Lc/e/a/a/e/h/i;->l:I

    if-ne v0, v6, :cond_0

    .line 15
    iget-object v2, p0, Lc/e/a/a/e/h/i;->e:Lc/e/a/a/e/q;

    iget-wide v3, p0, Lc/e/a/a/e/h/i;->m:J

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    .line 16
    iget-wide v2, p0, Lc/e/a/a/e/h/i;->m:J

    iget-wide v4, p0, Lc/e/a/a/e/h/i;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc/e/a/a/e/h/i;->m:J

    .line 17
    iput v1, p0, Lc/e/a/a/e/h/i;->f:I

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lc/e/a/a/e/h/i;->b:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/16 v3, 0x10

    invoke-virtual {p0, p1, v0, v3}, Lc/e/a/a/e/h/i;->a(Lc/e/a/a/o/v;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lc/e/a/a/e/h/i;->c()V

    .line 20
    iget-object v0, p0, Lc/e/a/a/e/h/i;->b:Lc/e/a/a/o/v;

    invoke-virtual {v0, v1}, Lc/e/a/a/o/v;->e(I)V

    .line 21
    iget-object v0, p0, Lc/e/a/a/e/h/i;->e:Lc/e/a/a/e/q;

    iget-object v1, p0, Lc/e/a/a/e/h/i;->b:Lc/e/a/a/o/v;

    invoke-interface {v0, v1, v3}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 22
    iput v2, p0, Lc/e/a/a/e/h/i;->f:I

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p0, p1}, Lc/e/a/a/e/h/i;->b(Lc/e/a/a/o/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iput v3, p0, Lc/e/a/a/e/h/i;->f:I

    .line 25
    iget-object v0, p0, Lc/e/a/a/e/h/i;->b:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/16 v4, -0x54

    aput-byte v4, v0, v1

    .line 26
    iget-boolean v1, p0, Lc/e/a/a/e/h/i;->i:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x41

    goto :goto_1

    :cond_4
    const/16 v1, 0x40

    :goto_1
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 27
    iput v2, p0, Lc/e/a/a/e/h/i;->g:I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(Lc/e/a/a/o/v;[BI)Z
    .locals 2

    .line 28
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    iget v1, p0, Lc/e/a/a/e/h/i;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 29
    iget v1, p0, Lc/e/a/a/e/h/i;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lc/e/a/a/o/v;->a([BII)V

    .line 30
    iget p1, p0, Lc/e/a/a/e/h/i;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lc/e/a/a/e/h/i;->g:I

    .line 31
    iget p1, p0, Lc/e/a/a/e/h/i;->g:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final b(Lc/e/a/a/o/v;)Z
    .locals 5

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/e/h/i;->h:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lc/e/a/a/e/h/i;->h:Z

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 5
    :goto_1
    iput-boolean v2, p0, Lc/e/a/a/e/h/i;->h:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_0

    :cond_4
    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    .line 6
    :cond_5
    iput-boolean v1, p0, Lc/e/a/a/e/h/i;->i:Z

    return v3

    :cond_6
    return v1
.end method

.method public final c()V
    .locals 13

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/h/i;->a:Lc/e/a/a/o/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/e/a/a/o/u;->b(I)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/h/i;->a:Lc/e/a/a/o/u;

    invoke-static {v0}, Lc/e/a/a/b/j;->a(Lc/e/a/a/o/u;)Lc/e/a/a/b/j$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/e/a/a/e/h/i;->k:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_0

    iget v2, v0, Lc/e/a/a/b/j$a;->c:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->v:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lc/e/a/a/b/j$a;->b:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->w:I

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v2, "audio/ac4"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    iget-object v2, p0, Lc/e/a/a/e/h/i;->d:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, v0, Lc/e/a/a/b/j$a;->c:I

    iget v8, v0, Lc/e/a/a/b/j$a;->b:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lc/e/a/a/e/h/i;->c:Ljava/lang/String;

    const-string v3, "audio/ac4"

    .line 6
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/a/e/h/i;->k:Lcom/google/android/exoplayer2/Format;

    .line 7
    iget-object v1, p0, Lc/e/a/a/e/h/i;->e:Lc/e/a/a/e/q;

    iget-object v2, p0, Lc/e/a/a/e/h/i;->k:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 8
    :cond_1
    iget v1, v0, Lc/e/a/a/b/j$a;->d:I

    iput v1, p0, Lc/e/a/a/e/h/i;->l:I

    const-wide/32 v1, 0xf4240

    .line 9
    iget v0, v0, Lc/e/a/a/b/j$a;->e:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lc/e/a/a/e/h/i;->k:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->w:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lc/e/a/a/e/h/i;->j:J

    return-void
.end method
