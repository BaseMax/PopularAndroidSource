.class public final Lc/e/a/a/j/d/o;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;
.implements Lc/e/a/a/j/D;
.implements Lc/e/a/a/e/i;
.implements Lc/e/a/a/j/B$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/d/o$b;,
        Lc/e/a/a/j/d/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a<",
        "Lc/e/a/a/j/b/d;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$e;",
        "Lc/e/a/a/j/D;",
        "Lc/e/a/a/e/i;",
        "Lc/e/a/a/j/B$b;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:Lcom/google/android/exoplayer2/Format;

.field public C:Lcom/google/android/exoplayer2/Format;

.field public D:Z

.field public E:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public F:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public G:[I

.field public H:I

.field public I:Z

.field public J:[Z

.field public K:[Z

.field public L:J

.field public M:J

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:J

.field public S:I

.field public final a:I

.field public final b:Lc/e/a/a/j/d/o$a;

.field public final c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

.field public final d:Lc/e/a/a/n/e;

.field public final e:Lcom/google/android/exoplayer2/Format;

.field public final f:Lc/e/a/a/n/v;

.field public final g:Lcom/google/android/exoplayer2/upstream/Loader;

.field public final h:Lc/e/a/a/j/w$a;

.field public final i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/j/d/j;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/a/j/d/j;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/lang/Runnable;

.field public final m:Ljava/lang/Runnable;

.field public final n:Landroid/os/Handler;

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/j/d/n;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field public q:[Lc/e/a/a/j/B;

.field public r:[I

.field public s:Z

.field public t:I

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(ILc/e/a/a/j/d/o$a;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Ljava/util/Map;Lc/e/a/a/n/e;JLcom/google/android/exoplayer2/Format;Lc/e/a/a/n/v;Lc/e/a/a/j/w$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/e/a/a/j/d/o$a;",
            "Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;",
            "Lc/e/a/a/n/e;",
            "J",
            "Lcom/google/android/exoplayer2/Format;",
            "Lc/e/a/a/n/v;",
            "Lc/e/a/a/j/w$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/j/d/o;->a:I

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/d/o;->b:Lc/e/a/a/j/d/o$a;

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 5
    iput-object p4, p0, Lc/e/a/a/j/d/o;->p:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lc/e/a/a/j/d/o;->d:Lc/e/a/a/n/e;

    .line 7
    iput-object p8, p0, Lc/e/a/a/j/d/o;->e:Lcom/google/android/exoplayer2/Format;

    .line 8
    iput-object p9, p0, Lc/e/a/a/j/d/o;->f:Lc/e/a/a/n/v;

    .line 9
    iput-object p10, p0, Lc/e/a/a/j/d/o;->h:Lc/e/a/a/j/w$a;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/e/a/a/j/d/o;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/d/o;->i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;

    const/4 p1, 0x0

    .line 12
    new-array p2, p1, [I

    iput-object p2, p0, Lc/e/a/a/j/d/o;->r:[I

    const/4 p2, -0x1

    .line 13
    iput p2, p0, Lc/e/a/a/j/d/o;->t:I

    .line 14
    iput p2, p0, Lc/e/a/a/j/d/o;->v:I

    .line 15
    new-array p2, p1, [Lc/e/a/a/j/B;

    iput-object p2, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    .line 16
    new-array p2, p1, [Z

    iput-object p2, p0, Lc/e/a/a/j/d/o;->K:[Z

    .line 17
    new-array p1, p1, [Z

    iput-object p1, p0, Lc/e/a/a/j/d/o;->J:[Z

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    .line 19
    iget-object p1, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/d/o;->k:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/d/o;->o:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Lc/e/a/a/j/d/c;

    invoke-direct {p1, p0}, Lc/e/a/a/j/d/c;-><init>(Lc/e/a/a/j/d/o;)V

    iput-object p1, p0, Lc/e/a/a/j/d/o;->l:Ljava/lang/Runnable;

    .line 22
    new-instance p1, Lc/e/a/a/j/d/b;

    invoke-direct {p1, p0}, Lc/e/a/a/j/d/b;-><init>(Lc/e/a/a/j/d/o;)V

    iput-object p1, p0, Lc/e/a/a/j/d/o;->m:Ljava/lang/Runnable;

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/d/o;->n:Landroid/os/Handler;

    .line 24
    iput-wide p6, p0, Lc/e/a/a/j/d/o;->L:J

    .line 25
    iput-wide p6, p0, Lc/e/a/a/j/d/o;->M:J

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;
    .locals 13

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 194
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->e:I

    move v7, p2

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    .line 195
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->v:I

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->v:I

    :goto_1
    move v10, p2

    .line 196
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-static {p2}, Lc/e/a/a/o/s;->f(Ljava/lang/String;)I

    move-result p2

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-static {v0, p2}, Lc/e/a/a/o/I;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-static {v5}, Lc/e/a/a/o/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 199
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    :cond_3
    move-object v4, p2

    .line 200
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/exoplayer2/Format;->g:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget v8, p0, Lcom/google/android/exoplayer2/Format;->n:I

    iget v9, p0, Lcom/google/android/exoplayer2/Format;->o:I

    iget v11, p0, Lcom/google/android/exoplayer2/Format;->c:I

    iget-object v12, p0, Lcom/google/android/exoplayer2/Format;->A:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;IIIIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lc/e/a/a/j/b/d;)Z
    .locals 0

    .line 201
    instance-of p0, p0, Lc/e/a/a/j/d/j;

    return p0
.end method

.method public static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 6

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 203
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 204
    invoke-static {v0}, Lc/e/a/a/o/s;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    .line 205
    invoke-static {v1}, Lc/e/a/a/o/s;->f(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 206
    :cond_1
    invoke-static {v0, v1}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    const-string v1, "application/cea-608"

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-708"

    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v3

    .line 209
    :cond_4
    :goto_1
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->B:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->B:I

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method public static b(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static b(II)Lc/e/a/a/e/f;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p0, Lc/e/a/a/e/f;

    invoke-direct {p0}, Lc/e/a/a/e/f;-><init>()V

    return-object p0
.end method


# virtual methods
.method public a(I)I
    .locals 4

    .line 9
    iget-object v0, p0, Lc/e/a/a/j/d/o;->G:[I

    aget v0, v0, p1

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lc/e/a/a/j/d/o;->F:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v3, p0, Lc/e/a/a/j/d/o;->E:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1

    .line 11
    :cond_1
    iget-object p1, p0, Lc/e/a/a/j/d/o;->J:[Z

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    .line 12
    aput-boolean v1, p1, v0

    return v0
.end method

.method public a(IJ)I
    .locals 4

    .line 93
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 94
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aget-object p1, v0, p1

    .line 95
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->P:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc/e/a/a/j/B;->f()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 96
    invoke-virtual {p1}, Lc/e/a/a/j/B;->a()I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1, p2, p3, v0, v0}, Lc/e/a/a/j/B;->a(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    return p1
.end method

.method public a(ILc/e/a/a/E;Lc/e/a/a/c/f;Z)I
    .locals 10

    .line 69
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 70
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object v2, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/d/j;

    invoke-virtual {p0, v2}, Lc/e/a/a/j/d/o;->a(Lc/e/a/a/j/d/j;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget-object v2, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-static {v2, v1, v0}, Lc/e/a/a/o/I;->a(Ljava/util/List;II)V

    .line 74
    iget-object v0, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/j/d/j;

    .line 75
    iget-object v9, v0, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    .line 76
    iget-object v2, p0, Lc/e/a/a/j/d/o;->C:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    iget-object v2, p0, Lc/e/a/a/j/d/o;->h:Lc/e/a/a/j/w$a;

    iget v3, p0, Lc/e/a/a/j/d/o;->a:I

    iget v5, v0, Lc/e/a/a/j/b/d;->d:I

    iget-object v6, v0, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    iget-wide v7, v0, Lc/e/a/a/j/b/d;->f:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lc/e/a/a/j/w$a;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 78
    :cond_2
    iput-object v9, p0, Lc/e/a/a/j/d/o;->C:Lcom/google/android/exoplayer2/Format;

    .line 79
    :cond_3
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lc/e/a/a/j/d/o;->P:Z

    iget-wide v7, p0, Lc/e/a/a/j/d/o;->L:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 80
    invoke-virtual/range {v2 .. v8}, Lc/e/a/a/j/B;->a(Lc/e/a/a/E;Lc/e/a/a/c/f;ZZJ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_8

    .line 81
    iget-object p4, p2, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;

    .line 82
    iget v0, p0, Lc/e/a/a/j/d/o;->x:I

    if-ne p1, v0, :cond_6

    .line 83
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lc/e/a/a/j/B;->l()I

    move-result p1

    .line 84
    :goto_1
    iget-object v0, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/j/d/j;

    iget v0, v0, Lc/e/a/a/j/d/j;->k:I

    if-eq v0, p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_4
    iget-object p1, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    iget-object p1, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/j/d/j;

    iget-object p1, p1, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lc/e/a/a/j/d/o;->B:Lcom/google/android/exoplayer2/Format;

    .line 88
    :goto_2
    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p4

    .line 89
    :cond_6
    iget-object p1, p4, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_7

    .line 90
    iget-object v0, p0, Lc/e/a/a/j/d/o;->p:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->c:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_7

    .line 91
    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p4

    .line 92
    :cond_7
    iput-object p4, p2, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;

    :cond_8
    return p3
.end method

.method public a(II)Lc/e/a/a/e/q;
    .locals 8

    .line 143
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    .line 144
    iget v6, p0, Lc/e/a/a/j/d/o;->t:I

    if-eq v6, v3, :cond_2

    .line 145
    iget-boolean v1, p0, Lc/e/a/a/j/d/o;->s:Z

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lc/e/a/a/j/d/o;->r:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_0

    aget-object p1, v0, v6

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p1, p2}, Lc/e/a/a/j/d/o;->b(II)Lc/e/a/a/e/f;

    move-result-object p1

    :goto_0
    return-object p1

    .line 148
    :cond_1
    iput-boolean v5, p0, Lc/e/a/a/j/d/o;->s:Z

    .line 149
    iget-object p2, p0, Lc/e/a/a/j/d/o;->r:[I

    aput p1, p2, v6

    .line 150
    aget-object p1, v0, v6

    return-object p1

    .line 151
    :cond_2
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->Q:Z

    if-eqz v0, :cond_a

    .line 152
    invoke-static {p1, p2}, Lc/e/a/a/j/d/o;->b(II)Lc/e/a/a/e/f;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v4, :cond_7

    .line 153
    iget v6, p0, Lc/e/a/a/j/d/o;->v:I

    if-eq v6, v3, :cond_6

    .line 154
    iget-boolean v1, p0, Lc/e/a/a/j/d/o;->u:Z

    if-eqz v1, :cond_5

    .line 155
    iget-object v1, p0, Lc/e/a/a/j/d/o;->r:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_4

    aget-object p1, v0, v6

    goto :goto_1

    .line 156
    :cond_4
    invoke-static {p1, p2}, Lc/e/a/a/j/d/o;->b(II)Lc/e/a/a/e/f;

    move-result-object p1

    :goto_1
    return-object p1

    .line 157
    :cond_5
    iput-boolean v5, p0, Lc/e/a/a/j/d/o;->u:Z

    .line 158
    iget-object p2, p0, Lc/e/a/a/j/d/o;->r:[I

    aput p1, p2, v6

    .line 159
    aget-object p1, v0, v6

    return-object p1

    .line 160
    :cond_6
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->Q:Z

    if-eqz v0, :cond_a

    .line 161
    invoke-static {p1, p2}, Lc/e/a/a/j/d/o;->b(II)Lc/e/a/a/e/f;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 162
    iget-object v3, p0, Lc/e/a/a/j/d/o;->r:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_8

    .line 163
    iget-object p1, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aget-object p1, p1, v0

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 164
    :cond_9
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->Q:Z

    if-eqz v0, :cond_a

    .line 165
    invoke-static {p1, p2}, Lc/e/a/a/j/d/o;->b(II)Lc/e/a/a/e/f;

    move-result-object p1

    return-object p1

    .line 166
    :cond_a
    new-instance v0, Lc/e/a/a/j/d/o$b;

    iget-object v3, p0, Lc/e/a/a/j/d/o;->d:Lc/e/a/a/n/e;

    invoke-direct {v0, v3}, Lc/e/a/a/j/d/o$b;-><init>(Lc/e/a/a/n/e;)V

    .line 167
    iget-wide v6, p0, Lc/e/a/a/j/d/o;->R:J

    invoke-virtual {v0, v6, v7}, Lc/e/a/a/j/B;->c(J)V

    .line 168
    iget v3, p0, Lc/e/a/a/j/d/o;->S:I

    invoke-virtual {v0, v3}, Lc/e/a/a/j/B;->e(I)V

    .line 169
    invoke-virtual {v0, p0}, Lc/e/a/a/j/B;->a(Lc/e/a/a/j/B$b;)V

    .line 170
    iget-object v3, p0, Lc/e/a/a/j/d/o;->r:[I

    add-int/lit8 v6, v1, 0x1

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lc/e/a/a/j/d/o;->r:[I

    .line 171
    iget-object v3, p0, Lc/e/a/a/j/d/o;->r:[I

    aput p1, v3, v1

    .line 172
    iget-object p1, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lc/e/a/a/j/B;

    iput-object p1, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    .line 173
    iget-object p1, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aput-object v0, p1, v1

    .line 174
    iget-object p1, p0, Lc/e/a/a/j/d/o;->K:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/d/o;->K:[Z

    .line 175
    iget-object p1, p0, Lc/e/a/a/j/d/o;->K:[Z

    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_c

    :cond_b
    const/4 v2, 0x1

    :cond_c
    aput-boolean v2, p1, v1

    .line 176
    iget-boolean p1, p0, Lc/e/a/a/j/d/o;->I:Z

    iget-object v2, p0, Lc/e/a/a/j/d/o;->K:[Z

    aget-boolean v2, v2, v1

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lc/e/a/a/j/d/o;->I:Z

    if-ne p2, v5, :cond_d

    .line 177
    iput-boolean v5, p0, Lc/e/a/a/j/d/o;->s:Z

    .line 178
    iput v1, p0, Lc/e/a/a/j/d/o;->t:I

    goto :goto_3

    :cond_d
    if-ne p2, v4, :cond_e

    .line 179
    iput-boolean v5, p0, Lc/e/a/a/j/d/o;->u:Z

    .line 180
    iput v1, p0, Lc/e/a/a/j/d/o;->v:I

    .line 181
    :cond_e
    :goto_3
    invoke-static {p2}, Lc/e/a/a/j/d/o;->b(I)I

    move-result p1

    iget v2, p0, Lc/e/a/a/j/d/o;->w:I

    invoke-static {v2}, Lc/e/a/a/j/d/o;->b(I)I

    move-result v2

    if-le p1, v2, :cond_f

    .line 182
    iput v1, p0, Lc/e/a/a/j/d/o;->x:I

    .line 183
    iput p2, p0, Lc/e/a/a/j/d/o;->w:I

    .line 184
    :cond_f
    iget-object p1, p0, Lc/e/a/a/j/d/o;->J:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/d/o;->J:[Z

    return-object v0
.end method

.method public a(Lc/e/a/a/j/b/d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 115
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->c()J

    move-result-wide v18

    .line 116
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/d/o;->a(Lc/e/a/a/j/b/d;)Z

    move-result v2

    .line 117
    iget-object v3, v0, Lc/e/a/a/j/d/o;->f:Lc/e/a/a/n/v;

    iget v4, v1, Lc/e/a/a/j/b/d;->b:I

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 118
    invoke-interface/range {v3 .. v8}, Lc/e/a/a/n/v;->b(IJLjava/io/IOException;I)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_0

    .line 119
    iget-object v8, v0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v8, v1, v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Lc/e/a/a/j/b/d;J)Z

    move-result v3

    move/from16 v22, v3

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v22, :cond_3

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-nez v2, :cond_2

    .line 120
    iget-object v2, v0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/d/j;

    if-ne v2, v1, :cond_1

    const/4 v7, 0x1

    .line 121
    :cond_1
    invoke-static {v7}, Lc/e/a/a/o/e;->b(Z)V

    .line 122
    iget-object v2, v0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    iget-wide v4, v0, Lc/e/a/a/j/d/o;->L:J

    iput-wide v4, v0, Lc/e/a/a/j/d/o;->M:J

    .line 124
    :cond_2
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->c:Lcom/google/android/exoplayer2/upstream/Loader$b;

    :goto_1
    move-object/from16 v23, v2

    goto :goto_2

    .line 125
    :cond_3
    iget-object v8, v0, Lc/e/a/a/j/d/o;->f:Lc/e/a/a/n/v;

    iget v9, v1, Lc/e/a/a/j/b/d;->b:I

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    .line 126
    invoke-interface/range {v8 .. v13}, Lc/e/a/a/n/v;->a(IJLjava/io/IOException;I)J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-eqz v2, :cond_4

    .line 127
    invoke-static {v7, v8, v9}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v2

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$b;

    goto :goto_1

    .line 128
    :goto_2
    iget-object v2, v0, Lc/e/a/a/j/d/o;->h:Lc/e/a/a/j/w$a;

    iget-object v4, v1, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    .line 129
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->f()Landroid/net/Uri;

    move-result-object v5

    .line 130
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->e()Ljava/util/Map;

    move-result-object v6

    iget v7, v1, Lc/e/a/a/j/b/d;->b:I

    iget v8, v0, Lc/e/a/a/j/d/o;->a:I

    iget-object v9, v1, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    iget v10, v1, Lc/e/a/a/j/b/d;->d:I

    iget-object v11, v1, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    iget-wide v12, v1, Lc/e/a/a/j/b/d;->f:J

    iget-wide v14, v1, Lc/e/a/a/j/b/d;->g:J

    .line 131
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a()Z

    move-result v1

    xor-int/lit8 v21, v1, 0x1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move v8, v10

    move-object v9, v11

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    .line 132
    invoke-virtual/range {v1 .. v21}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v22, :cond_6

    .line 133
    iget-boolean v1, v0, Lc/e/a/a/j/d/o;->z:Z

    if-nez v1, :cond_5

    .line 134
    iget-wide v1, v0, Lc/e/a/a/j/d/o;->L:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/j/d/o;->b(J)Z

    goto :goto_3

    .line 135
    :cond_5
    iget-object v1, v0, Lc/e/a/a/j/d/o;->b:Lc/e/a/a/j/d/o$a;

    invoke-interface {v1, v0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    :cond_6
    :goto_3
    return-object v23
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 0

    .line 3
    check-cast p1, Lc/e/a/a/j/b/d;

    invoke-virtual/range {p0 .. p7}, Lc/e/a/a/j/d/o;->a(Lc/e/a/a/j/b/d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lc/e/a/a/j/d/o;->Q:Z

    .line 186
    iget-object v0, p0, Lc/e/a/a/j/d/o;->n:Landroid/os/Handler;

    iget-object v1, p0, Lc/e/a/a/j/d/o;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(IZZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 136
    iput-boolean v0, p0, Lc/e/a/a/j/d/o;->s:Z

    .line 137
    iput-boolean v0, p0, Lc/e/a/a/j/d/o;->u:Z

    .line 138
    :cond_0
    iput p1, p0, Lc/e/a/a/j/d/o;->S:I

    .line 139
    iget-object p3, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 140
    invoke-virtual {v3, p1}, Lc/e/a/a/j/B;->e(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 141
    iget-object p1, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    .line 142
    invoke-virtual {p3}, Lc/e/a/a/j/B;->o()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 64
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 66
    iget-object v2, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aget-object v2, v2, v1

    iget-object v3, p0, Lc/e/a/a/j/d/o;->J:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lc/e/a/a/j/B;->b(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Lc/e/a/a/e/o;)V
    .locals 0

    return-void
.end method

.method public a(Lc/e/a/a/j/b/d;JJ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 98
    iget-object v2, v0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Lc/e/a/a/j/b/d;)V

    .line 99
    iget-object v2, v0, Lc/e/a/a/j/d/o;->h:Lc/e/a/a/j/w$a;

    iget-object v3, v1, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->f()Landroid/net/Uri;

    move-result-object v4

    .line 101
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->e()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lc/e/a/a/j/b/d;->b:I

    iget v7, v0, Lc/e/a/a/j/d/o;->a:I

    iget-object v8, v1, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    iget v9, v1, Lc/e/a/a/j/b/d;->d:I

    iget-object v10, v1, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    iget-wide v11, v1, Lc/e/a/a/j/b/d;->f:J

    iget-wide v13, v1, Lc/e/a/a/j/b/d;->g:J

    .line 102
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->c()J

    move-result-wide v19

    .line 103
    invoke-virtual/range {v2 .. v20}, Lc/e/a/a/j/w$a;->b(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 104
    iget-boolean v1, v0, Lc/e/a/a/j/d/o;->z:Z

    if-nez v1, :cond_0

    .line 105
    iget-wide v1, v0, Lc/e/a/a/j/d/o;->L:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/j/d/o;->b(J)Z

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, v0, Lc/e/a/a/j/d/o;->b:Lc/e/a/a/j/d/o$a;

    invoke-interface {v1, v0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    :goto_0
    return-void
.end method

.method public a(Lc/e/a/a/j/b/d;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 107
    iget-object v2, v0, Lc/e/a/a/j/d/o;->h:Lc/e/a/a/j/w$a;

    iget-object v3, v1, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->f()Landroid/net/Uri;

    move-result-object v4

    .line 109
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->e()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lc/e/a/a/j/b/d;->b:I

    iget v7, v0, Lc/e/a/a/j/d/o;->a:I

    iget-object v8, v1, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    iget v9, v1, Lc/e/a/a/j/b/d;->d:I

    iget-object v10, v1, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    iget-wide v11, v1, Lc/e/a/a/j/b/d;->f:J

    iget-wide v13, v1, Lc/e/a/a/j/b/d;->g:J

    .line 110
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->c()J

    move-result-wide v19

    .line 111
    invoke-virtual/range {v2 .. v20}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_0

    .line 112
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/d/o;->q()V

    .line 113
    iget v1, v0, Lc/e/a/a/j/d/o;->A:I

    if-lez v1, :cond_0

    .line 114
    iget-object v1, v0, Lc/e/a/a/j/d/o;->b:Lc/e/a/a/j/d/o$a;

    invoke-interface {v1, v0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lc/e/a/a/j/d/o;->n:Landroid/os/Handler;

    iget-object v0, p0, Lc/e/a/a/j/d/o;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/e/a/a/j/d/o;->z:Z

    .line 5
    iput-object p1, p0, Lc/e/a/a/j/d/o;->E:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 6
    iput-object p3, p0, Lc/e/a/a/j/d/o;->F:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 7
    iput p2, p0, Lc/e/a/a/j/d/o;->H:I

    .line 8
    iget-object p1, p0, Lc/e/a/a/j/d/o;->n:Landroid/os/Handler;

    iget-object p2, p0, Lc/e/a/a/j/d/o;->b:Lc/e/a/a/j/d/o$a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lc/e/a/a/j/d/a;

    invoke-direct {p3, p2}, Lc/e/a/a/j/d/a;-><init>(Lc/e/a/a/j/d/o$a;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    .line 2
    check-cast p1, Lc/e/a/a/j/b/d;

    invoke-virtual/range {p0 .. p5}, Lc/e/a/a/j/d/o;->a(Lc/e/a/a/j/b/d;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/j/b/d;

    invoke-virtual/range {p0 .. p6}, Lc/e/a/a/j/d/o;->a(Lc/e/a/a/j/b/d;JJZ)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Z)V

    return-void
.end method

.method public final a([Lc/e/a/a/j/C;)V
    .locals 4

    .line 188
    iget-object v0, p0, Lc/e/a/a/j/d/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 190
    iget-object v3, p0, Lc/e/a/a/j/d/o;->o:Ljava/util/ArrayList;

    check-cast v2, Lc/e/a/a/j/d/n;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/net/Uri;J)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Landroid/net/Uri;J)Z

    move-result p1

    return p1
.end method

.method public final a(Lc/e/a/a/j/d/j;)Z
    .locals 4

    .line 191
    iget p1, p1, Lc/e/a/a/j/d/j;->k:I

    .line 192
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 193
    iget-object v3, p0, Lc/e/a/a/j/d/o;->J:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lc/e/a/a/j/B;->l()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;[ZJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    .line 13
    iget-boolean v3, v0, Lc/e/a/a/j/d/o;->z:Z

    invoke-static {v3}, Lc/e/a/a/o/e;->b(Z)V

    .line 14
    iget v3, v0, Lc/e/a/a/j/d/o;->A:I

    const/4 v14, 0x0

    const/4 v4, 0x0

    .line 15
    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-ge v4, v5, :cond_2

    .line 16
    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 17
    :cond_0
    iget v5, v0, Lc/e/a/a/j/d/o;->A:I

    sub-int/2addr v5, v15

    iput v5, v0, Lc/e/a/a/j/d/o;->A:I

    .line 18
    aget-object v5, v2, v4

    check-cast v5, Lc/e/a/a/j/d/n;

    invoke-virtual {v5}, Lc/e/a/a/j/d/n;->e()V

    .line 19
    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez p7, :cond_5

    .line 20
    iget-boolean v4, v0, Lc/e/a/a/j/d/o;->O:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v3, v0, Lc/e/a/a/j/d/o;->L:J

    cmp-long v5, v12, v3

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    .line 21
    :goto_2
    iget-object v4, v0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->b()Lc/e/a/a/l/n;

    move-result-object v4

    move/from16 v16, v3

    move-object v11, v4

    const/4 v3, 0x0

    .line 22
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_a

    .line 23
    aget-object v5, v2, v3

    if-nez v5, :cond_9

    aget-object v5, v1, v3

    if-eqz v5, :cond_9

    .line 24
    iget v5, v0, Lc/e/a/a/j/d/o;->A:I

    add-int/2addr v5, v15

    iput v5, v0, Lc/e/a/a/j/d/o;->A:I

    .line 25
    aget-object v5, v1, v3

    .line 26
    iget-object v7, v0, Lc/e/a/a/j/d/o;->E:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v5}, Lc/e/a/a/l/n;->a()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v7

    .line 27
    iget v8, v0, Lc/e/a/a/j/d/o;->H:I

    if-ne v7, v8, :cond_6

    .line 28
    iget-object v8, v0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Lc/e/a/a/l/n;)V

    move-object v11, v5

    .line 29
    :cond_6
    new-instance v5, Lc/e/a/a/j/d/n;

    invoke-direct {v5, v0, v7}, Lc/e/a/a/j/d/n;-><init>(Lc/e/a/a/j/d/o;I)V

    aput-object v5, v2, v3

    .line 30
    aput-boolean v15, p4, v3

    .line 31
    iget-object v5, v0, Lc/e/a/a/j/d/o;->G:[I

    if-eqz v5, :cond_7

    .line 32
    aget-object v5, v2, v3

    check-cast v5, Lc/e/a/a/j/d/n;

    invoke-virtual {v5}, Lc/e/a/a/j/d/n;->b()V

    .line 33
    :cond_7
    iget-boolean v5, v0, Lc/e/a/a/j/d/o;->y:Z

    if-eqz v5, :cond_9

    if-nez v16, :cond_9

    .line 34
    iget-object v5, v0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    iget-object v8, v0, Lc/e/a/a/j/d/o;->G:[I

    aget v7, v8, v7

    aget-object v5, v5, v7

    .line 35
    invoke-virtual {v5}, Lc/e/a/a/j/B;->n()V

    .line 36
    invoke-virtual {v5, v12, v13, v15, v15}, Lc/e/a/a/j/B;->a(JZZ)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 37
    invoke-virtual {v5}, Lc/e/a/a/j/B;->g()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v16, 0x1

    goto :goto_4

    :cond_8
    const/16 v16, 0x0

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 38
    :cond_a
    iget v1, v0, Lc/e/a/a/j/d/o;->A:I

    if-nez v1, :cond_d

    .line 39
    iget-object v1, v0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->d()V

    .line 40
    iput-object v6, v0, Lc/e/a/a/j/d/o;->C:Lcom/google/android/exoplayer2/Format;

    .line 41
    iget-object v1, v0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 42
    iget-object v1, v0, Lc/e/a/a/j/d/o;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 43
    iget-boolean v1, v0, Lc/e/a/a/j/d/o;->y:Z

    if-eqz v1, :cond_b

    .line 44
    iget-object v1, v0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v3, v1

    :goto_5
    if-ge v14, v3, :cond_b

    aget-object v4, v1, v14

    .line 45
    invoke-virtual {v4}, Lc/e/a/a/j/B;->b()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 46
    :cond_b
    iget-object v1, v0, Lc/e/a/a/j/d/o;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()V

    goto/16 :goto_a

    .line 47
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/d/o;->q()V

    goto/16 :goto_a

    .line 48
    :cond_d
    iget-object v1, v0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 49
    invoke-static {v11, v4}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 50
    iget-boolean v1, v0, Lc/e/a/a/j/d/o;->O:Z

    if-nez v1, :cond_10

    const-wide/16 v3, 0x0

    cmp-long v1, v12, v3

    if-gez v1, :cond_e

    neg-long v3, v12

    :cond_e
    move-wide v6, v3

    .line 51
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/d/o;->j()Lc/e/a/a/j/d/j;

    move-result-object v1

    .line 52
    iget-object v3, v0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 53
    invoke-virtual {v3, v1, v12, v13}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Lc/e/a/a/j/d/j;J)[Lc/e/a/a/j/b/n;

    move-result-object v17

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    iget-object v10, v0, Lc/e/a/a/j/d/o;->k:Ljava/util/List;

    move-object v3, v11

    move-wide/from16 v4, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-interface/range {v3 .. v11}, Lc/e/a/a/l/n;->a(JJJLjava/util/List;[Lc/e/a/a/j/b/n;)V

    .line 55
    iget-object v3, v0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    iget-object v1, v1, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 56
    invoke-interface/range {v18 .. v18}, Lc/e/a/a/l/n;->d()I

    move-result v3

    if-eq v3, v1, :cond_f

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_11

    .line 57
    iput-boolean v15, v0, Lc/e/a/a/j/d/o;->N:Z

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_8

    :cond_11
    move/from16 v1, p7

    :goto_8
    if-eqz v16, :cond_13

    .line 58
    invoke-virtual {v0, v12, v13, v1}, Lc/e/a/a/j/d/o;->b(JZ)Z

    .line 59
    :goto_9
    array-length v1, v2

    if-ge v14, v1, :cond_13

    .line 60
    aget-object v1, v2, v14

    if-eqz v1, :cond_12

    .line 61
    aput-boolean v15, p4, v14

    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 62
    :cond_13
    :goto_a
    invoke-virtual {v0, v2}, Lc/e/a/a/j/d/o;->a([Lc/e/a/a/j/C;)V

    .line 63
    iput-boolean v15, v0, Lc/e/a/a/j/d/o;->O:Z

    return v16
.end method

.method public b()J
    .locals 2

    .line 11
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-wide v0, p0, Lc/e/a/a/j/d/o;->M:J

    return-wide v0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->P:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->j()Lc/e/a/a/j/d/j;

    move-result-object v0

    iget-wide v0, v0, Lc/e/a/a/j/b/d;->g:J

    :goto_0
    return-wide v0
.end method

.method public b(J)Z
    .locals 18

    move-object/from16 v0, p0

    .line 14
    iget-boolean v1, v0, Lc/e/a/a/j/d/o;->P:Z

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, v0, Lc/e/a/a/j/d/o;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/d/o;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 17
    iget-wide v3, v0, Lc/e/a/a/j/d/o;->M:J

    :goto_0
    move-object v10, v1

    move-wide v8, v3

    goto :goto_1

    .line 18
    :cond_1
    iget-object v1, v0, Lc/e/a/a/j/d/o;->k:Ljava/util/List;

    .line 19
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/d/o;->j()Lc/e/a/a/j/d/j;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lc/e/a/a/j/d/j;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v3, v3, Lc/e/a/a/j/b/d;->g:J

    goto :goto_0

    :cond_2
    iget-wide v4, v0, Lc/e/a/a/j/d/o;->L:J

    iget-wide v6, v3, Lc/e/a/a/j/b/d;->f:J

    .line 21
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 22
    :goto_1
    iget-object v5, v0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v11, v0, Lc/e/a/a/j/d/o;->i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;

    move-wide/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(JJLjava/util/List;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;)V

    .line 23
    iget-object v1, v0, Lc/e/a/a/j/d/o;->i:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;->b:Z

    .line 24
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;->a:Lc/e/a/a/j/b/d;

    .line 25
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;->c:Landroid/net/Uri;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$b;->a()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x1

    if-eqz v3, :cond_3

    .line 27
    iput-wide v6, v0, Lc/e/a/a/j/d/o;->M:J

    .line 28
    iput-boolean v1, v0, Lc/e/a/a/j/d/o;->P:Z

    return v1

    :cond_3
    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    .line 29
    iget-object v1, v0, Lc/e/a/a/j/d/o;->b:Lc/e/a/a/j/d/o$a;

    invoke-interface {v1, v5}, Lc/e/a/a/j/d/o$a;->a(Landroid/net/Uri;)V

    :cond_4
    return v2

    .line 30
    :cond_5
    invoke-static {v4}, Lc/e/a/a/j/d/o;->a(Lc/e/a/a/j/b/d;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 31
    iput-wide v6, v0, Lc/e/a/a/j/d/o;->M:J

    .line 32
    move-object v2, v4

    check-cast v2, Lc/e/a/a/j/d/j;

    .line 33
    invoke-virtual {v2, v0}, Lc/e/a/a/j/d/j;->a(Lc/e/a/a/j/d/o;)V

    .line 34
    iget-object v3, v0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v2, v2, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    iput-object v2, v0, Lc/e/a/a/j/d/o;->B:Lcom/google/android/exoplayer2/Format;

    .line 36
    :cond_6
    iget-object v2, v0, Lc/e/a/a/j/d/o;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v3, v0, Lc/e/a/a/j/d/o;->f:Lc/e/a/a/n/v;

    iget v5, v4, Lc/e/a/a/j/b/d;->b:I

    .line 37
    invoke-interface {v3, v5}, Lc/e/a/a/n/v;->a(I)I

    move-result v3

    .line 38
    invoke-virtual {v2, v4, v0, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v16

    .line 39
    iget-object v5, v0, Lc/e/a/a/j/d/o;->h:Lc/e/a/a/j/w$a;

    iget-object v6, v4, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    iget v7, v4, Lc/e/a/a/j/b/d;->b:I

    iget v8, v0, Lc/e/a/a/j/d/o;->a:I

    iget-object v9, v4, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    iget v10, v4, Lc/e/a/a/j/b/d;->d:I

    iget-object v11, v4, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    iget-wide v12, v4, Lc/e/a/a/j/b/d;->f:J

    iget-wide v14, v4, Lc/e/a/a/j/b/d;->g:J

    invoke-virtual/range {v5 .. v17}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return v1

    :cond_7
    :goto_2
    return v2
.end method

.method public b(JZ)Z
    .locals 3

    .line 1
    iput-wide p1, p0, Lc/e/a/a/j/d/o;->L:J

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-wide p1, p0, Lc/e/a/a/j/d/o;->M:J

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->y:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lc/e/a/a/j/d/o;->d(J)Z

    move-result p3

    if-eqz p3, :cond_1

    return v2

    .line 5
    :cond_1
    iput-wide p1, p0, Lc/e/a/a/j/d/o;->M:J

    .line 6
    iput-boolean v2, p0, Lc/e/a/a/j/d/o;->P:Z

    .line 7
    iget-object p1, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object p1, p0, Lc/e/a/a/j/d/o;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lc/e/a/a/j/d/o;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->q()V

    :goto_0
    return v1
.end method

.method public final c()V
    .locals 14

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v0, v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, -0x1

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_5

    .line 3
    iget-object v9, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lc/e/a/a/j/B;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 4
    invoke-static {v9}, Lc/e/a/a/o/s;->l(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v9}, Lc/e/a/a/o/s;->j(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v9}, Lc/e/a/a/o/s;->k(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto :goto_1

    :cond_2
    const/4 v7, 0x6

    .line 7
    :goto_1
    invoke-static {v7}, Lc/e/a/a/j/d/o;->b(I)I

    move-result v8

    invoke-static {v5}, Lc/e/a/a/j/d/o;->b(I)I

    move-result v9

    if-le v8, v9, :cond_3

    move v6, v4

    move v5, v7

    goto :goto_2

    :cond_3
    if-ne v7, v5, :cond_4

    if-eq v6, v2, :cond_4

    const/4 v6, -0x1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_5
    iget-object v1, p0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 9
    iget v4, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    .line 10
    iput v2, p0, Lc/e/a/a/j/d/o;->H:I

    .line 11
    new-array v2, v0, [I

    iput-object v2, p0, Lc/e/a/a/j/d/o;->G:[I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 12
    iget-object v9, p0, Lc/e/a/a/j/d/o;->G:[I

    aput v2, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 13
    :cond_6
    new-array v2, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_b

    .line 14
    iget-object v10, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lc/e/a/a/j/B;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    if-ne v9, v6, :cond_9

    .line 15
    new-array v11, v4, [Lcom/google/android/exoplayer2/Format;

    if-ne v4, v8, :cond_7

    .line 16
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    aput-object v10, v11, v3

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v4, :cond_8

    .line 17
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    invoke-static {v13, v10, v8}, Lc/e/a/a/j/d/o;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 18
    :cond_8
    :goto_6
    new-instance v10, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v10, v2, v9

    .line 19
    iput v9, p0, Lc/e/a/a/j/d/o;->H:I

    goto :goto_8

    :cond_9
    if-ne v5, v7, :cond_a

    .line 20
    iget-object v11, v10, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 21
    invoke-static {v11}, Lc/e/a/a/o/s;->j(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lc/e/a/a/j/d/o;->e:Lcom/google/android/exoplayer2/Format;

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 22
    :goto_7
    new-instance v12, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v13, v8, [Lcom/google/android/exoplayer2/Format;

    invoke-static {v11, v10, v3}, Lc/e/a/a/j/d/o;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    aput-object v10, v13, v3

    invoke-direct {v12, v13}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v12, v2, v9

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 23
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lc/e/a/a/j/d/o;->E:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 24
    iget-object v0, p0, Lc/e/a/a/j/d/o;->F:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-static {v3}, Lc/e/a/a/o/e;->b(Z)V

    .line 25
    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v0, p0, Lc/e/a/a/j/d/o;->F:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-void
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->P:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lc/e/a/a/j/B;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->n()V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/o;->G:[I

    aget p1, v0, p1

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/d/o;->J:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 4
    iget-object v0, p0, Lc/e/a/a/j/d/o;->J:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public final d(J)Z
    .locals 6

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 6
    iget-object v4, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    aget-object v4, v4, v2

    .line 7
    invoke-virtual {v4}, Lc/e/a/a/j/B;->n()V

    .line 8
    invoke-virtual {v4, p1, p2, v3, v1}, Lc/e/a/a/j/B;->a(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 9
    iget-object v3, p0, Lc/e/a/a/j/d/o;->K:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lc/e/a/a/j/d/o;->I:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public e(J)V
    .locals 4

    .line 1
    iput-wide p1, p0, Lc/e/a/a/j/d/o;->R:J

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p1, p2}, Lc/e/a/a/j/B;->c(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/o;->E:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public g()J
    .locals 7

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->P:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lc/e/a/a/j/d/o;->M:J

    return-wide v0

    .line 4
    :cond_1
    iget-wide v0, p0, Lc/e/a/a/j/d/o;->L:J

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->j()Lc/e/a/a/j/d/j;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lc/e/a/a/j/d/j;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/d/j;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 8
    iget-wide v2, v2, Lc/e/a/a/j/b/d;->g:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 9
    :cond_4
    iget-boolean v2, p0, Lc/e/a/a/j/d/o;->y:Z

    if-eqz v2, :cond_5

    .line 10
    iget-object v2, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 11
    invoke-virtual {v5}, Lc/e/a/a/j/B;->f()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->q()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->z:Z

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lc/e/a/a/j/d/o;->L:J

    invoke-virtual {p0, v0, v1}, Lc/e/a/a/j/d/o;->b(J)Z

    :cond_0
    return-void
.end method

.method public final j()Lc/e/a/a/j/d/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/j/d/j;

    return-object v0
.end method

.method public final k()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/d/o;->M:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/o;->E:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:I

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lc/e/a/a/j/d/o;->G:[I

    .line 3
    iget-object v1, p0, Lc/e/a/a/j/d/o;->G:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    .line 4
    :goto_1
    iget-object v4, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 5
    aget-object v4, v4, v3

    .line 6
    invoke-virtual {v4}, Lc/e/a/a/j/B;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v5, p0, Lc/e/a/a/j/d/o;->E:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-static {v4, v5}, Lc/e/a/a/j/d/o;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, p0, Lc/e/a/a/j/d/o;->G:[I

    aput v3, v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lc/e/a/a/j/d/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/d/n;

    .line 9
    invoke-virtual {v1}, Lc/e/a/a/j/d/n;->b()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->D:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/e/a/a/j/d/o;->G:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->y:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lc/e/a/a/j/B;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lc/e/a/a/j/d/o;->E:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->l()V

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->c()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lc/e/a/a/j/d/o;->z:Z

    .line 8
    iget-object v0, p0, Lc/e/a/a/j/d/o;->b:Lc/e/a/a/j/d/o$a;

    invoke-interface {v0}, Lc/e/a/a/j/d/o$a;->a()V

    :cond_4
    :goto_1
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/o;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/o;->c:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->c()V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/j/d/o;->y:Z

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/j/d/o;->m()V

    return-void
.end method

.method public p()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/d/o;->z:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lc/e/a/a/j/B;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/d/o;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/d/o;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lc/e/a/a/j/d/o;->D:Z

    .line 7
    iget-object v0, p0, Lc/e/a/a/j/d/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final q()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/o;->q:[Lc/e/a/a/j/B;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    iget-boolean v5, p0, Lc/e/a/a/j/d/o;->N:Z

    invoke-virtual {v4, v5}, Lc/e/a/a/j/B;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v2, p0, Lc/e/a/a/j/d/o;->N:Z

    return-void
.end method
