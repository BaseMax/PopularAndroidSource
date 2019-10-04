.class public final Lc/c/a/l/a/e;
.super Ljava/lang/Object;
.source "TrackMapper.kt"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V
    .locals 1

    const-string v0, "trackSelector"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/l/a/e;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-void
.end method

.method public static synthetic a(Lc/c/a/l/a/e;ILjava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/c/a/l/a/e;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/util/List;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lc/c/a/l/a/a;",
            ">;"
        }
    .end annotation

    move/from16 v7, p1

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 2
    iget-object v0, v8, Lc/c/a/l/a/e;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lc/e/a/a/l/j;->c()Lc/e/a/a/l/j$a;

    move-result-object v10

    if-eqz v10, :cond_c

    const-string v0, "trackSelector.currentMap\u2026nfo ?: return emptyList()"

    invoke-static {v10, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v11, Landroid/util/SparseArray;

    const/4 v0, 0x5

    invoke-direct {v11, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 4
    invoke-virtual {v10}, Lc/e/a/a/l/j$a;->a()I

    move-result v12

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_b

    .line 5
    invoke-virtual {v10, v14}, Lc/e/a/a/l/j$a;->a(I)I

    move-result v1

    if-eq v7, v1, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 6
    :cond_1
    invoke-virtual {v10, v14}, Lc/e/a/a/l/j$a;->b(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v15

    .line 7
    iget v6, v15, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    .line 8
    invoke-virtual {v15, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 9
    iget v3, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_a

    .line 10
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    const/4 v13, 0x2

    if-ne v7, v13, :cond_2

    .line 11
    iget v13, v1, Lcom/google/android/exoplayer2/Format;->o:I

    move/from16 v17, v3

    const/4 v3, -0x1

    if-ne v13, v3, :cond_3

    move-object/from16 v18, v4

    goto :goto_3

    :cond_2
    move/from16 v17, v3

    :cond_3
    const/4 v3, 0x3

    const/4 v13, 0x1

    if-ne v7, v3, :cond_4

    .line 12
    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    move-object/from16 v18, v4

    const-string v4, "text/vtt"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v13

    if-eqz v3, :cond_5

    :goto_3
    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v6

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_4
    move-object/from16 v18, v4

    :cond_5
    if-eqz v9, :cond_6

    .line 13
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x0

    if-ge v0, v3, :cond_7

    if-eqz v9, :cond_7

    add-int/lit8 v3, v0, 0x1

    .line 14
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v20, v3

    goto :goto_5

    :cond_7
    move/from16 v20, v0

    move-object/from16 v19, v4

    .line 15
    :goto_5
    new-instance v4, Lc/c/a/l/a/a;

    .line 16
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v0, v13, [I

    const/16 v16, 0x0

    aput v2, v0, v16

    invoke-direct {v3, v5, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    const-string v0, "trackGroups"

    .line 17
    invoke-static {v15, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    .line 18
    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v21, v1

    move-object v1, v3

    move/from16 v22, v2

    move-object v2, v15

    move-object/from16 v3, v21

    move-object/from16 v21, v4

    move v4, v14

    move/from16 v23, v5

    move/from16 v5, p1

    move/from16 v24, v6

    move-object/from16 v6, v19

    .line 19
    invoke-direct/range {v0 .. v6}, Lc/c/a/l/a/a;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/Format;IILjava/lang/String;)V

    .line 20
    invoke-virtual/range {v21 .. v21}, Lc/c/a/l/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 21
    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_9

    .line 22
    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/l/a/a;

    .line 23
    invoke-virtual {v1}, Lc/c/a/l/a/a;->b()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->o:I

    invoke-virtual/range {v21 .. v21}, Lc/c/a/l/a/a;->b()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->o:I

    if-le v1, v2, :cond_9

    goto :goto_7

    :cond_9
    move-object/from16 v1, v21

    .line 24
    invoke-virtual {v11, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_7
    move/from16 v0, v20

    :goto_8
    add-int/lit8 v2, v22, 0x1

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v23

    move/from16 v6, v24

    goto/16 :goto_2

    :cond_a
    move/from16 v23, v5

    move/from16 v24, v6

    const/16 v16, 0x0

    add-int/lit8 v5, v23, 0x1

    goto/16 :goto_1

    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 25
    :cond_b
    invoke-static {v11}, Lb/i/j/j;->a(Landroid/util/SparseArray;)Ljava/util/Iterator;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lh/j/k;->a(Ljava/util/Iterator;)Lh/j/d;

    move-result-object v0

    .line 27
    new-instance v1, Lc/c/a/l/a/d;

    invoke-direct {v1}, Lc/c/a/l/a/d;-><init>()V

    invoke-static {v0, v1}, Lh/j/o;->a(Lh/j/d;Ljava/util/Comparator;)Lh/j/d;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lh/j/o;->c(Lh/j/d;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29
    :cond_c
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
