.class public final Lc/e/a/a/e/h/g;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

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

.field public i:J

.field public j:Lcom/google/android/exoplayer2/Format;

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/e/h/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lc/e/a/a/o/u;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lc/e/a/a/o/u;-><init>([B)V

    iput-object v0, p0, Lc/e/a/a/e/h/g;->a:Lc/e/a/a/o/u;

    .line 4
    new-instance v0, Lc/e/a/a/o/v;

    iget-object v1, p0, Lc/e/a/a/e/h/g;->a:Lc/e/a/a/o/u;

    iget-object v1, v1, Lc/e/a/a/o/u;->a:[B

    invoke-direct {v0, v1}, Lc/e/a/a/o/v;-><init>([B)V

    iput-object v0, p0, Lc/e/a/a/e/h/g;->b:Lc/e/a/a/o/v;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lc/e/a/a/e/h/g;->f:I

    .line 6
    iput-object p1, p0, Lc/e/a/a/e/h/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/a/a/e/h/g;->f:I

    .line 2
    iput v0, p0, Lc/e/a/a/e/h/g;->g:I

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/e/h/g;->h:Z

    return-void
.end method

.method public a(JI)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lc/e/a/a/e/h/g;->l:J

    return-void
.end method

.method public a(Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->a()V

    .line 5
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/e/h/g;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/e/h/g;->e:Lc/e/a/a/e/q;

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 9

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-lez v0, :cond_4

    .line 9
    iget v0, p0, Lc/e/a/a/e/h/g;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    iget v2, p0, Lc/e/a/a/e/h/g;->k:I

    iget v3, p0, Lc/e/a/a/e/h/g;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 11
    iget-object v2, p0, Lc/e/a/a/e/h/g;->e:Lc/e/a/a/e/q;

    invoke-interface {v2, p1, v0}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 12
    iget v2, p0, Lc/e/a/a/e/h/g;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lc/e/a/a/e/h/g;->g:I

    .line 13
    iget v0, p0, Lc/e/a/a/e/h/g;->g:I

    iget v6, p0, Lc/e/a/a/e/h/g;->k:I

    if-ne v0, v6, :cond_0

    .line 14
    iget-object v2, p0, Lc/e/a/a/e/h/g;->e:Lc/e/a/a/e/q;

    iget-wide v3, p0, Lc/e/a/a/e/h/g;->l:J

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    .line 15
    iget-wide v2, p0, Lc/e/a/a/e/h/g;->l:J

    iget-wide v4, p0, Lc/e/a/a/e/h/g;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc/e/a/a/e/h/g;->l:J

    .line 16
    iput v1, p0, Lc/e/a/a/e/h/g;->f:I

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lc/e/a/a/e/h/g;->b:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/16 v3, 0x80

    invoke-virtual {p0, p1, v0, v3}, Lc/e/a/a/e/h/g;->a(Lc/e/a/a/o/v;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lc/e/a/a/e/h/g;->c()V

    .line 19
    iget-object v0, p0, Lc/e/a/a/e/h/g;->b:Lc/e/a/a/o/v;

    invoke-virtual {v0, v1}, Lc/e/a/a/o/v;->e(I)V

    .line 20
    iget-object v0, p0, Lc/e/a/a/e/h/g;->e:Lc/e/a/a/e/q;

    iget-object v1, p0, Lc/e/a/a/e/h/g;->b:Lc/e/a/a/o/v;

    invoke-interface {v0, v1, v3}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 21
    iput v2, p0, Lc/e/a/a/e/h/g;->f:I

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p0, p1}, Lc/e/a/a/e/h/g;->b(Lc/e/a/a/o/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iput v3, p0, Lc/e/a/a/e/h/g;->f:I

    .line 24
    iget-object v0, p0, Lc/e/a/a/e/h/g;->b:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    const/16 v1, 0x77

    .line 25
    aput-byte v1, v0, v3

    .line 26
    iput v2, p0, Lc/e/a/a/e/h/g;->g:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a(Lc/e/a/a/o/v;[BI)Z
    .locals 2

    .line 27
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    iget v1, p0, Lc/e/a/a/e/h/g;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 28
    iget v1, p0, Lc/e/a/a/e/h/g;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lc/e/a/a/o/v;->a([BII)V

    .line 29
    iget p1, p0, Lc/e/a/a/e/h/g;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lc/e/a/a/e/h/g;->g:I

    .line 30
    iget p1, p0, Lc/e/a/a/e/h/g;->g:I

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
    :goto_0
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/e/h/g;->h:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lc/e/a/a/e/h/g;->h:Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    .line 5
    iput-boolean v1, p0, Lc/e/a/a/e/h/g;->h:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 6
    :cond_3
    iput-boolean v1, p0, Lc/e/a/a/e/h/g;->h:Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final c()V
    .locals 14

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/h/g;->a:Lc/e/a/a/o/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/e/a/a/o/u;->b(I)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/h/g;->a:Lc/e/a/a/o/u;

    invoke-static {v0}, Lc/e/a/a/b/h;->a(Lc/e/a/a/o/u;)Lc/e/a/a/b/h$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/e/a/a/e/h/g;->j:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_0

    iget v2, v0, Lc/e/a/a/b/h$a;->d:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->v:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lc/e/a/a/b/h$a;->c:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->w:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lc/e/a/a/b/h$a;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    if-eq v2, v1, :cond_1

    .line 4
    :cond_0
    iget-object v3, p0, Lc/e/a/a/e/h/g;->d:Ljava/lang/String;

    iget-object v4, v0, Lc/e/a/a/b/h$a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, v0, Lc/e/a/a/b/h$a;->d:I

    iget v9, v0, Lc/e/a/a/b/h$a;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lc/e/a/a/e/h/g;->c:Ljava/lang/String;

    invoke-static/range {v3 .. v13}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/a/e/h/g;->j:Lcom/google/android/exoplayer2/Format;

    .line 5
    iget-object v1, p0, Lc/e/a/a/e/h/g;->e:Lc/e/a/a/e/q;

    iget-object v2, p0, Lc/e/a/a/e/h/g;->j:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 6
    :cond_1
    iget v1, v0, Lc/e/a/a/b/h$a;->e:I

    iput v1, p0, Lc/e/a/a/e/h/g;->k:I

    const-wide/32 v1, 0xf4240

    .line 7
    iget v0, v0, Lc/e/a/a/b/h$a;->f:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lc/e/a/a/e/h/g;->j:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->w:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lc/e/a/a/e/h/g;->i:J

    return-void
.end method
