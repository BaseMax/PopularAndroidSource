.class public final Lc/e/a/a/b/F;
.super Ljava/lang/Object;
.source "SonicAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:Z

.field public h:Lc/e/a/a/b/E;

.field public i:Ljava/nio/ByteBuffer;

.field public j:Ljava/nio/ShortBuffer;

.field public k:Ljava/nio/ByteBuffer;

.field public l:J

.field public m:J

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lc/e/a/a/b/F;->c:F

    .line 3
    iput v0, p0, Lc/e/a/a/b/F;->d:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lc/e/a/a/b/F;->a:I

    .line 5
    iput v0, p0, Lc/e/a/a/b/F;->b:I

    .line 6
    iput v0, p0, Lc/e/a/a/b/F;->e:I

    .line 7
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lc/e/a/a/b/F;->i:Ljava/nio/ByteBuffer;

    .line 8
    iget-object v1, p0, Lc/e/a/a/b/F;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/a/b/F;->j:Ljava/nio/ShortBuffer;

    .line 9
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lc/e/a/a/b/F;->k:Ljava/nio/ByteBuffer;

    .line 10
    iput v0, p0, Lc/e/a/a/b/F;->f:I

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 1
    invoke-static {p1, v0, v1}, Lc/e/a/a/o/I;->a(FFF)F

    move-result p1

    .line 2
    iget v0, p0, Lc/e/a/a/b/F;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Lc/e/a/a/b/F;->d:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/e/a/a/b/F;->g:Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/b/F;->flush()V

    return p1
.end method

