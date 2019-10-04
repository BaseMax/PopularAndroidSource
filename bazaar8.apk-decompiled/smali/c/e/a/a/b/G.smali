.class public final Lc/e/a/a/b/G;
.super Lc/e/a/a/b/u;
.source "TrimmingAudioProcessor.java"


# instance fields
.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:I

.field public m:[B

.field public n:I

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/a/b/u;-><init>()V

    .line 2
    sget-object v0, Lc/e/a/a/o/I;->f:[B

    iput-object v0, p0, Lc/e/a/a/b/G;->m:[B

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 1
    iput p1, p0, Lc/e/a/a/b/G;->h:I

    .line 2
    iput p2, p0, Lc/e/a/a/b/G;->i:I

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, p0, Lc/e/a/a/b/G;->k:Z

    .line 18
    iget v3, p0, Lc/e/a/a/b/G;->l:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 19
    iget-wide v4, p0, Lc/e/a/a/b/G;->o:J

    iget v6, p0, Lc/e/a/a/b/G;->j:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lc/e/a/a/b/G;->o:J

    .line 20
    iget v4, p0, Lc/e/a/a/b/G;->l:I

    sub-int/2addr v4, v3

    iput v4, p0, Lc/e/a/a/b/G;->l:I

    add-int/2addr v0, v3

    .line 21
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget v0, p0, Lc/e/a/a/b/G;->l:I

    if-lez v0, :cond_1

    return-void

    :cond_1
    sub-int/2addr v2, v3

    .line 23
    iget v0, p0, Lc/e/a/a/b/G;->n:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lc/e/a/a/b/G;->m:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    .line 24
    invoke-virtual {p0, v0}, Lc/e/a/a/b/u;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 25
    iget v4, p0, Lc/e/a/a/b/G;->n:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lc/e/a/a/o/I;->a(III)I

    move-result v4

    .line 26
    iget-object v6, p0, Lc/e/a/a/b/G;->m:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    .line 27
    invoke-static {v0, v5, v2}, Lc/e/a/a/o/I;->a(III)I

    move-result v0

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 29
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    .line 31
    iget v0, p0, Lc/e/a/a/b/G;->n:I

    sub-int/2addr v0, v4

    iput v0, p0, Lc/e/a/a/b/G;->n:I

    .line 32
    iget-object v0, p0, Lc/e/a/a/b/G;->m:[B

    iget v1, p0, Lc/e/a/a/b/G;->n:I

    invoke-static {v0, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object v0, p0, Lc/e/a/a/b/G;->m:[B

    iget v1, p0, Lc/e/a/a/b/G;->n:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 34
    iget p1, p0, Lc/e/a/a/b/G;->n:I

    add-int/2addr p1, v2

    iput p1, p0, Lc/e/a/a/b/G;->n:I

    .line 35
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public a(III)Z
    .locals 6

    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 3
    iget v1, p0, Lc/e/a/a/b/G;->n:I

    if-lez v1, :cond_0

    .line 4
    iget-wide v2, p0, Lc/e/a/a/b/G;->o:J

    iget v4, p0, Lc/e/a/a/b/G;->j:I

    div-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc/e/a/a/b/G;->o:J

    .line 5
    :cond_0
    invoke-static {v0, p2}, Lc/e/a/a/o/I;->b(II)I

    move-result v0

    iput v0, p0, Lc/e/a/a/b/G;->j:I

    .line 6
    iget v0, p0, Lc/e/a/a/b/G;->i:I

    iget v1, p0, Lc/e/a/a/b/G;->j:I

    mul-int v2, v0, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lc/e/a/a/b/G;->m:[B

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lc/e/a/a/b/G;->n:I

    .line 8
    iget v3, p0, Lc/e/a/a/b/G;->h:I

    mul-int v1, v1, v3

    iput v1, p0, Lc/e/a/a/b/G;->l:I

    .line 9
    iget-boolean v1, p0, Lc/e/a/a/b/G;->g:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 10
    :goto_1
    iput-boolean v0, p0, Lc/e/a/a/b/G;->g:Z

    .line 11
    iput-boolean v2, p0, Lc/e/a/a/b/G;->k:Z

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/b/u;->b(III)Z

    .line 13
    iget-boolean p1, p0, Lc/e/a/a/b/G;->g:Z

    if-eq v1, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 14
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/b/G;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput v1, p0, Lc/e/a/a/b/G;->l:I

    .line 3
    :cond_0
    iput v1, p0, Lc/e/a/a/b/G;->n:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lc/e/a/a/b/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc/e/a/a/b/G;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/o/I;->f:[B

    iput-object v0, p0, Lc/e/a/a/b/G;->m:[B

    return-void
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/b/G;->o:J

    return-wide v0
.end method

.method public g()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lc/e/a/a/b/G;->o:J

    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/b/G;->g:Z

    return v0
.end method

.method public t()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-super {p0}, Lc/e/a/a/b/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc/e/a/a/b/G;->n:I

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lc/e/a/a/b/u;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/a/b/G;->m:[B

    iget v2, p0, Lc/e/a/a/b/G;->n:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    iput v3, p0, Lc/e/a/a/b/G;->n:I

    .line 4
    :cond_0
    invoke-super {p0}, Lc/e/a/a/b/u;->t()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
