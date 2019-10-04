.class public final Lc/e/a/a/b/D;
.super Lc/e/a/a/b/u;
.source "SilenceSkippingAudioProcessor.java"


# instance fields
.field public g:I

.field public h:Z

.field public i:[B

.field public j:[B

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/a/b/u;-><init>()V

    .line 2
    sget-object v0, Lc/e/a/a/o/I;->f:[B

    iput-object v0, p0, Lc/e/a/a/b/D;->i:[B

    .line 3
    iput-object v0, p0, Lc/e/a/a/b/D;->j:[B

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 19
    iget v0, p0, Lc/e/a/a/b/u;->a:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc/e/a/a/b/u;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lc/e/a/a/b/D;->k:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lc/e/a/a/b/D;->g(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lc/e/a/a/b/D;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, p1}, Lc/e/a/a/b/D;->f(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lc/e/a/a/b/D;->m:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15
    iget v1, p0, Lc/e/a/a/b/D;->m:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 16
    iget-object v2, p0, Lc/e/a/a/b/D;->j:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    iget-object p2, p0, Lc/e/a/a/b/D;->j:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/e/a/a/b/D;->h:Z

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/b/u;->flush()V

    return-void
.end method

.method public final a([BI)V
    .locals 2

    .line 12
    invoke-virtual {p0, p2}, Lc/e/a/a/b/u;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lc/e/a/a/b/D;->n:Z

    :cond_0
    return-void
.end method

.method public a(III)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    mul-int/lit8 v0, p2, 0x2

    .line 3
    iput v0, p0, Lc/e/a/a/b/D;->g:I

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/b/u;->b(III)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public final b(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 14
    iget p1, p0, Lc/e/a/a/b/D;->g:I

    div-int/2addr v0, p1

    mul-int v0, v0, p1

    add-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/b/D;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x249f0

    .line 2
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/b/D;->a(J)I

    move-result v0

    iget v1, p0, Lc/e/a/a/b/D;->g:I

    mul-int v0, v0, v1

    .line 3
    iget-object v1, p0, Lc/e/a/a/b/D;->i:[B

    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 4
    new-array v0, v0, [B

    iput-object v0, p0, Lc/e/a/a/b/D;->i:[B

    :cond_0
    const-wide/16 v0, 0x4e20

    .line 5
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/b/D;->a(J)I

    move-result v0

    iget v1, p0, Lc/e/a/a/b/D;->g:I

    mul-int v0, v0, v1

    iput v0, p0, Lc/e/a/a/b/D;->m:I

    .line 6
    iget-object v0, p0, Lc/e/a/a/b/D;->j:[B

    array-length v0, v0

    iget v1, p0, Lc/e/a/a/b/D;->m:I

    if-eq v0, v1, :cond_1

    .line 7
    new-array v0, v1, [B

    iput-object v0, p0, Lc/e/a/a/b/D;->j:[B

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lc/e/a/a/b/D;->k:I

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lc/e/a/a/b/D;->o:J

    .line 10
    iput v0, p0, Lc/e/a/a/b/D;->l:I

    .line 11
    iput-boolean v0, p0, Lc/e/a/a/b/D;->n:Z

    return-void
.end method

.method public final c(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 7
    iget p1, p0, Lc/e/a/a/b/D;->g:I

    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 4

    .line 1
    iget v0, p0, Lc/e/a/a/b/D;->l:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/e/a/a/b/D;->i:[B

    invoke-virtual {p0, v1, v0}, Lc/e/a/a/b/D;->a([BI)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lc/e/a/a/b/D;->n:Z

    if-nez v0, :cond_1

    .line 4
    iget-wide v0, p0, Lc/e/a/a/b/D;->o:J

    iget v2, p0, Lc/e/a/a/b/D;->m:I

    iget v3, p0, Lc/e/a/a/b/D;->g:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/e/a/a/b/D;->o:J

    :cond_1
    return-void
.end method

.method public final d(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lc/e/a/a/b/u;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lc/e/a/a/b/D;->n:Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/b/D;->h:Z

    .line 2
    iput v0, p0, Lc/e/a/a/b/D;->m:I

    .line 3
    sget-object v0, Lc/e/a/a/o/I;->f:[B

    iput-object v0, p0, Lc/e/a/a/b/D;->i:[B

    .line 4
    iput-object v0, p0, Lc/e/a/a/b/D;->j:[B

    return-void
.end method

.method public final e(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1}, Lc/e/a/a/b/D;->c(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v1, v2

    .line 8
    iget-object v3, p0, Lc/e/a/a/b/D;->i:[B

    array-length v4, v3

    iget v5, p0, Lc/e/a/a/b/D;->l:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-ge v1, v0, :cond_0

    if-ge v2, v4, :cond_0

    .line 9
    invoke-virtual {p0, v3, v5}, Lc/e/a/a/b/D;->a([BI)V

    .line 10
    iput v6, p0, Lc/e/a/a/b/D;->l:I

    .line 11
    iput v6, p0, Lc/e/a/a/b/D;->k:I

    goto :goto_1

    .line 12
    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    iget-object v2, p0, Lc/e/a/a/b/D;->i:[B

    iget v3, p0, Lc/e/a/a/b/D;->l:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 15
    iget v2, p0, Lc/e/a/a/b/D;->l:I

    add-int/2addr v2, v1

    iput v2, p0, Lc/e/a/a/b/D;->l:I

    .line 16
    iget v1, p0, Lc/e/a/a/b/D;->l:I

    iget-object v2, p0, Lc/e/a/a/b/D;->i:[B

    array-length v3, v2

    if-ne v1, v3, :cond_2

    .line 17
    iget-boolean v3, p0, Lc/e/a/a/b/D;->n:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 18
    iget v1, p0, Lc/e/a/a/b/D;->m:I

    invoke-virtual {p0, v2, v1}, Lc/e/a/a/b/D;->a([BI)V

    .line 19
    iget-wide v1, p0, Lc/e/a/a/b/D;->o:J

    iget v3, p0, Lc/e/a/a/b/D;->l:I

    iget v5, p0, Lc/e/a/a/b/D;->m:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lc/e/a/a/b/D;->g:I

    div-int/2addr v3, v5

    int-to-long v7, v3

    add-long/2addr v1, v7

    iput-wide v1, p0, Lc/e/a/a/b/D;->o:J

    goto :goto_0

    .line 20
    :cond_1
    iget-wide v2, p0, Lc/e/a/a/b/D;->o:J

    iget v5, p0, Lc/e/a/a/b/D;->m:I

    sub-int/2addr v1, v5

    iget v5, p0, Lc/e/a/a/b/D;->g:I

    div-int/2addr v1, v5

    int-to-long v7, v1

    add-long/2addr v2, v7

    iput-wide v2, p0, Lc/e/a/a/b/D;->o:J

    .line 21
    :goto_0
    iget-object v1, p0, Lc/e/a/a/b/D;->i:[B

    iget v2, p0, Lc/e/a/a/b/D;->l:I

    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/a/b/D;->a(Ljava/nio/ByteBuffer;[BI)V

    .line 22
    iput v6, p0, Lc/e/a/a/b/D;->l:I

    .line 23
    iput v4, p0, Lc/e/a/a/b/D;->k:I

    .line 24
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/b/D;->o:J

    return-wide v0
.end method

.method public final f(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lc/e/a/a/b/D;->i:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p0, p1}, Lc/e/a/a/b/D;->b(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lc/e/a/a/b/D;->k:I

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p0, p1}, Lc/e/a/a/b/D;->d(Ljava/nio/ByteBuffer;)V

    .line 9
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Lc/e/a/a/b/D;->c(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    iget-wide v2, p0, Lc/e/a/a/b/D;->o:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lc/e/a/a/b/D;->g:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc/e/a/a/b/D;->o:J

    .line 5
    iget-object v2, p0, Lc/e/a/a/b/D;->j:[B

    iget v3, p0, Lc/e/a/a/b/D;->m:I

    invoke-virtual {p0, p1, v2, v3}, Lc/e/a/a/b/D;->a(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    .line 6
    iget-object v1, p0, Lc/e/a/a/b/D;->j:[B

    iget v2, p0, Lc/e/a/a/b/D;->m:I

    invoke-virtual {p0, v1, v2}, Lc/e/a/a/b/D;->a([BI)V

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lc/e/a/a/b/D;->k:I

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lc/e/a/a/b/u;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/e/a/a/b/D;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