.method public a(J)J
    .locals 15

    move-object v0, p0

    .line 6
    iget-wide v5, v0, Lc/e/a/a/b/F;->m:J

    const-wide/16 v1, 0x400

    cmp-long v3, v5, v1

    if-ltz v3, :cond_1

    .line 7
    iget v1, v0, Lc/e/a/a/b/F;->e:I

    iget v2, v0, Lc/e/a/a/b/F;->b:I

    if-ne v1, v2, :cond_0

    iget-wide v3, v0, Lc/e/a/a/b/F;->l:J

    move-wide/from16 v1, p1

    .line 8
    invoke-static/range {v1 .. v6}, Lc/e/a/a/o/I;->c(JJJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lc/e/a/a/b/F;->l:J

    int-to-long v7, v1

    mul-long v11, v3, v7

    int-to-long v1, v2

    mul-long v13, v5, v1

    move-wide/from16 v9, p1

    .line 9
    invoke-static/range {v9 .. v14}, Lc/e/a/a/o/I;->c(JJJ)J

    move-result-wide v1

    :goto_0
    return-wide v1

    .line 10
    :cond_1
    iget v1, v0, Lc/e/a/a/b/F;->c:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 18
    iget-object v0, p0, Lc/e/a/a/b/F;->h:Lc/e/a/a/b/E;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/b/E;

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 22
    iget-wide v3, p0, Lc/e/a/a/b/F;->l:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lc/e/a/a/b/F;->l:J

    .line 23
    invoke-virtual {v0, v1}, Lc/e/a/a/b/E;->b(Ljava/nio/ShortBuffer;)V

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    :cond_0
    invoke-virtual {v0}, Lc/e/a/a/b/E;->b()I

    move-result p1

    iget v1, p0, Lc/e/a/a/b/F;->a:I

    mul-int p1, p1, v1

    mul-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_2

    .line 26
    iget-object v1, p0, Lc/e/a/a/b/F;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 27
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/a/b/F;->i:Ljava/nio/ByteBuffer;

    .line 28
    iget-object v1, p0, Lc/e/a/a/b/F;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/a/b/F;->j:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Lc/e/a/a/b/F;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 30
    iget-object v1, p0, Lc/e/a/a/b/F;->j:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 31
    :goto_0
    iget-object v1, p0, Lc/e/a/a/b/F;->j:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lc/e/a/a/b/E;->a(Ljava/nio/ShortBuffer;)V

    .line 32
    iget-wide v0, p0, Lc/e/a/a/b/F;->m:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/e/a/a/b/F;->m:J

    .line 33
    iget-object v0, p0, Lc/e/a/a/b/F;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 34
    iget-object p1, p0, Lc/e/a/a/b/F;->i:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lc/e/a/a/b/F;->k:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public a(III)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 11
    iget p3, p0, Lc/e/a/a/b/F;->f:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move p3, p1

    .line 12
    :cond_0
    iget v0, p0, Lc/e/a/a/b/F;->b:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lc/e/a/a/b/F;->a:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lc/e/a/a/b/F;->e:I

    if-ne v0, p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_1
    iput p1, p0, Lc/e/a/a/b/F;->b:I

    .line 14
    iput p2, p0, Lc/e/a/a/b/F;->a:I

    .line 15
    iput p3, p0, Lc/e/a/a/b/F;->e:I

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lc/e/a/a/b/F;->g:Z

    return p1

    .line 17
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public b(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 1
    invoke-static {p1, v0, v1}, Lc/e/a/a/o/I;->a(FFF)F

    move-result p1

    .line 2
    iget v0, p0, Lc/e/a/a/b/F;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Lc/e/a/a/b/F;->c:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/e/a/a/b/F;->g:Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/b/F;->flush()V

    return p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/b/F;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/a/b/F;->h:Lc/e/a/a/b/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/e/a/a/b/E;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/b/F;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/b/F;->g:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lc/e/a/a/b/E;

    iget v2, p0, Lc/e/a/a/b/F;->b:I

    iget v3, p0, Lc/e/a/a/b/F;->a:I

    iget v4, p0, Lc/e/a/a/b/F;->c:F

    iget v5, p0, Lc/e/a/a/b/F;->d:F

    iget v6, p0, Lc/e/a/a/b/F;->e:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lc/e/a/a/b/E;-><init>(IIFFI)V

    iput-object v0, p0, Lc/e/a/a/b/F;->h:Lc/e/a/a/b/E;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/b/F;->h:Lc/e/a/a/b/E;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lc/e/a/a/b/E;->a()V

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lc/e/a/a/b/F;->k:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lc/e/a/a/b/F;->l:J

    .line 8
    iput-wide v0, p0, Lc/e/a/a/b/F;->m:J

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lc/e/a/a/b/F;->n:Z

    return-void
.end method

.method public reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lc/e/a/a/b/F;->c:F

    .line 2
    iput v0, p0, Lc/e/a/a/b/F;->d:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lc/e/a/a/b/F;->a:I

    .line 4
    iput v0, p0, Lc/e/a/a/b/F;->b:I

    .line 5
    iput v0, p0, Lc/e/a/a/b/F;->e:I

    .line 6
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lc/e/a/a/b/F;->i:Ljava/nio/ByteBuffer;

    .line 7
    iget-object v1, p0, Lc/e/a/a/b/F;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/a/b/F;->j:Ljava/nio/ShortBuffer;

    .line 8
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lc/e/a/a/b/F;->k:Ljava/nio/ByteBuffer;

    .line 9
    iput v0, p0, Lc/e/a/a/b/F;->f:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lc/e/a/a/b/F;->g:Z

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lc/e/a/a/b/F;->h:Lc/e/a/a/b/E;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lc/e/a/a/b/F;->l:J

    .line 13
    iput-wide v1, p0, Lc/e/a/a/b/F;->m:J

    .line 14
    iput-boolean v0, p0, Lc/e/a/a/b/F;->n:Z

    return-void
.end method

.method public s()Z
    .locals 3

    .line 1
    iget v0, p0, Lc/e/a/a/b/F;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lc/e/a/a/b/F;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lc/e/a/a/b/F;->d:F

    sub-float/2addr v0, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lc/e/a/a/b/F;->e:I

    iget v1, p0, Lc/e/a/a/b/F;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/F;->k:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lc/e/a/a/b/F;->k:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/b/F;->a:I

    return v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/b/F;->e:I

    return v0
.end method

.method public w()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/F;->h:Lc/e/a/a/b/E;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/e/a/a/b/E;->d()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/b/F;->n:Z

    return-void
.end method
