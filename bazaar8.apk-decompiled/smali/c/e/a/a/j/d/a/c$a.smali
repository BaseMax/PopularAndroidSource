.class public final Lc/e/a/a/j/d/a/c$a;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/d/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a<",
        "Lc/e/a/a/n/y<",
        "Lc/e/a/a/j/d/a/g;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lcom/google/android/exoplayer2/upstream/Loader;

.field public final c:Lc/e/a/a/n/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/d/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lc/e/a/a/j/d/a/f;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public j:Ljava/io/IOException;

.field public final synthetic k:Lc/e/a/a/j/d/a/c;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/d/a/c;Landroid/net/Uri;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/e/a/a/j/d/a/c$a;->a:Landroid/net/Uri;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/e/a/a/j/d/a/c$a;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 4
    new-instance v0, Lc/e/a/a/n/y;

    .line 5
    invoke-static {p1}, Lc/e/a/a/j/d/a/c;->d(Lc/e/a/a/j/d/a/c;)Lc/e/a/a/j/d/g;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lc/e/a/a/j/d/g;->a(I)Lc/e/a/a/n/j;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lc/e/a/a/j/d/a/c;->e(Lc/e/a/a/j/d/a/c;)Lc/e/a/a/n/y$a;

    move-result-object p1

    invoke-direct {v0, v1, p2, v2, p1}, Lc/e/a/a/n/y;-><init>(Lc/e/a/a/n/j;Landroid/net/Uri;ILc/e/a/a/n/y$a;)V

    iput-object v0, p0, Lc/e/a/a/j/d/a/c$a;->c:Lc/e/a/a/n/y;

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/j/d/a/c$a;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lc/e/a/a/j/d/a/c$a;->h:J

    return-wide v0
.end method

