.class public Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public final b:Lc/e/a/a/b/D;

.field public final c:Lc/e/a/a/b/F;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 3
    new-instance v0, Lc/e/a/a/b/D;

    invoke-direct {v0}, Lc/e/a/a/b/D;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->b:Lc/e/a/a/b/D;

    .line 4
    new-instance v0, Lc/e/a/a/b/F;

    invoke-direct {v0}, Lc/e/a/a/b/F;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->c:Lc/e/a/a/b/F;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->b:Lc/e/a/a/b/D;

    aput-object v2, v0, v1

    .line 6
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->c:Lc/e/a/a/b/F;

    aput-object v1, v0, p1

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->b:Lc/e/a/a/b/D;

    invoke-virtual {v0}, Lc/e/a/a/b/D;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)J
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->c:Lc/e/a/a/b/F;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/b/F;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lc/e/a/a/K;)Lc/e/a/a/K;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->b:Lc/e/a/a/b/D;

    iget-boolean v1, p1, Lc/e/a/a/K;->d:Z

    invoke-virtual {v0, v1}, Lc/e/a/a/b/D;->a(Z)V

    .line 2
    new-instance v0, Lc/e/a/a/K;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->c:Lc/e/a/a/b/F;

    iget v2, p1, Lc/e/a/a/K;->b:F

    .line 3
    invoke-virtual {v1, v2}, Lc/e/a/a/b/F;->b(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->c:Lc/e/a/a/b/F;

    iget v3, p1, Lc/e/a/a/K;->c:F

    .line 4
    invoke-virtual {v2, v3}, Lc/e/a/a/b/F;->a(F)F

    move-result v2

    iget-boolean p1, p1, Lc/e/a/a/K;->d:Z

    invoke-direct {v0, v1, v2, p1}, Lc/e/a/a/K;-><init>(FFZ)V

    return-object v0
.end method

.method public b()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method
