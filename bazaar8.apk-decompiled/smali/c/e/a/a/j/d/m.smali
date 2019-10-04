.class public final Lc/e/a/a/j/d/m;
.super Lc/e/a/a/j/m;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/d/m$a;
    }
.end annotation


# instance fields
.field public final f:Lc/e/a/a/j/d/h;

.field public final g:Landroid/net/Uri;

.field public final h:Lc/e/a/a/j/d/g;

.field public final i:Lc/e/a/a/j/q;

.field public final j:Lc/e/a/a/n/v;

.field public final k:Z

.field public final l:Z

.field public final m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field public final n:Ljava/lang/Object;

.field public o:Lc/e/a/a/n/A;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 1
    invoke-static {v0}, Lc/e/a/a/C;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lc/e/a/a/j/d/g;Lc/e/a/a/j/d/h;Lc/e/a/a/j/q;Lc/e/a/a/n/v;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/a/j/m;-><init>()V

    .line 3
    iput-object p1, p0, Lc/e/a/a/j/d/m;->g:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Lc/e/a/a/j/d/m;->h:Lc/e/a/a/j/d/g;

    .line 5
    iput-object p3, p0, Lc/e/a/a/j/d/m;->f:Lc/e/a/a/j/d/h;

    .line 6
    iput-object p4, p0, Lc/e/a/a/j/d/m;->i:Lc/e/a/a/j/q;

    .line 7
    iput-object p5, p0, Lc/e/a/a/j/d/m;->j:Lc/e/a/a/n/v;

    .line 8
    iput-object p6, p0, Lc/e/a/a/j/d/m;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 9
    iput-boolean p7, p0, Lc/e/a/a/j/d/m;->k:Z

    .line 10
    iput-boolean p8, p0, Lc/e/a/a/j/d/m;->l:Z

    .line 11
    iput-object p9, p0, Lc/e/a/a/j/d/m;->n:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lc/e/a/a/j/d/g;Lc/e/a/a/j/d/h;Lc/e/a/a/j/q;Lc/e/a/a/n/v;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;Lc/e/a/a/j/d/l;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lc/e/a/a/j/d/m;-><init>(Landroid/net/Uri;Lc/e/a/a/j/d/g;Lc/e/a/a/j/d/h;Lc/e/a/a/j/q;Lc/e/a/a/n/v;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/j/v$a;Lc/e/a/a/n/e;J)Lc/e/a/a/j/u;
    .locals 11

    .line 5
    invoke-virtual {p0, p1}, Lc/e/a/a/j/m;->a(Lc/e/a/a/j/v$a;)Lc/e/a/a/j/w$a;

    move-result-object v6

    .line 6
    new-instance p1, Lc/e/a/a/j/d/k;

    iget-object v1, p0, Lc/e/a/a/j/d/m;->f:Lc/e/a/a/j/d/h;

    iget-object v2, p0, Lc/e/a/a/j/d/m;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, p0, Lc/e/a/a/j/d/m;->h:Lc/e/a/a/j/d/g;

    iget-object v4, p0, Lc/e/a/a/j/d/m;->o:Lc/e/a/a/n/A;

    iget-object v5, p0, Lc/e/a/a/j/d/m;->j:Lc/e/a/a/n/v;

    iget-object v8, p0, Lc/e/a/a/j/d/m;->i:Lc/e/a/a/j/q;

    iget-boolean v9, p0, Lc/e/a/a/j/d/m;->k:Z

    iget-boolean v10, p0, Lc/e/a/a/j/d/m;->l:Z

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lc/e/a/a/j/d/k;-><init>(Lc/e/a/a/j/d/h;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lc/e/a/a/j/d/g;Lc/e/a/a/n/A;Lc/e/a/a/n/v;Lc/e/a/a/j/w$a;Lc/e/a/a/n/e;Lc/e/a/a/j/q;ZZ)V

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/e/a/a/j/d/m;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d()V

    return-void
.end method