.method public static synthetic a(Lc/e/a/a/j/d/a/c$a;Lc/e/a/a/j/d/a/f;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/j/d/a/c$a;->a(Lc/e/a/a/j/d/a/f;J)V

    return-void
.end method

.method public static synthetic b(Lc/e/a/a/j/d/a/c$a;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/d/a/c$a;->a:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public a()Lc/e/a/a/j/d/a/f;
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/a/a/j/d/a/c$a;->d:Lc/e/a/a/j/d/a/f;

    return-object v0
.end method

.method public a(Lc/e/a/a/n/y;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/d/a/g;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 21
    iget-object v2, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    .line 22
    invoke-static {v2}, Lc/e/a/a/j/d/a/c;->h(Lc/e/a/a/j/d/a/c;)Lc/e/a/a/n/v;

    move-result-object v3

    iget v4, v1, Lc/e/a/a/n/y;->b:I

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v3 .. v8}, Lc/e/a/a/n/v;->b(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 23
    :goto_0
    iget-object v9, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    iget-object v10, v0, Lc/e/a/a/j/d/a/c$a;->a:Landroid/net/Uri;

    .line 24
    invoke-static {v9, v10, v2, v3}, Lc/e/a/a/j/d/a/c;->a(Lc/e/a/a/j/d/a/c;Landroid/net/Uri;J)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v8, :cond_3

    .line 25
    invoke-virtual {v0, v2, v3}, Lc/e/a/a/j/d/a/c$a;->a(J)Z

    move-result v2

    or-int/2addr v9, v2

    :cond_3
    if-eqz v9, :cond_5

    .line 26
    iget-object v2, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    .line 27
    invoke-static {v2}, Lc/e/a/a/j/d/a/c;->h(Lc/e/a/a/j/d/a/c;)Lc/e/a/a/n/v;

    move-result-object v8

    iget v9, v1, Lc/e/a/a/n/y;->b:I

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v8 .. v13}, Lc/e/a/a/n/v;->a(IJLjava/io/IOException;I)J

    move-result-wide v2

    cmp-long v8, v2, v4

    if-eqz v8, :cond_4

    .line 28
    invoke-static {v7, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v2

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$b;

    goto :goto_3

    .line 29
    :cond_5
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->c:Lcom/google/android/exoplayer2/upstream/Loader$b;

    .line 30
    :goto_3
    iget-object v3, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    invoke-static {v3}, Lc/e/a/a/j/d/a/c;->g(Lc/e/a/a/j/d/a/c;)Lc/e/a/a/j/w$a;

    move-result-object v7

    iget-object v8, v1, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 31
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v9

    .line 32
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x4

    .line 33
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v16

    .line 34
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a()Z

    move-result v1

    xor-int/lit8 v19, v1, 0x1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    .line 35
    invoke-virtual/range {v7 .. v19}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 0

    .line 5
    check-cast p1, Lc/e/a/a/n/y;

    invoke-virtual/range {p0 .. p7}, Lc/e/a/a/j/d/a/c$a;->a(Lc/e/a/a/n/y;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/a/a/j/d/a/f;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    iget-object v2, v0, Lc/e/a/a/j/d/a/c$a;->d:Lc/e/a/a/j/d/a/f;

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 38
    iput-wide v3, v0, Lc/e/a/a/j/d/a/c$a;->e:J

    .line 39
    iget-object v5, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    invoke-static {v5, v2, v1}, Lc/e/a/a/j/d/a/c;->a(Lc/e/a/a/j/d/a/c;Lc/e/a/a/j/d/a/f;Lc/e/a/a/j/d/a/f;)Lc/e/a/a/j/d/a/f;

    move-result-object v5

    iput-object v5, v0, Lc/e/a/a/j/d/a/c$a;->d:Lc/e/a/a/j/d/a/f;

    .line 40
    iget-object v5, v0, Lc/e/a/a/j/d/a/c$a;->d:Lc/e/a/a/j/d/a/f;

    if-eq v5, v2, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Lc/e/a/a/j/d/a/c$a;->j:Ljava/io/IOException;

    .line 42
    iput-wide v3, v0, Lc/e/a/a/j/d/a/c$a;->f:J

    .line 43
    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    iget-object v6, v0, Lc/e/a/a/j/d/a/c$a;->a:Landroid/net/Uri;

    invoke-static {v1, v6, v5}, Lc/e/a/a/j/d/a/c;->a(Lc/e/a/a/j/d/a/c;Landroid/net/Uri;Lc/e/a/a/j/d/a/f;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-boolean v5, v5, Lc/e/a/a/j/d/a/f;->l:Z

    if-nez v5, :cond_2

    .line 45
    iget-wide v5, v1, Lc/e/a/a/j/d/a/f;->i:J

    iget-object v1, v1, Lc/e/a/a/j/d/a/f;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v7, v1

    add-long/2addr v5, v7

    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->d:Lc/e/a/a/j/d/a/f;

    iget-wide v7, v1, Lc/e/a/a/j/d/a/f;->i:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v5, v7

    if-gez v11, :cond_1

    .line 46
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;

    iget-object v5, v0, Lc/e/a/a/j/d/a/c$a;->a:Landroid/net/Uri;

    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;-><init>(Landroid/net/Uri;)V

    iput-object v1, v0, Lc/e/a/a/j/d/a/c$a;->j:Ljava/io/IOException;

    .line 47
    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    iget-object v5, v0, Lc/e/a/a/j/d/a/c$a;->a:Landroid/net/Uri;

    invoke-static {v1, v5, v9, v10}, Lc/e/a/a/j/d/a/c;->a(Lc/e/a/a/j/d/a/c;Landroid/net/Uri;J)Z

    goto :goto_0

    .line 48
    :cond_1
    iget-wide v5, v0, Lc/e/a/a/j/d/a/c$a;->f:J

    sub-long v5, v3, v5

    long-to-double v5, v5

    iget-wide v7, v1, Lc/e/a/a/j/d/a/f;->k:J

    .line 49
    invoke-static {v7, v8}, Lc/e/a/a/q;->b(J)J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    .line 50
    invoke-static {v1}, Lc/e/a/a/j/d/a/c;->a(Lc/e/a/a/j/d/a/c;)D

    move-result-wide v11

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    cmpl-double v1, v5, v7

    if-lez v1, :cond_2

    .line 51
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;

    iget-object v5, v0, Lc/e/a/a/j/d/a/c$a;->a:Landroid/net/Uri;

    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;-><init>(Landroid/net/Uri;)V

    iput-object v1, v0, Lc/e/a/a/j/d/a/c$a;->j:Ljava/io/IOException;

    .line 52
    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    .line 53
    invoke-static {v1}, Lc/e/a/a/j/d/a/c;->h(Lc/e/a/a/j/d/a/c;)Lc/e/a/a/n/v;

    move-result-object v11

    const/4 v12, 0x4

    iget-object v15, v0, Lc/e/a/a/j/d/a/c$a;->j:Ljava/io/IOException;

    const/16 v16, 0x1

    move-wide/from16 v13, p2

    invoke-interface/range {v11 .. v16}, Lc/e/a/a/n/v;->b(IJLjava/io/IOException;I)J

    move-result-wide v5

    .line 54
    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    iget-object v7, v0, Lc/e/a/a/j/d/a/c$a;->a:Landroid/net/Uri;

    invoke-static {v1, v7, v5, v6}, Lc/e/a/a/j/d/a/c;->a(Lc/e/a/a/j/d/a/c;Landroid/net/Uri;J)Z

    cmp-long v1, v5, v9

    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {v0, v5, v6}, Lc/e/a/a/j/d/a/c$a;->a(J)Z

    .line 56
    :cond_2
    :goto_0
    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->d:Lc/e/a/a/j/d/a/f;

    if-eq v1, v2, :cond_3

    iget-wide v1, v1, Lc/e/a/a/j/d/a/f;->k:J

    goto :goto_1

    :cond_3
    iget-wide v1, v1, Lc/e/a/a/j/d/a/f;->k:J

    const-wide/16 v5, 0x2

    div-long/2addr v1, v5

    .line 57
    :goto_1
    invoke-static {v1, v2}, Lc/e/a/a/q;->b(J)J

    move-result-wide v1

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/e/a/a/j/d/a/c$a;->g:J

    .line 58
    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->a:Landroid/net/Uri;

    iget-object v2, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    invoke-static {v2}, Lc/e/a/a/j/d/a/c;->b(Lc/e/a/a/j/d/a/c;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->d:Lc/e/a/a/j/d/a/f;

    iget-boolean v1, v1, Lc/e/a/a/j/d/a/f;->l:Z

    if-nez v1, :cond_4

    .line 59
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/d/a/c$a;->c()V

    :cond_4
    return-void
.end method

.method public a(Lc/e/a/a/n/y;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/d/a/g;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 7
    invoke-virtual {p1}, Lc/e/a/a/n/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/d/a/g;

    .line 8
    instance-of v2, v1, Lc/e/a/a/j/d/a/f;

    if-eqz v2, :cond_0

    .line 9
    check-cast v1, Lc/e/a/a/j/d/a/f;

    move-wide/from16 v9, p4

    invoke-virtual {p0, v1, v9, v10}, Lc/e/a/a/j/d/a/c$a;->a(Lc/e/a/a/j/d/a/f;J)V

    .line 10
    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    invoke-static {v1}, Lc/e/a/a/j/d/a/c;->g(Lc/e/a/a/j/d/a/c;)Lc/e/a/a/j/w$a;

    move-result-object v2

    move-object v1, p1

    iget-object v3, v1, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 11
    invoke-virtual {p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v4

    .line 12
    invoke-virtual {p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x4

    .line 13
    invoke-virtual {p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v11

    move-wide v7, p2

    .line 14
    invoke-virtual/range {v2 .. v12}, Lc/e/a/a/j/w$a;->b(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Loaded playlist has unexpected type."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lc/e/a/a/j/d/a/c$a;->j:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method public a(Lc/e/a/a/n/y;JJZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/d/a/g;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 16
    iget-object v1, v0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    invoke-static {v1}, Lc/e/a/a/j/d/a/c;->g(Lc/e/a/a/j/d/a/c;)Lc/e/a/a/j/w$a;

    move-result-object v2

    move-object v1, p1

    iget-object v3, v1, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 17
    invoke-virtual {p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v4

    .line 18
    invoke-virtual {p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v5

    .line 19
    invoke-virtual {p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v11

    const/4 v6, 0x4

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 20
    invoke-virtual/range {v2 .. v12}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    .line 4
    check-cast p1, Lc/e/a/a/n/y;

    invoke-virtual/range {p0 .. p5}, Lc/e/a/a/j/d/a/c$a;->a(Lc/e/a/a/n/y;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    .line 3
    check-cast p1, Lc/e/a/a/n/y;

    invoke-virtual/range {p0 .. p6}, Lc/e/a/a/j/d/a/c$a;->a(Lc/e/a/a/n/y;JJZ)V

    return-void
.end method

.method public final a(J)Z
    .locals 2

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lc/e/a/a/j/d/a/c$a;->h:J

    .line 61
    iget-object p1, p0, Lc/e/a/a/j/d/a/c$a;->a:Landroid/net/Uri;

    iget-object p2, p0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    invoke-static {p2}, Lc/e/a/a/j/d/a/c;->b(Lc/e/a/a/j/d/a/c;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    invoke-static {p1}, Lc/e/a/a/j/d/a/c;->c(Lc/e/a/a/j/d/a/c;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 10

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/a/c$a;->d:Lc/e/a/a/j/d/a/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    .line 4
    iget-object v0, p0, Lc/e/a/a/j/d/a/c$a;->d:Lc/e/a/a/j/d/a/f;

    iget-wide v6, v0, Lc/e/a/a/j/d/a/f;->p:J

    invoke-static {v6, v7}, Lc/e/a/a/q;->b(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/d/a/c$a;->d:Lc/e/a/a/j/d/a/f;

    iget-boolean v6, v0, Lc/e/a/a/j/d/a/f;->l:Z

    const/4 v7, 0x1

    if-nez v6, :cond_1

    iget v0, v0, Lc/e/a/a/j/d/a/f;->d:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    iget-wide v8, p0, Lc/e/a/a/j/d/a/c$a;->e:J

    add-long/2addr v8, v4

    cmp-long v0, v8, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lc/e/a/a/j/d/a/c$a;->h:J

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/j/d/a/c$a;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/e/a/a/j/d/a/c$a;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lc/e/a/a/j/d/a/c$a;->g:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lc/e/a/a/j/d/a/c$a;->i:Z

    .line 6
    iget-object v2, p0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    invoke-static {v2}, Lc/e/a/a/j/d/a/c;->f(Lc/e/a/a/j/d/a/c;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v3, p0, Lc/e/a/a/j/d/a/c$a;->g:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/j/d/a/c$a;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/a/c$a;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lc/e/a/a/j/d/a/c$a;->c:Lc/e/a/a/n/y;

    iget-object v2, p0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    .line 2
    invoke-static {v2}, Lc/e/a/a/j/d/a/c;->h(Lc/e/a/a/j/d/a/c;)Lc/e/a/a/n/v;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/a/j/d/a/c$a;->c:Lc/e/a/a/n/y;

    iget v3, v3, Lc/e/a/a/n/y;->b:I

    invoke-interface {v2, v3}, Lc/e/a/a/n/v;->a(I)I

    move-result v2

    .line 3
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lc/e/a/a/j/d/a/c$a;->k:Lc/e/a/a/j/d/a/c;

    invoke-static {v2}, Lc/e/a/a/j/d/a/c;->g(Lc/e/a/a/j/d/a/c;)Lc/e/a/a/j/w$a;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/a/j/d/a/c$a;->c:Lc/e/a/a/n/y;

    iget-object v4, v3, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    iget v3, v3, Lc/e/a/a/n/y;->b:I

    invoke-virtual {v2, v4, v3, v0, v1}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;IJ)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/a/c$a;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/a/c$a;->j:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/a/c$a;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/j/d/a/c$a;->i:Z

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/j/d/a/c$a;->d()V

    return-void
.end method
