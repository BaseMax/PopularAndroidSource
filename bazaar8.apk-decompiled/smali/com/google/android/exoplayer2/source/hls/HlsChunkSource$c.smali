.class public final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$c;
.super Lc/e/a/a/j/b/b;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final d:Lc/e/a/a/j/d/a/f;

.field public final e:J


# direct methods
.method public constructor <init>(Lc/e/a/a/j/d/a/f;JI)V
    .locals 4

    int-to-long v0, p4

    .line 1
    iget-object p4, p1, Lc/e/a/a/j/d/a/f;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    int-to-long v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lc/e/a/a/j/b/b;-><init>(JJ)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$c;->d:Lc/e/a/a/j/d/a/f;

    .line 3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$c;->e:J

    return-void
.end method
