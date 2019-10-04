.class public final Lc/e/a/a/j/d/n;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lc/e/a/a/j/C;


# instance fields
.field public final a:I

.field public final b:Lc/e/a/a/j/d/o;

.field public c:I


# direct methods
.method public constructor <init>(Lc/e/a/a/j/d/o;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/d/n;->b:Lc/e/a/a/j/d/o;

    .line 3
    iput p2, p0, Lc/e/a/a/j/d/n;->a:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lc/e/a/a/j/d/n;->c:I

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I
    .locals 2

    .line 5
    iget v0, p0, Lc/e/a/a/j/d/n;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    .line 6
    invoke-virtual {p2, p1}, Lc/e/a/a/c/a;->b(I)V

    const/4 p1, -0x4

    return p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/d/n;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/a/j/d/n;->b:Lc/e/a/a/j/d/o;

    iget v1, p0, Lc/e/a/a/j/d/n;->c:I

    .line 8
    invoke-virtual {v0, v1, p1, p2, p3}, Lc/e/a/a/j/d/o;->a(ILc/e/a/a/E;Lc/e/a/a/c/f;Z)I

    move-result v1

    :cond_1
    return v1
.end method

.method public a()V
    .locals 3

    .line 1
    iget v0, p0, Lc/e/a/a/j/d/n;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/n;->b:Lc/e/a/a/j/d/o;

    invoke-virtual {v0}, Lc/e/a/a/j/d/o;->n()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Lc/e/a/a/j/d/n;->b:Lc/e/a/a/j/d/o;

    .line 4
    invoke-virtual {v1}, Lc/e/a/a/j/d/o;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v2, p0, Lc/e/a/a/j/d/n;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/j/d/n;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->a(Z)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/n;->b:Lc/e/a/a/j/d/o;

    iget v1, p0, Lc/e/a/a/j/d/n;->a:I

    invoke-virtual {v0, v1}, Lc/e/a/a/j/d/o;->a(I)I

    move-result v0

    iput v0, p0, Lc/e/a/a/j/d/n;->c:I

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/j/d/n;->c:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/j/d/n;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/j/d/n;->b:Lc/e/a/a/j/d/o;

    iget v1, p0, Lc/e/a/a/j/d/n;->c:I

    invoke-virtual {v0, v1}, Lc/e/a/a/j/d/o;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(J)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/j/d/n;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/j/d/n;->b:Lc/e/a/a/j/d/o;

    iget v1, p0, Lc/e/a/a/j/d/n;->c:I

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Lc/e/a/a/j/d/o;->a(IJ)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d()Z
    .locals 2

    .line 3
    iget v0, p0, Lc/e/a/a/j/d/n;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    iget v0, p0, Lc/e/a/a/j/d/n;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/n;->b:Lc/e/a/a/j/d/o;

    iget v2, p0, Lc/e/a/a/j/d/n;->a:I

    invoke-virtual {v0, v2}, Lc/e/a/a/j/d/o;->d(I)V

    .line 3
    iput v1, p0, Lc/e/a/a/j/d/n;->c:I

    :cond_0
    return-void
.end method
