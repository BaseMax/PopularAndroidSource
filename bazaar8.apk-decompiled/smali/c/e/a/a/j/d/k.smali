.class public final Lc/e/a/a/j/d/k;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lc/e/a/a/j/u;
.implements Lc/e/a/a/j/d/o$a;
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;


# instance fields
.field public final a:Lc/e/a/a/j/d/h;

.field public final b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field public final c:Lc/e/a/a/j/d/g;

.field public final d:Lc/e/a/a/n/A;

.field public final e:Lc/e/a/a/n/v;

.field public final f:Lc/e/a/a/j/w$a;

.field public final g:Lc/e/a/a/n/e;

.field public final h:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lc/e/a/a/j/C;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lc/e/a/a/j/d/r;

.field public final j:Lc/e/a/a/j/q;

.field public final k:Z

.field public final l:Z

.field public m:Lc/e/a/a/j/u$a;

.field public n:I

.field public o:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public p:[Lc/e/a/a/j/d/o;

.field public q:[Lc/e/a/a/j/d/o;

.field public r:[[I

.field public s:Lc/e/a/a/j/D;

.field public t:Z


# direct methods
.method public constructor <init>(Lc/e/a/a/j/d/h;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lc/e/a/a/j/d/g;Lc/e/a/a/n/A;Lc/e/a/a/n/v;Lc/e/a/a/j/w$a;Lc/e/a/a/n/e;Lc/e/a/a/j/q;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/d/k;->a:Lc/e/a/a/j/d/h;

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/d/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/d/k;->c:Lc/e/a/a/j/d/g;

    .line 5
    iput-object p4, p0, Lc/e/a/a/j/d/k;->d:Lc/e/a/a/n/A;

    .line 6
    iput-object p5, p0, Lc/e/a/a/j/d/k;->e:Lc/e/a/a/n/v;

    .line 7
    iput-object p6, p0, Lc/e/a/a/j/d/k;->f:Lc/e/a/a/j/w$a;

    .line 8
    iput-object p7, p0, Lc/e/a/a/j/d/k;->g:Lc/e/a/a/n/e;

    .line 9
    iput-object p8, p0, Lc/e/a/a/j/d/k;->j:Lc/e/a/a/j/q;

    .line 10
    iput-boolean p9, p0, Lc/e/a/a/j/d/k;->k:Z

    .line 11
    iput-boolean p10, p0, Lc/e/a/a/j/d/k;->l:Z

    const/4 p1, 0x0

    .line 12
    new-array p2, p1, [Lc/e/a/a/j/D;

    .line 13
    invoke-interface {p8, p2}, Lc/e/a/a/j/q;->a([Lc/e/a/a/j/D;)Lc/e/a/a/j/D;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/j/d/k;->s:Lc/e/a/a/j/D;

    .line 14
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lc/e/a/a/j/d/k;->h:Ljava/util/IdentityHashMap;

    .line 15
    new-instance p2, Lc/e/a/a/j/d/r;

    invoke-direct {p2}, Lc/e/a/a/j/d/r;-><init>()V

    iput-object p2, p0, Lc/e/a/a/j/d/k;->i:Lc/e/a/a/j/d/r;

    .line 16
    new-array p2, p1, [Lc/e/a/a/j/d/o;

    iput-object p2, p0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    .line 17
    new-array p2, p1, [Lc/e/a/a/j/d/o;

    iput-object p2, p0, Lc/e/a/a/j/d/k;->q:[Lc/e/a/a/j/d/o;

    .line 18
    new-array p1, p1, [[I

    iput-object p1, p0, Lc/e/a/a/j/d/k;->r:[[I

    .line 19
    invoke-virtual {p6}, Lc/e/a/a/j/w$a;->a()V

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 14

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lc/e/a/a/o/I;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-static {v6}, Lc/e/a/a/o/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 163
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/Format;->e:I

    iget v8, p0, Lcom/google/android/exoplayer2/Format;->n:I

    iget v9, p0, Lcom/google/android/exoplayer2/Format;->o:I

    iget v10, p0, Lcom/google/android/exoplayer2/Format;->p:F

    iget v12, p0, Lcom/google/android/exoplayer2/Format;->c:I

    iget v13, p0, Lcom/google/android/exoplayer2/Format;->d:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v13}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 164
    iget-object v2, v1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 165
    iget v3, v1, Lcom/google/android/exoplayer2/Format;->v:I

    .line 166
    iget v5, v1, Lcom/google/android/exoplayer2/Format;->c:I

    .line 167
    iget v6, v1, Lcom/google/android/exoplayer2/Format;->d:I

    .line 168
    iget-object v7, v1, Lcom/google/android/exoplayer2/Format;->A:Ljava/lang/String;

    .line 169
    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->b:Ljava/lang/String;

    move-object v9, v1

    move-object v12, v2

    move v14, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_0

    .line 170
    :cond_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lc/e/a/a/o/I;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_1

    .line 171
    iget v2, v0, Lcom/google/android/exoplayer2/Format;->v:I

    .line 172
    iget v3, v0, Lcom/google/android/exoplayer2/Format;->c:I

    .line 173
    iget v1, v1, Lcom/google/android/exoplayer2/Format;->d:I

    .line 174
    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->A:Ljava/lang/String;

    .line 175
    iget-object v7, v0, Lcom/google/android/exoplayer2/Format;->b:Ljava/lang/String;

    move/from16 v18, v1

    move v14, v2

    move/from16 v17, v3

    move-object v12, v5

    move-object/from16 v19, v6

    move-object v9, v7

    goto :goto_0

    :cond_1
    move-object v9, v2

    move-object/from16 v19, v9

    move-object v12, v5

    const/4 v14, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 176
    :goto_0
    invoke-static {v12}, Lc/e/a/a/o/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz p2, :cond_2

    .line 177
    iget v4, v0, Lcom/google/android/exoplayer2/Format;->e:I

    move v13, v4

    goto :goto_1

    :cond_2
    const/4 v13, -0x1

    .line 178
    :goto_1
    iget-object v8, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/lang/String;

    const/4 v15, -0x1

    const/16 v16, 0x0

    invoke-static/range {v8 .. v19}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 152
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 153
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 154
    iget-object v4, v3, Lcom/google/android/exoplayer2/drm/DrmInitData;->c:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    move-object v5, v3

    move v3, v2

    .line 155
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 156
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 157
    iget-object v7, v6, Lcom/google/android/exoplayer2/drm/DrmInitData;->c:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v5

    .line 159
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(J)J
    .locals 4

    .line 45
    iget-object v0, p0, Lc/e/a/a/j/d/k;->q:[Lc/e/a/a/j/d/o;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 46
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lc/e/a/a/j/d/o;->b(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 47
    :goto_0
    iget-object v2, p0, Lc/e/a/a/j/d/k;->q:[Lc/e/a/a/j/d/o;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 48
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lc/e/a/a/j/d/o;->b(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lc/e/a/a/j/d/k;->i:Lc/e/a/a/j/d/r;

    invoke-virtual {v0}, Lc/e/a/a/j/d/r;->a()V

    :cond_1
    return-wide p1
.end method

.method public a(JLc/e/a/a/V;)J
    .locals 0

    return-wide p1
.end method

.method public a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;[ZJ)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 5
    array-length v3, v1

    new-array v3, v3, [I

    .line 6
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 7
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 8
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lc/e/a/a/j/d/k;->h:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    .line 9
    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    .line 10
    aput v8, v4, v6

    .line 11
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    .line 12
    aget-object v7, v1, v6

    invoke-interface {v7}, Lc/e/a/a/l/n;->a()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    const/4 v9, 0x0

    .line 13
    :goto_2
    iget-object v10, v0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 14
    aget-object v10, v10, v9

    invoke-virtual {v10}, Lc/e/a/a/j/d/o;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 15
    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 16
    :cond_3
    iget-object v6, v0, Lc/e/a/a/j/d/k;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 17
    array-length v6, v1

    new-array v6, v6, [Lc/e/a/a/j/C;

    .line 18
    array-length v7, v1

    new-array v7, v7, [Lc/e/a/a/j/C;

    .line 19
    array-length v8, v1

    new-array v15, v8, [Lc/e/a/a/l/n;

    .line 20
    iget-object v8, v0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length v8, v8

    new-array v13, v8, [Lc/e/a/a/j/d/o;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 21
    :goto_4
    iget-object v8, v0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length v8, v8

    if-ge v14, v8, :cond_10

    const/4 v8, 0x0

    .line 22
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_6

    .line 23
    aget v9, v3, v8

    const/4 v10, 0x0

    if-ne v9, v14, :cond_4

    aget-object v9, v2, v8

    goto :goto_6

    :cond_4
    move-object v9, v10

    :goto_6
    aput-object v9, v7, v8

    .line 24
    aget v9, v4, v8

    if-ne v9, v14, :cond_5

    aget-object v10, v1, v8

    :cond_5
    aput-object v10, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 25
    :cond_6
    iget-object v8, v0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    aget-object v11, v8, v14

    move-object v8, v11

    move-object v9, v15

    move-object/from16 v10, p2

    move-object v5, v11

    move-object v11, v7

    move v2, v12

    move-object/from16 v12, p4

    move/from16 v17, v2

    move-object/from16 v18, v13

    move v2, v14

    move-wide/from16 v13, p5

    move-object/from16 v19, v15

    move/from16 v15, v16

    .line 26
    invoke-virtual/range {v8 .. v15}, Lc/e/a/a/j/d/o;->a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;[ZJZ)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 27
    :goto_7
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v9, v11, :cond_b

    .line 28
    aget v11, v4, v9

    if-ne v11, v2, :cond_8

    .line 29
    aget-object v10, v7, v9

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    goto :goto_8

    :cond_7
    const/4 v10, 0x0

    :goto_8
    invoke-static {v10}, Lc/e/a/a/o/e;->b(Z)V

    .line 30
    aget-object v10, v7, v9

    aput-object v10, v6, v9

    .line 31
    iget-object v10, v0, Lc/e/a/a/j/d/k;->h:Ljava/util/IdentityHashMap;

    aget-object v11, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_a

    .line 32
    :cond_8
    aget v11, v3, v9

    if-ne v11, v2, :cond_a

    .line 33
    aget-object v11, v7, v9

    if-nez v11, :cond_9

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_9
    invoke-static {v12}, Lc/e/a/a/o/e;->b(Z)V

    :cond_a
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_b
    if-eqz v10, :cond_f

    .line 34
    aput-object v5, v18, v17

    add-int/lit8 v9, v17, 0x1

    if-nez v17, :cond_d

    .line 35
    invoke-virtual {v5, v12}, Lc/e/a/a/j/d/o;->a(Z)V

    if-nez v8, :cond_c

    .line 36
    iget-object v8, v0, Lc/e/a/a/j/d/k;->q:[Lc/e/a/a/j/d/o;

    array-length v10, v8

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    aget-object v8, v8, v10

    if-eq v5, v8, :cond_e

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    .line 37
    :goto_b
    iget-object v5, v0, Lc/e/a/a/j/d/k;->i:Lc/e/a/a/j/d/r;

    invoke-virtual {v5}, Lc/e/a/a/j/d/r;->a()V

    move v12, v9

    const/16 v16, 0x1

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    .line 38
    invoke-virtual {v5, v10}, Lc/e/a/a/j/d/o;->a(Z)V

    :cond_e
    move v12, v9

    goto :goto_c

    :cond_f
    const/4 v10, 0x0

    move/from16 v12, v17

    :goto_c
    add-int/lit8 v14, v2, 0x1

    move-object/from16 v2, p3

    move-object/from16 v13, v18

    move-object/from16 v15, v19

    goto/16 :goto_4

    :cond_10
    move/from16 v17, v12

    move-object/from16 v18, v13

    const/4 v10, 0x0

    .line 39
    array-length v1, v6

    move-object/from16 v2, p3

    invoke-static {v6, v10, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v1, v18

    .line 40
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc/e/a/a/j/d/o;

    iput-object v1, v0, Lc/e/a/a/j/d/k;->q:[Lc/e/a/a/j/d/o;

    .line 41
    iget-object v1, v0, Lc/e/a/a/j/d/k;->j:Lc/e/a/a/j/q;

    iget-object v2, v0, Lc/e/a/a/j/d/k;->q:[Lc/e/a/a/j/d/o;

    .line 42
    invoke-interface {v1, v2}, Lc/e/a/a/j/q;->a([Lc/e/a/a/j/D;)Lc/e/a/a/j/D;

    move-result-object v1

    iput-object v1, v0, Lc/e/a/a/j/d/k;->s:Lc/e/a/a/j/D;

    return-wide p5
.end method

.method public final a(I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Ljava/util/Map;J)Lc/e/a/a/j/d/o;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "[",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;J)",
            "Lc/e/a/a/j/d/o;"
        }
    .end annotation

    move-object v11, p0

    .line 148
    new-instance v9, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, v11, Lc/e/a/a/j/d/k;->a:Lc/e/a/a/j/d/h;

    iget-object v2, v11, Lc/e/a/a/j/d/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v5, v11, Lc/e/a/a/j/d/k;->c:Lc/e/a/a/j/d/g;

    iget-object v6, v11, Lc/e/a/a/j/d/k;->d:Lc/e/a/a/n/A;

    iget-object v7, v11, Lc/e/a/a/j/d/k;->i:Lc/e/a/a/j/d/r;

    move-object v0, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;-><init>(Lc/e/a/a/j/d/h;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lc/e/a/a/j/d/g;Lc/e/a/a/n/A;Lc/e/a/a/j/d/r;Ljava/util/List;)V

    .line 149
    new-instance v12, Lc/e/a/a/j/d/o;

    iget-object v5, v11, Lc/e/a/a/j/d/k;->g:Lc/e/a/a/n/e;

    iget-object v10, v11, Lc/e/a/a/j/d/k;->e:Lc/e/a/a/n/v;

    iget-object v13, v11, Lc/e/a/a/j/d/k;->f:Lc/e/a/a/j/w$a;

    move-object v0, v12

    move v1, p1

    move-object v2, p0

    move-object v3, v9

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lc/e/a/a/j/d/o;-><init>(ILc/e/a/a/j/d/o$a;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Ljava/util/Map;Lc/e/a/a/n/e;JLcom/google/android/exoplayer2/Format;Lc/e/a/a/n/v;Lc/e/a/a/j/w$a;)V

    return-object v12
.end method

.method public a()V
    .locals 11

    .line 50
    iget v0, p0, Lc/e/a/a/j/d/k;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/e/a/a/j/d/k;->n:I

    if-lez v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 52
    invoke-virtual {v5}, Lc/e/a/a/j/d/o;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_1
    new-array v0, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 54
    iget-object v1, p0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 55
    invoke-virtual {v6}, Lc/e/a/a/j/d/o;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:I

    move v8, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_2

    add-int/lit8 v9, v8, 0x1

    .line 56
    invoke-virtual {v6}, Lc/e/a/a/j/d/o;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v8

    add-int/lit8 v5, v5, 0x1

    move v8, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_1

    .line 57
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v1, p0, Lc/e/a/a/j/d/k;->o:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 58
    iget-object v0, p0, Lc/e/a/a/j/d/k;->m:Lc/e/a/a/j/u$a;

    invoke-interface {v0, p0}, Lc/e/a/a/j/u$a;->a(Lc/e/a/a/j/u;)V

    return-void
.end method

.method public final a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lc/e/a/a/j/d/a/e$a;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/d/o;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    .line 119
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    .line 121
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    .line 123
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 125
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 126
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/e/a/a/j/d/a/e$a;

    iget-object v7, v7, Lc/e/a/a/j/d/a/e$a;->d:Ljava/lang/String;

    .line 127
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object/from16 v12, p0

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    goto/16 :goto_3

    .line 128
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 130
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 131
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_3

    .line 132
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc/e/a/a/j/d/a/e$a;

    iget-object v11, v11, Lc/e/a/a/j/d/a/e$a;->d:Ljava/lang/String;

    invoke-static {v7, v11}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 133
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc/e/a/a/j/d/a/e$a;

    .line 134
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v12, v11, Lc/e/a/a/j/d/a/e$a;->a:Landroid/net/Uri;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v12, v11, Lc/e/a/a/j/d/a/e$a;->b:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v11, v11, Lc/e/a/a/j/d/a/e$a;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v11, v11, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    and-int/2addr v10, v11

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    .line 138
    new-array v7, v5, [Landroid/net/Uri;

    .line 139
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, [Landroid/net/Uri;

    new-array v7, v5, [Lcom/google/android/exoplayer2/Format;

    .line 140
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [Lcom/google/android/exoplayer2/Format;

    const/4 v15, 0x0

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v11, p0

    move-object/from16 v17, p6

    move-wide/from16 v18, p1

    .line 142
    invoke-virtual/range {v11 .. v19}, Lc/e/a/a/j/d/k;->a(I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Ljava/util/Map;J)Lc/e/a/a/j/d/o;

    move-result-object v7

    .line 143
    invoke-static {v3}, Lc/e/a/a/o/I;->a(Ljava/util/List;)[I

    move-result-object v9

    move-object/from16 v11, p5

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p4

    .line 144
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    .line 145
    iget-boolean v13, v12, Lc/e/a/a/j/d/k;->k:Z

    if-eqz v13, :cond_4

    if-eqz v10, :cond_4

    .line 146
    new-array v10, v5, [Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/android/exoplayer2/Format;

    .line 147
    new-instance v13, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v8, v8, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v14, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v14, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v14, v8, v5

    invoke-direct {v13, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sget-object v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v7, v13, v5, v8}, Lc/e/a/a/j/d/o;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v12, p0

    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 43
    iget-object v0, p0, Lc/e/a/a/j/d/k;->q:[Lc/e/a/a/j/d/o;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 44
    invoke-virtual {v3, p1, p2, p3}, Lc/e/a/a/j/d/o;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lc/e/a/a/j/d/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c(Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic a(Lc/e/a/a/j/D;)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/j/d/o;

    invoke-virtual {p0, p1}, Lc/e/a/a/j/d/k;->a(Lc/e/a/a/j/d/o;)V

    return-void
.end method

.method public final a(Lc/e/a/a/j/d/a/e;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/d/a/e;",
            "J",
            "Ljava/util/List<",
            "Lc/e/a/a/j/d/o;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 64
    iget-object v1, v0, Lc/e/a/a/j/d/a/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 65
    :goto_0
    iget-object v6, v0, Lc/e/a/a/j/d/a/e;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v3, v6, :cond_3

    .line 66
    iget-object v6, v0, Lc/e/a/a/j/d/a/e;->f:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/a/a/j/d/a/e$b;

    .line 67
    iget-object v6, v6, Lc/e/a/a/j/d/a/e$b;->b:Lcom/google/android/exoplayer2/Format;

    .line 68
    iget v10, v6, Lcom/google/android/exoplayer2/Format;->o:I

    if-gtz v10, :cond_2

    iget-object v10, v6, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-static {v10, v8}, Lc/e/a/a/o/I;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-static {v6, v9}, Lc/e/a/a/o/I;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 70
    aput v9, v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 71
    :cond_1
    aput v7, v1, v3

    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    aput v8, v1, v3

    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_3
    array-length v3, v1

    if-lez v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    .line 74
    :cond_4
    array-length v4, v1

    if-ge v5, v4, :cond_5

    .line 75
    array-length v3, v1

    sub-int v4, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    move v4, v3

    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x0

    .line 76
    :goto_4
    new-array v12, v4, [Landroid/net/Uri;

    .line 77
    new-array v6, v4, [Lcom/google/android/exoplayer2/Format;

    .line 78
    new-array v15, v4, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 79
    :goto_5
    iget-object v13, v0, Lc/e/a/a/j/d/a/e;->f:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_9

    if-eqz v3, :cond_6

    .line 80
    aget v13, v1, v10

    if-ne v13, v8, :cond_8

    :cond_6
    if-eqz v5, :cond_7

    aget v13, v1, v10

    if-eq v13, v9, :cond_8

    .line 81
    :cond_7
    iget-object v13, v0, Lc/e/a/a/j/d/a/e;->f:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc/e/a/a/j/d/a/e$b;

    .line 82
    iget-object v14, v13, Lc/e/a/a/j/d/a/e$b;->a:Landroid/net/Uri;

    aput-object v14, v12, v11

    .line 83
    iget-object v13, v13, Lc/e/a/a/j/d/a/e$b;->b:Lcom/google/android/exoplayer2/Format;

    aput-object v13, v6, v11

    add-int/lit8 v13, v11, 0x1

    .line 84
    aput v10, v15, v11

    move v11, v13

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 85
    :cond_9
    aget-object v1, v6, v2

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    const/4 v11, 0x0

    .line 86
    iget-object v14, v0, Lc/e/a/a/j/d/a/e;->k:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v0, Lc/e/a/a/j/d/a/e;->l:Ljava/util/List;

    move-object/from16 v10, p0

    move-object v13, v6

    move-object v5, v15

    move-object v15, v3

    move-object/from16 v16, p6

    move-wide/from16 v17, p2

    .line 87
    invoke-virtual/range {v10 .. v18}, Lc/e/a/a/j/d/k;->a(I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Ljava/util/Map;J)Lc/e/a/a/j/d/o;

    move-result-object v3

    move-object/from16 v10, p4

    .line 88
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p5

    .line 89
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p0

    .line 90
    iget-boolean v10, v5, Lc/e/a/a/j/d/k;->k:Z

    if-eqz v10, :cond_13

    if-eqz v1, :cond_13

    .line 91
    invoke-static {v1, v8}, Lc/e/a/a/o/I;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    .line 92
    :goto_6
    invoke-static {v1, v9}, Lc/e/a/a/o/I;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    .line 93
    :goto_7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_f

    .line 94
    new-array v1, v4, [Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    .line 95
    :goto_8
    array-length v8, v1

    if-ge v4, v8, :cond_c

    .line 96
    aget-object v8, v6, v4

    invoke-static {v8}, Lc/e/a/a/j/d/k;->a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    aput-object v8, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 97
    :cond_c
    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_e

    .line 98
    iget-object v1, v0, Lc/e/a/a/j/d/a/e;->k:Lcom/google/android/exoplayer2/Format;

    if-nez v1, :cond_d

    iget-object v1, v0, Lc/e/a/a/j/d/a/e;->h:Ljava/util/List;

    .line 99
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 100
    :cond_d
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v4, v9, [Lcom/google/android/exoplayer2/Format;

    aget-object v6, v6, v2

    iget-object v8, v0, Lc/e/a/a/j/d/a/e;->k:Lcom/google/android/exoplayer2/Format;

    .line 101
    invoke-static {v6, v8, v2}, Lc/e/a/a/j/d/k;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    .line 102
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_e
    iget-object v0, v0, Lc/e/a/a/j/d/a/e;->l:Ljava/util/List;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 104
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_11

    .line 105
    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v6, v9, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/Format;

    aput-object v8, v6, v2

    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    if-eqz v10, :cond_12

    .line 106
    new-array v1, v4, [Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    .line 107
    :goto_a
    array-length v8, v1

    if-ge v4, v8, :cond_10

    .line 108
    aget-object v8, v6, v4

    iget-object v10, v0, Lc/e/a/a/j/d/a/e;->k:Lcom/google/android/exoplayer2/Format;

    .line 109
    invoke-static {v8, v10, v9}, Lc/e/a/a/j/d/k;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    aput-object v8, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 110
    :cond_10
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_11
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v1, v9, [Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    const-string v6, "ID3"

    const-string v8, "application/id3"

    .line 112
    invoke-static {v6, v8, v4, v7, v4}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    .line 113
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v4, v2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 115
    invoke-interface {v11, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v6, v9, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v0, v6, v2

    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 116
    invoke-virtual {v3, v1, v2, v4}, Lc/e/a/a/j/d/o;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    goto :goto_b

    .line 117
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected codecs attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_b
    return-void
.end method

.method public a(Lc/e/a/a/j/d/o;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lc/e/a/a/j/d/k;->m:Lc/e/a/a/j/u$a;

    invoke-interface {p1, p0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    return-void
.end method

.method public a(Lc/e/a/a/j/u$a;J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/d/k;->m:Lc/e/a/a/j/u$a;

    .line 3
    iget-object p1, p0, Lc/e/a/a/j/d/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;)V

    .line 4
    invoke-virtual {p0, p2, p3}, Lc/e/a/a/j/d/k;->d(J)V

    return-void
.end method

.method public a(Landroid/net/Uri;J)Z
    .locals 5

    .line 61
    iget-object v0, p0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 62
    invoke-virtual {v4, p1, p2, p3}, Lc/e/a/a/j/d/o;->a(Landroid/net/Uri;J)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lc/e/a/a/j/d/k;->m:Lc/e/a/a/j/u$a;

    invoke-interface {p1, p0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    return v2
.end method

.method public b()J
    .locals 2

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/d/k;->s:Lc/e/a/a/j/D;

    invoke-interface {v0}, Lc/e/a/a/j/D;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/k;->o:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {v2}, Lc/e/a/a/j/d/o;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lc/e/a/a/j/d/k;->s:Lc/e/a/a/j/D;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/D;->b(J)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/k;->m:Lc/e/a/a/j/u$a;

    invoke-interface {v0, p0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    return-void
.end method

.method public c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/k;->s:Lc/e/a/a/j/D;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/D;->c(J)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lc/e/a/a/j/d/o;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 18

    move-object/from16 v9, p0

    .line 3
    iget-object v0, v9, Lc/e/a/a/j/d/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c()Lc/e/a/a/j/d/a/e;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lc/e/a/a/j/d/a/e;

    .line 4
    iget-boolean v0, v9, Lc/e/a/a/j/d/k;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lc/e/a/a/j/d/a/e;->n:Ljava/util/List;

    .line 5
    invoke-static {v0}, Lc/e/a/a/j/d/k;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    move-object v10, v0

    .line 7
    iget-object v0, v1, Lc/e/a/a/j/d/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    .line 8
    iget-object v7, v1, Lc/e/a/a/j/d/a/e;->h:Ljava/util/List;

    .line 9
    iget-object v12, v1, Lc/e/a/a/j/d/a/e;->i:Ljava/util/List;

    const/4 v13, 0x0

    .line 10
    iput v13, v9, Lc/e/a/a/j/d/k;->n:I

    .line 11
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-object v4, v14

    move-object v5, v15

    move-object v6, v10

    .line 13
    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/j/d/k;->a(Lc/e/a/a/j/d/a/e;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v7

    move-object v4, v14

    move-object v5, v15

    move-object v6, v10

    .line 14
    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/j/d/k;->a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    const/4 v7, 0x0

    .line 15
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 16
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lc/e/a/a/j/d/a/e$a;

    const/4 v1, 0x3

    .line 17
    new-array v2, v11, [Landroid/net/Uri;

    iget-object v0, v8, Lc/e/a/a/j/d/a/e$a;->a:Landroid/net/Uri;

    aput-object v0, v2, v13

    new-array v3, v11, [Lcom/google/android/exoplayer2/Format;

    iget-object v0, v8, Lc/e/a/a/j/d/a/e$a;->b:Lcom/google/android/exoplayer2/Format;

    aput-object v0, v3, v13

    const/4 v4, 0x0

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v6, v10

    move/from16 v16, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, p1

    .line 19
    invoke-virtual/range {v0 .. v8}, Lc/e/a/a/j/d/k;->a(I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Ljava/util/Map;J)Lc/e/a/a/j/d/o;

    move-result-object v0

    .line 20
    new-array v1, v11, [I

    aput v16, v1, v13

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v2, v11, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v4, v11, [Lcom/google/android/exoplayer2/Format;

    move-object/from16 v5, v17

    iget-object v5, v5, Lc/e/a/a/j/d/a/e$a;->b:Lcom/google/android/exoplayer2/Format;

    aput-object v5, v4, v13

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v3, v2, v13

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, v1, v13, v2}, Lc/e/a/a/j/d/o;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_1

    .line 23
    :cond_2
    new-array v0, v13, [Lc/e/a/a/j/d/o;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/a/a/j/d/o;

    iput-object v0, v9, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    .line 24
    new-array v0, v13, [[I

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v9, Lc/e/a/a/j/d/k;->r:[[I

    .line 25
    iget-object v0, v9, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length v1, v0

    iput v1, v9, Lc/e/a/a/j/d/k;->n:I

    .line 26
    aget-object v0, v0, v13

    invoke-virtual {v0, v11}, Lc/e/a/a/j/d/o;->a(Z)V

    .line 27
    iget-object v0, v9, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length v1, v0

    :goto_2
    if-ge v13, v1, :cond_3

    aget-object v2, v0, v13

    .line 28
    invoke-virtual {v2}, Lc/e/a/a/j/d/o;->i()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 29
    :cond_3
    iget-object v0, v9, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    iput-object v0, v9, Lc/e/a/a/j/d/k;->q:[Lc/e/a/a/j/d/o;

    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/d/k;->t:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/k;->f:Lc/e/a/a/j/w$a;

    invoke-virtual {v0}, Lc/e/a/a/j/w$a;->c()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/j/d/k;->t:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public f()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/k;->o:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/k;->s:Lc/e/a/a/j/D;

    invoke-interface {v0}, Lc/e/a/a/j/D;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/d/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/k;->p:[Lc/e/a/a/j/d/o;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lc/e/a/a/j/d/o;->p()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/e/a/a/j/d/k;->m:Lc/e/a/a/j/u$a;

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/d/k;->f:Lc/e/a/a/j/w$a;

    invoke-virtual {v0}, Lc/e/a/a/j/w$a;->b()V

    return-void
.end method