.method public a(Lc/e/a/a/j/d/a/f;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 8
    iget-boolean v2, v1, Lc/e/a/a/j/d/a/f;->m:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lc/e/a/a/j/d/a/f;->f:J

    invoke-static {v5, v6}, Lc/e/a/a/q;->b(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    .line 9
    :goto_0
    iget v2, v1, Lc/e/a/a/j/d/a/f;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    .line 10
    :goto_2
    iget-wide v12, v1, Lc/e/a/a/j/d/a/f;->e:J

    .line 11
    iget-object v2, v0, Lc/e/a/a/j/d/m;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12
    iget-wide v14, v1, Lc/e/a/a/j/d/a/f;->f:J

    iget-object v2, v0, Lc/e/a/a/j/d/m;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 13
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a()J

    move-result-wide v18

    sub-long v18, v14, v18

    .line 14
    iget-boolean v2, v1, Lc/e/a/a/j/d/a/f;->l:Z

    if-eqz v2, :cond_3

    iget-wide v14, v1, Lc/e/a/a/j/d/a/f;->p:J

    add-long v14, v18, v14

    goto :goto_3

    :cond_3
    move-wide v14, v3

    .line 15
    :goto_3
    iget-object v2, v1, Lc/e/a/a/j/d/a/f;->o:Ljava/util/List;

    cmp-long v5, v12, v3

    if-nez v5, :cond_5

    .line 16
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/d/a/f$a;

    iget-wide v2, v2, Lc/e/a/a/j/d/a/f$a;->f:J

    move-wide/from16 v16, v2

    :goto_4
    move-wide/from16 v2, v16

    goto :goto_5

    :cond_5
    move-wide v2, v12

    .line 18
    :goto_5
    new-instance v4, Lc/e/a/a/j/E;

    iget-wide v12, v1, Lc/e/a/a/j/d/a/f;->p:J

    const/16 v20, 0x1

    iget-boolean v5, v1, Lc/e/a/a/j/d/a/f;->l:Z

    xor-int/lit8 v21, v5, 0x1

    iget-object v5, v0, Lc/e/a/a/j/d/m;->n:Ljava/lang/Object;

    move-object v7, v4

    move-wide/from16 v16, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v2

    move-object/from16 v22, v5

    invoke-direct/range {v7 .. v22}, Lc/e/a/a/j/E;-><init>(JJJJJJZZLjava/lang/Object;)V

    move-object v2, v4

    goto :goto_7

    :cond_6
    cmp-long v2, v12, v3

    if-nez v2, :cond_7

    const-wide/16 v18, 0x0

    goto :goto_6

    :cond_7
    move-wide/from16 v18, v12

    .line 19
    :goto_6
    new-instance v2, Lc/e/a/a/j/E;

    iget-wide v14, v1, Lc/e/a/a/j/d/a/f;->p:J

    const-wide/16 v16, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v3, v0, Lc/e/a/a/j/d/m;->n:Ljava/lang/Object;

    move-object v7, v2

    move-wide v12, v14

    move-object/from16 v22, v3

    invoke-direct/range {v7 .. v22}, Lc/e/a/a/j/E;-><init>(JJJJJJZZLjava/lang/Object;)V

    .line 20
    :goto_7
    new-instance v3, Lc/e/a/a/j/d/i;

    iget-object v4, v0, Lc/e/a/a/j/d/m;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c()Lc/e/a/a/j/d/a/e;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lc/e/a/a/j/d/i;-><init>(Lc/e/a/a/j/d/a/e;Lc/e/a/a/j/d/a/f;)V

    invoke-virtual {v0, v2, v3}, Lc/e/a/a/j/m;->a(Lc/e/a/a/Z;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lc/e/a/a/j/u;)V
    .locals 0

    .line 7
    check-cast p1, Lc/e/a/a/j/d/k;

    invoke-virtual {p1}, Lc/e/a/a/j/d/k;->h()V

    return-void
.end method

.method public a(Lc/e/a/a/n/A;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/d/m;->o:Lc/e/a/a/n/A;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lc/e/a/a/j/m;->a(Lc/e/a/a/j/v$a;)Lc/e/a/a/j/w$a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/d/m;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lc/e/a/a/j/d/m;->g:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Landroid/net/Uri;Lc/e/a/a/j/w$a;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$c;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/m;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->stop()V

    return-void
.end method
