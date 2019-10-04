.class public final Lc/e/a/a/j/G;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lc/e/a/a/j/u;
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/G$b;,
        Lc/e/a/a/j/G$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/e/a/a/j/u;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a<",
        "Lc/e/a/a/j/G$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/n/l;

.field public final b:Lc/e/a/a/n/j$a;

.field public final c:Lc/e/a/a/n/A;

.field public final d:Lc/e/a/a/n/v;

.field public final e:Lc/e/a/a/j/w$a;

.field public final f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/j/G$a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:J

.field public final i:Lcom/google/android/exoplayer2/upstream/Loader;

.field public final j:Lcom/google/android/exoplayer2/Format;

.field public final k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:[B

.field public p:I


# direct methods
.method public constructor <init>(Lc/e/a/a/n/l;Lc/e/a/a/n/j$a;Lc/e/a/a/n/A;Lcom/google/android/exoplayer2/Format;JLc/e/a/a/n/v;Lc/e/a/a/j/w$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/G;->a:Lc/e/a/a/n/l;

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/G;->b:Lc/e/a/a/n/j$a;

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/G;->c:Lc/e/a/a/n/A;

    .line 5
    iput-object p4, p0, Lc/e/a/a/j/G;->j:Lcom/google/android/exoplayer2/Format;

    .line 6
    iput-wide p5, p0, Lc/e/a/a/j/G;->h:J

    .line 7
    iput-object p7, p0, Lc/e/a/a/j/G;->d:Lc/e/a/a/n/v;

    .line 8
    iput-object p8, p0, Lc/e/a/a/j/G;->e:Lc/e/a/a/j/w$a;

    .line 9
    iput-boolean p9, p0, Lc/e/a/a/j/G;->k:Z

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 p2, 0x1

    new-array p3, p2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance p5, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array p2, p2, [Lcom/google/android/exoplayer2/Format;

    const/4 p6, 0x0

    aput-object p4, p2, p6

    invoke-direct {p5, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object p5, p3, p6

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object p1, p0, Lc/e/a/a/j/G;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/G;->g:Ljava/util/ArrayList;

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/e/a/a/j/G;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 13
    invoke-virtual {p8}, Lc/e/a/a/j/w$a;->a()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/j/G;)Lc/e/a/a/j/w$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/G;->e:Lc/e/a/a/j/w$a;

    return-object p0
.end method


# virtual methods
.method public a(J)J
    .locals 2

    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lc/e/a/a/j/G;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 18
    iget-object v1, p0, Lc/e/a/a/j/G;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/G$a;

    invoke-virtual {v1}, Lc/e/a/a/j/G$a;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public a(JLc/e/a/a/V;)J
    .locals 0

    return-wide p1
.end method

.method public a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 9
    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 10
    :cond_0
    iget-object v1, p0, Lc/e/a/a/j/G;->g:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    aput-object v2, p3, v0

    .line 12
    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 13
    new-instance v1, Lc/e/a/a/j/G$a;

    invoke-direct {v1, p0, v2}, Lc/e/a/a/j/G$a;-><init>(Lc/e/a/a/j/G;Lc/e/a/a/j/F;)V

    .line 14
    iget-object v2, p0, Lc/e/a/a/j/G;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    aput-object v1, p3, v0

    const/4 v1, 0x1

    .line 16
    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public a(Lc/e/a/a/j/G$b;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 28

    move-object/from16 v0, p0

    .line 32
    iget-object v1, v0, Lc/e/a/a/j/G;->d:Lc/e/a/a/n/v;

    const/4 v2, 0x1

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 33
    invoke-interface/range {v1 .. v6}, Lc/e/a/a/n/v;->a(IJLjava/io/IOException;I)J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    cmp-long v7, v1, v4

    if-eqz v7, :cond_1

    .line 34
    iget-object v7, v0, Lc/e/a/a/j/G;->d:Lc/e/a/a/n/v;

    .line 35
    invoke-interface {v7, v6}, Lc/e/a/a/n/v;->a(I)I

    move-result v7

    move/from16 v8, p7

    if-lt v8, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 36
    :goto_1
    iget-boolean v8, v0, Lc/e/a/a/j/G;->k:Z

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 37
    iput-boolean v6, v0, Lc/e/a/a/j/G;->m:Z

    .line 38
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->c:Lcom/google/android/exoplayer2/upstream/Loader$b;

    goto :goto_2

    :cond_2
    cmp-long v7, v1, v4

    if-eqz v7, :cond_3

    .line 39
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$b;

    .line 40
    :goto_2
    iget-object v7, v0, Lc/e/a/a/j/G;->e:Lc/e/a/a/j/w$a;

    move-object/from16 v2, p1

    iget-object v8, v2, Lc/e/a/a/j/G$b;->a:Lc/e/a/a/n/l;

    .line 41
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/G$b;->a(Lc/e/a/a/j/G$b;)Lc/e/a/a/n/z;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/a/n/z;->c()Landroid/net/Uri;

    move-result-object v9

    .line 42
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/G$b;->a(Lc/e/a/a/j/G$b;)Lc/e/a/a/n/z;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/a/n/z;->d()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    iget-object v13, v0, Lc/e/a/a/j/G;->j:Lcom/google/android/exoplayer2/Format;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    iget-wide v3, v0, Lc/e/a/a/j/G;->h:J

    .line 43
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/G$b;->a(Lc/e/a/a/j/G$b;)Lc/e/a/a/n/z;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/a/n/z;->b()J

    move-result-wide v24

    .line 44
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a()Z

    move-result v2

    xor-int/lit8 v27, v2, 0x1

    move-wide/from16 v18, v3

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-object/from16 v26, p6

    .line 45
    invoke-virtual/range {v7 .. v27}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-object v1
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 0

    .line 4
    check-cast p1, Lc/e/a/a/j/G$b;

    invoke-virtual/range {p0 .. p7}, Lc/e/a/a/j/G;->a(Lc/e/a/a/j/G$b;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/G;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 6
    iget-object v0, p0, Lc/e/a/a/j/G;->e:Lc/e/a/a/j/w$a;

    invoke-virtual {v0}, Lc/e/a/a/j/w$a;->b()V

    return-void
.end method

.method public a(JZ)V
    .locals 0

    return-void
.end method

.method public a(Lc/e/a/a/j/G$b;JJ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 19
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/G$b;->a(Lc/e/a/a/j/G$b;)Lc/e/a/a/n/z;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/a/n/z;->b()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lc/e/a/a/j/G;->p:I

    .line 20
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/G$b;->b(Lc/e/a/a/j/G$b;)[B

    move-result-object v1

    iput-object v1, v0, Lc/e/a/a/j/G;->o:[B

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Lc/e/a/a/j/G;->m:Z

    .line 22
    iput-boolean v1, v0, Lc/e/a/a/j/G;->n:Z

    .line 23
    iget-object v1, v0, Lc/e/a/a/j/G;->e:Lc/e/a/a/j/w$a;

    move-object/from16 v4, p1

    iget-object v2, v4, Lc/e/a/a/j/G$b;->a:Lc/e/a/a/n/l;

    .line 24
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/G$b;->a(Lc/e/a/a/j/G$b;)Lc/e/a/a/n/z;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/a/n/z;->c()Landroid/net/Uri;

    move-result-object v3

    .line 25
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/G$b;->a(Lc/e/a/a/j/G$b;)Lc/e/a/a/n/z;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/a/n/z;->d()Ljava/util/Map;

    move-result-object v4

    iget-object v7, v0, Lc/e/a/a/j/G;->j:Lcom/google/android/exoplayer2/Format;

    iget-wide v12, v0, Lc/e/a/a/j/G;->h:J

    iget v5, v0, Lc/e/a/a/j/G;->p:I

    int-to-long v5, v5

    move-wide/from16 v18, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    .line 26
    invoke-virtual/range {v1 .. v19}, Lc/e/a/a/j/w$a;->b(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public a(Lc/e/a/a/j/G$b;JJZ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 27
    iget-object v1, v0, Lc/e/a/a/j/G;->e:Lc/e/a/a/j/w$a;

    move-object/from16 v5, p1

    iget-object v2, v5, Lc/e/a/a/j/G$b;->a:Lc/e/a/a/n/l;

    .line 28
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/G$b;->a(Lc/e/a/a/j/G$b;)Lc/e/a/a/n/z;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/a/n/z;->c()Landroid/net/Uri;

    move-result-object v3

    .line 29
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/G$b;->a(Lc/e/a/a/j/G$b;)Lc/e/a/a/n/z;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/a/n/z;->d()Ljava/util/Map;

    move-result-object v4

    iget-wide v12, v0, Lc/e/a/a/j/G;->h:J

    .line 30
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/G$b;->a(Lc/e/a/a/j/G$b;)Lc/e/a/a/n/z;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/a/n/z;->b()J

    move-result-wide v18

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    .line 31
    invoke-virtual/range {v1 .. v19}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public a(Lc/e/a/a/j/u$a;J)V
    .locals 0

    .line 7
    invoke-interface {p1, p0}, Lc/e/a/a/j/u$a;->a(Lc/e/a/a/j/u;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    .line 3
    check-cast p1, Lc/e/a/a/j/G$b;

    invoke-virtual/range {p0 .. p5}, Lc/e/a/a/j/G;->a(Lc/e/a/a/j/G$b;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    .line 2
    check-cast p1, Lc/e/a/a/j/G$b;

    invoke-virtual/range {p0 .. p6}, Lc/e/a/a/j/G;->a(Lc/e/a/a/j/G$b;JJZ)V

    return-void
.end method

.method public b()J
    .locals 2

    .line 9
    iget-boolean v0, p0, Lc/e/a/a/j/G;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/a/a/j/G;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public b(J)Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lc/e/a/a/j/G;->m:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lc/e/a/a/j/G;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lc/e/a/a/j/G;->b:Lc/e/a/a/n/j$a;

    invoke-interface {v1}, Lc/e/a/a/n/j$a;->a()Lc/e/a/a/n/j;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lc/e/a/a/j/G;->c:Lc/e/a/a/n/A;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1, v2}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/A;)V

    .line 5
    :cond_1
    iget-object v2, v0, Lc/e/a/a/j/G;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v3, Lc/e/a/a/j/G$b;

    iget-object v4, v0, Lc/e/a/a/j/G;->a:Lc/e/a/a/n/l;

    invoke-direct {v3, v4, v1}, Lc/e/a/a/j/G$b;-><init>(Lc/e/a/a/n/l;Lc/e/a/a/n/j;)V

    iget-object v1, v0, Lc/e/a/a/j/G;->d:Lc/e/a/a/n/v;

    const/4 v4, 0x1

    .line 6
    invoke-interface {v1, v4}, Lc/e/a/a/n/v;->a(I)I

    move-result v1

    .line 7
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v16

    .line 8
    iget-object v5, v0, Lc/e/a/a/j/G;->e:Lc/e/a/a/j/w$a;

    iget-object v6, v0, Lc/e/a/a/j/G;->a:Lc/e/a/a/n/l;

    const/4 v7, 0x1

    const/4 v8, -0x1

    iget-object v9, v0, Lc/e/a/a/j/G;->j:Lcom/google/android/exoplayer2/Format;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v0, Lc/e/a/a/j/G;->h:J

    invoke-virtual/range {v5 .. v17}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return v4

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/G;->l:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/G;->e:Lc/e/a/a/j/w$a;

    invoke-virtual {v0}, Lc/e/a/a/j/w$a;->c()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/j/G;->l:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public f()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/G;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/G;->m:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
