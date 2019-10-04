.class public abstract Lc/e/a/a/b/u;
.super Ljava/lang/Object;
.source "BaseAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/nio/ByteBuffer;

.field public e:Ljava/nio/ByteBuffer;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lc/e/a/a/b/u;->d:Ljava/nio/ByteBuffer;

    .line 3
    iput-object v0, p0, Lc/e/a/a/b/u;->e:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lc/e/a/a/b/u;->b:I

    .line 5
    iput v0, p0, Lc/e/a/a/b/u;->a:I

    .line 6
    iput v0, p0, Lc/e/a/a/b/u;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/b/u;->d:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lc/e/a/a/b/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    :goto_0
    iget-object p1, p0, Lc/e/a/a/b/u;->d:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lc/e/a/a/b/u;->e:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/a/b/u;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final b(III)Z
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/b/u;->a:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lc/e/a/a/b/u;->b:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lc/e/a/a/b/u;->c:I

    if-ne p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput p1, p0, Lc/e/a/a/b/u;->a:I

    .line 3
    iput p2, p0, Lc/e/a/a/b/u;->b:I

    .line 4
    iput p3, p0, Lc/e/a/a/b/u;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/b/u;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/b/u;->e:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lc/e/a/a/b/u;->e:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/e/a/a/b/u;->f:Z

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/b/u;->b()V

    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/b/u;->flush()V

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lc/e/a/a/b/u;->d:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lc/e/a/a/b/u;->a:I

    .line 4
    iput v0, p0, Lc/e/a/a/b/u;->b:I

    .line 5
    iput v0, p0, Lc/e/a/a/b/u;->c:I

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/b/u;->e()V

    return-void
.end method

.method public s()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/b/u;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/u;->e:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lc/e/a/a/b/u;->e:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/b/u;->b:I

    return v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/b/u;->a:I

    return v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/b/u;->c:I

    return v0
.end method

.method public final x()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/b/u;->f:Z

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/b/u;->c()V

    return-void
.end method
