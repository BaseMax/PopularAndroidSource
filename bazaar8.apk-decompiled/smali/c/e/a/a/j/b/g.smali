.class public Lc/e/a/a/j/b/g;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lc/e/a/a/j/C;
.implements Lc/e/a/a/j/D;
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/b/g$a;,
        Lc/e/a/a/j/b/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc/e/a/a/j/b/h;",
        ">",
        "Ljava/lang/Object;",
        "Lc/e/a/a/j/C;",
        "Lc/e/a/a/j/D;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a<",
        "Lc/e/a/a/j/b/d;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$e;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Lcom/google/android/exoplayer2/Format;

.field public final d:[Z

.field public final e:Lc/e/a/a/j/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final f:Lc/e/a/a/j/D$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/j/D$a<",
            "Lc/e/a/a/j/b/g<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final g:Lc/e/a/a/j/w$a;

.field public final h:Lc/e/a/a/n/v;

.field public final i:Lcom/google/android/exoplayer2/upstream/Loader;

.field public final j:Lc/e/a/a/j/b/f;

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/j/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/a/j/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lc/e/a/a/j/B;

.field public final n:[Lc/e/a/a/j/B;

.field public final o:Lc/e/a/a/j/b/c;

.field public p:Lcom/google/android/exoplayer2/Format;

.field public q:Lc/e/a/a/j/b/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/j/b/g$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public r:J

.field public s:J

.field public t:I

.field public u:J

.field public v:Z


# direct methods
.method public constructor <init>(I[I[Lcom/google/android/exoplayer2/Format;Lc/e/a/a/j/b/h;Lc/e/a/a/j/D$a;Lc/e/a/a/n/e;JLc/e/a/a/n/v;Lc/e/a/a/j/w$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Lcom/google/android/exoplayer2/Format;",
            "TT;",
            "Lc/e/a/a/j/D$a<",
            "Lc/e/a/a/j/b/g<",
            "TT;>;>;",
            "Lc/e/a/a/n/e;",
            "J",
            "Lc/e/a/a/n/v;",
            "Lc/e/a/a/j/w$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/j/b/g;->a:I

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/b/g;->b:[I

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/b/g;->c:[Lcom/google/android/exoplayer2/Format;

    .line 5
    iput-object p4, p0, Lc/e/a/a/j/b/g;->e:Lc/e/a/a/j/b/h;

    .line 6
    iput-object p5, p0, Lc/e/a/a/j/b/g;->f:Lc/e/a/a/j/D$a;

    .line 7
    iput-object p10, p0, Lc/e/a/a/j/b/g;->g:Lc/e/a/a/j/w$a;

    .line 8
    iput-object p9, p0, Lc/e/a/a/j/b/g;->h:Lc/e/a/a/n/v;

    .line 9
    new-instance p3, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p4, "Loader:ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lc/e/a/a/j/b/g;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 10
    new-instance p3, Lc/e/a/a/j/b/f;

    invoke-direct {p3}, Lc/e/a/a/j/b/f;-><init>()V

    iput-object p3, p0, Lc/e/a/a/j/b/g;->j:Lc/e/a/a/j/b/f;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    .line 12
    iget-object p3, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lc/e/a/a/j/b/g;->l:Ljava/util/List;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 13
    :cond_0
    array-length p4, p2

    .line 14
    :goto_0
    new-array p5, p4, [Lc/e/a/a/j/B;

    iput-object p5, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    .line 15
    new-array p5, p4, [Z

    iput-object p5, p0, Lc/e/a/a/j/b/g;->d:[Z

    add-int/lit8 p5, p4, 0x1

    .line 16
    new-array p9, p5, [I

    .line 17
    new-array p5, p5, [Lc/e/a/a/j/B;

    .line 18
    new-instance p10, Lc/e/a/a/j/B;

    invoke-direct {p10, p6}, Lc/e/a/a/j/B;-><init>(Lc/e/a/a/n/e;)V

    iput-object p10, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    .line 19
    aput p1, p9, p3

    .line 20
    iget-object p1, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    aput-object p1, p5, p3

    :goto_1
    if-ge p3, p4, :cond_1

    .line 21
    new-instance p1, Lc/e/a/a/j/B;

    invoke-direct {p1, p6}, Lc/e/a/a/j/B;-><init>(Lc/e/a/a/n/e;)V

    .line 22
    iget-object p10, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    aput-object p1, p10, p3

    add-int/lit8 p10, p3, 0x1

    .line 23
    aput-object p1, p5, p10

    .line 24
    aget p1, p2, p3

    aput p1, p9, p10

    move p3, p10

    goto :goto_1

    .line 25
    :cond_1
    new-instance p1, Lc/e/a/a/j/b/c;

    invoke-direct {p1, p9, p5}, Lc/e/a/a/j/b/c;-><init>([I[Lc/e/a/a/j/B;)V

    iput-object p1, p0, Lc/e/a/a/j/b/g;->o:Lc/e/a/a/j/b/c;

    .line 26
    iput-wide p7, p0, Lc/e/a/a/j/b/g;->r:J

    .line 27
    iput-wide p7, p0, Lc/e/a/a/j/b/g;->s:J

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/j/b/g;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/b/g;->d:[Z

    return-object p0
.end method

.method public static synthetic b(Lc/e/a/a/j/b/g;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/b/g;->b:[I

    return-object p0
.end method

.method public static synthetic c(Lc/e/a/a/j/b/g;)[Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/b/g;->c:[Lcom/google/android/exoplayer2/Format;

    return-object p0
.end method

.method public static synthetic d(Lc/e/a/a/j/b/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/b/g;->s:J

    return-wide v0
.end method

.method public static synthetic e(Lc/e/a/a/j/b/g;)Lc/e/a/a/j/w$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/b/g;->g:Lc/e/a/a/j/w$a;

    return-object p0
.end method


# virtual methods
.method public final a(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 107
    iget-object v0, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 108
    iget-object v0, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/j/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/e/a/a/j/b/a;->a(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 109
    :cond_1
    iget-object p1, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I
    .locals 7

    .line 60
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->l()V

    .line 62
    iget-object v0, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    iget-boolean v4, p0, Lc/e/a/a/j/b/g;->v:Z

    iget-wide v5, p0, Lc/e/a/a/j/b/g;->u:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/j/B;->a(Lc/e/a/a/E;Lc/e/a/a/c/f;ZZJ)I

    move-result p1

    return p1
.end method

.method public a(JLc/e/a/a/V;)J
    .locals 1

    .line 21
    iget-object v0, p0, Lc/e/a/a/j/b/g;->e:Lc/e/a/a/j/b/h;

    invoke-interface {v0, p1, p2, p3}, Lc/e/a/a/j/b/h;->a(JLc/e/a/a/V;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)Lc/e/a/a/j/b/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lc/e/a/a/j/b/g<",
            "TT;>.a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 14
    iget-object v1, p0, Lc/e/a/a/j/b/g;->b:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    .line 15
    iget-object p3, p0, Lc/e/a/a/j/b/g;->d:[Z

    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lc/e/a/a/o/e;->b(Z)V

    .line 16
    iget-object p3, p0, Lc/e/a/a/j/b/g;->d:[Z

    aput-boolean v1, p3, v0

    .line 17
    iget-object p3, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lc/e/a/a/j/B;->n()V

    .line 18
    iget-object p3, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1, v1}, Lc/e/a/a/j/B;->a(JZZ)I

    .line 19
    new-instance p1, Lc/e/a/a/j/b/g$a;

    iget-object p2, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lc/e/a/a/j/b/g$a;-><init>(Lc/e/a/a/j/b/g;Lc/e/a/a/j/b/g;Lc/e/a/a/j/B;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(Lc/e/a/a/j/b/d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 79
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->c()J

    move-result-wide v25

    .line 80
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/b/g;->a(Lc/e/a/a/j/b/d;)Z

    move-result v8

    .line 81
    iget-object v1, v0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x1

    add-int/lit8 v10, v1, -0x1

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, v25, v1

    if-eqz v3, :cond_1

    if-eqz v8, :cond_1

    .line 82
    invoke-virtual {v0, v10}, Lc/e/a/a/j/b/g;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    :goto_1
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v12, :cond_2

    .line 83
    iget-object v1, v0, Lc/e/a/a/j/b/g;->h:Lc/e/a/a/n/v;

    iget v2, v7, Lc/e/a/a/j/b/d;->b:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 84
    invoke-interface/range {v1 .. v6}, Lc/e/a/a/n/v;->b(IJLjava/io/IOException;I)J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_2

    :cond_2
    move-wide v5, v13

    :goto_2
    const/4 v15, 0x0

    .line 85
    iget-object v1, v0, Lc/e/a/a/j/b/g;->e:Lc/e/a/a/j/b/h;

    move-object/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p6

    invoke-interface/range {v1 .. v6}, Lc/e/a/a/j/b/h;->a(Lc/e/a/a/j/b/d;ZLjava/lang/Exception;J)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v12, :cond_4

    .line 86
    sget-object v15, Lcom/google/android/exoplayer2/upstream/Loader;->c:Lcom/google/android/exoplayer2/upstream/Loader$b;

    if-eqz v8, :cond_5

    .line 87
    invoke-virtual {v0, v10}, Lc/e/a/a/j/b/g;->b(I)Lc/e/a/a/j/b/a;

    move-result-object v1

    if-ne v1, v7, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 88
    :goto_3
    invoke-static {v1}, Lc/e/a/a/o/e;->b(Z)V

    .line 89
    iget-object v1, v0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    iget-wide v1, v0, Lc/e/a/a/j/b/g;->s:J

    iput-wide v1, v0, Lc/e/a/a/j/b/g;->r:J

    goto :goto_4

    :cond_4
    const-string v1, "ChunkSampleStream"

    const-string v2, "Ignoring attempt to cancel non-cancelable load."

    .line 91
    invoke-static {v1, v2}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    if-nez v15, :cond_7

    .line 92
    iget-object v1, v0, Lc/e/a/a/j/b/g;->h:Lc/e/a/a/n/v;

    iget v2, v7, Lc/e/a/a/j/b/d;->b:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 93
    invoke-interface/range {v1 .. v6}, Lc/e/a/a/n/v;->a(IJLjava/io/IOException;I)J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-eqz v3, :cond_6

    .line 94
    invoke-static {v11, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v1

    goto :goto_5

    :cond_6
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$b;

    :goto_5
    move-object v15, v1

    :cond_7
    move-object v1, v15

    .line 95
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a()Z

    move-result v2

    xor-int/2addr v2, v9

    move/from16 v28, v2

    .line 96
    iget-object v8, v0, Lc/e/a/a/j/b/g;->g:Lc/e/a/a/j/w$a;

    iget-object v9, v7, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    .line 97
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->f()Landroid/net/Uri;

    move-result-object v10

    .line 98
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->e()Ljava/util/Map;

    move-result-object v11

    iget v12, v7, Lc/e/a/a/j/b/d;->b:I

    iget v13, v0, Lc/e/a/a/j/b/g;->a:I

    iget-object v14, v7, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    iget v15, v7, Lc/e/a/a/j/b/d;->d:I

    iget-object v3, v7, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    move-object/from16 v16, v3

    iget-wide v3, v7, Lc/e/a/a/j/b/d;->f:J

    move-wide/from16 v17, v3

    iget-wide v3, v7, Lc/e/a/a/j/b/d;->g:J

    move-wide/from16 v19, v3

    move-wide/from16 v21, p2

    move-wide/from16 v23, p4

    move-object/from16 v27, p6

    .line 99
    invoke-virtual/range {v8 .. v28}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v2, :cond_8

    .line 100
    iget-object v2, v0, Lc/e/a/a/j/b/g;->f:Lc/e/a/a/j/D$a;

    invoke-interface {v2, v0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    :cond_8
    return-object v1
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 0

    .line 4
    check-cast p1, Lc/e/a/a/j/b/d;

    invoke-virtual/range {p0 .. p7}, Lc/e/a/a/j/b/g;->a(Lc/e/a/a/j/b/d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 57
    iget-object v0, p0, Lc/e/a/a/j/b/g;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    .line 58
    iget-object v0, p0, Lc/e/a/a/j/b/g;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lc/e/a/a/j/b/g;->e:Lc/e/a/a/j/b/h;

    invoke-interface {v0}, Lc/e/a/a/j/b/h;->a()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, v0}, Lc/e/a/a/j/b/g;->a(II)I

    move-result p1

    .line 103
    iget v1, p0, Lc/e/a/a/j/b/g;->t:I

    .line 104
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_0

    .line 105
    iget-object v1, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-static {v1, v0, p1}, Lc/e/a/a/o/I;->a(Ljava/util/List;II)V

    .line 106
    iget v0, p0, Lc/e/a/a/j/b/g;->t:I

    sub-int/2addr v0, p1

    iput v0, p0, Lc/e/a/a/j/b/g;->t:I

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 11

    .line 22
    iput-wide p1, p0, Lc/e/a/a/j/b/g;->s:J

    .line 23
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iput-wide p1, p0, Lc/e/a/a/j/b/g;->r:J

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 25
    :goto_0
    iget-object v3, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 26
    iget-object v3, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/a/a/j/b/a;

    .line 27
    iget-wide v4, v3, Lc/e/a/a/j/b/d;->f:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_1

    .line 28
    iget-wide v6, v3, Lc/e/a/a/j/b/a;->j:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    cmp-long v3, v4, p1

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_3
    :goto_1
    iget-object v2, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {v2}, Lc/e/a/a/j/B;->n()V

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 30
    iget-object v3, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    .line 31
    invoke-virtual {v0, v1}, Lc/e/a/a/j/b/a;->a(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lc/e/a/a/j/B;->d(I)Z

    move-result v0

    const-wide/16 v3, 0x0

    .line 32
    iput-wide v3, p0, Lc/e/a/a/j/b/g;->u:J

    goto :goto_4

    .line 33
    :cond_4
    iget-object v0, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    .line 34
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->b()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 35
    :goto_2
    invoke-virtual {v0, p1, p2, v2, v3}, Lc/e/a/a/j/B;->a(JZZ)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 36
    :goto_3
    iget-wide v3, p0, Lc/e/a/a/j/b/g;->s:J

    iput-wide v3, p0, Lc/e/a/a/j/b/g;->u:J

    :goto_4
    if-eqz v0, :cond_7

    .line 37
    iget-object v0, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    .line 38
    invoke-virtual {v0}, Lc/e/a/a/j/B;->g()I

    move-result v0

    .line 39
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/j/b/g;->a(II)I

    move-result v0

    iput v0, p0, Lc/e/a/a/j/b/g;->t:I

    .line 40
    iget-object v0, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_9

    aget-object v5, v0, v4

    .line 41
    invoke-virtual {v5}, Lc/e/a/a/j/B;->n()V

    .line 42
    invoke-virtual {v5, p1, p2, v2, v1}, Lc/e/a/a/j/B;->a(JZZ)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 43
    :cond_7
    iput-wide p1, p0, Lc/e/a/a/j/b/g;->r:J

    .line 44
    iput-boolean v1, p0, Lc/e/a/a/j/b/g;->v:Z

    .line 45
    iget-object p1, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 46
    iput v1, p0, Lc/e/a/a/j/b/g;->t:I

    .line 47
    iget-object p1, p0, Lc/e/a/a/j/b/g;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 48
    iget-object p1, p0, Lc/e/a/a/j/b/g;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()V

    goto :goto_7

    .line 49
    :cond_8
    iget-object p1, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {p1}, Lc/e/a/a/j/B;->m()V

    .line 50
    iget-object p1, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    array-length p2, p1

    :goto_6
    if-ge v1, p2, :cond_9

    aget-object v0, p1, v1

    .line 51
    invoke-virtual {v0}, Lc/e/a/a/j/B;->m()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->d()I

    move-result v0

    .line 7
    iget-object v1, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lc/e/a/a/j/B;->b(JZZ)V

    .line 8
    iget-object p1, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {p1}, Lc/e/a/a/j/B;->d()I

    move-result p1

    if-le p1, v0, :cond_1

    .line 9
    iget-object p2, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {p2}, Lc/e/a/a/j/B;->e()J

    move-result-wide v0

    const/4 p2, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    array-length v3, v2

    if-ge p2, v3, :cond_1

    .line 11
    aget-object v2, v2, p2

    iget-object v3, p0, Lc/e/a/a/j/b/g;->d:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v0, v1, p3, v3}, Lc/e/a/a/j/B;->b(JZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lc/e/a/a/j/b/g;->a(I)V

    return-void
.end method

.method public a(Lc/e/a/a/j/b/d;JJ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 63
    iget-object v2, v0, Lc/e/a/a/j/b/g;->e:Lc/e/a/a/j/b/h;

    invoke-interface {v2, v1}, Lc/e/a/a/j/b/h;->a(Lc/e/a/a/j/b/d;)V

    .line 64
    iget-object v2, v0, Lc/e/a/a/j/b/g;->g:Lc/e/a/a/j/w$a;

    iget-object v3, v1, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->f()Landroid/net/Uri;

    move-result-object v4

    .line 66
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->e()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lc/e/a/a/j/b/d;->b:I

    iget v7, v0, Lc/e/a/a/j/b/g;->a:I

    iget-object v8, v1, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    iget v9, v1, Lc/e/a/a/j/b/d;->d:I

    iget-object v10, v1, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    iget-wide v11, v1, Lc/e/a/a/j/b/d;->f:J

    iget-wide v13, v1, Lc/e/a/a/j/b/d;->g:J

    .line 67
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->c()J

    move-result-wide v19

    .line 68
    invoke-virtual/range {v2 .. v20}, Lc/e/a/a/j/w$a;->b(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 69
    iget-object v1, v0, Lc/e/a/a/j/b/g;->f:Lc/e/a/a/j/D$a;

    invoke-interface {v1, v0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    return-void
.end method

.method public a(Lc/e/a/a/j/b/d;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 70
    iget-object v2, v0, Lc/e/a/a/j/b/g;->g:Lc/e/a/a/j/w$a;

    iget-object v3, v1, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    .line 71
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->f()Landroid/net/Uri;

    move-result-object v4

    .line 72
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->e()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lc/e/a/a/j/b/d;->b:I

    iget v7, v0, Lc/e/a/a/j/b/g;->a:I

    iget-object v8, v1, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    iget v9, v1, Lc/e/a/a/j/b/d;->d:I

    iget-object v10, v1, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    iget-wide v11, v1, Lc/e/a/a/j/b/d;->f:J

    iget-wide v13, v1, Lc/e/a/a/j/b/d;->g:J

    .line 73
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/b/d;->c()J

    move-result-wide v19

    .line 74
    invoke-virtual/range {v2 .. v20}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    .line 75
    iget-object v1, v0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {v1}, Lc/e/a/a/j/B;->m()V

    .line 76
    iget-object v1, v0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 77
    invoke-virtual {v4}, Lc/e/a/a/j/B;->m()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, v0, Lc/e/a/a/j/b/g;->f:Lc/e/a/a/j/D$a;

    invoke-interface {v1, v0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    :cond_1
    return-void
.end method

.method public a(Lc/e/a/a/j/b/g$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/b/g$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lc/e/a/a/j/b/g;->q:Lc/e/a/a/j/b/g$b;

    .line 53
    iget-object p1, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {p1}, Lc/e/a/a/j/B;->b()V

    .line 54
    iget-object p1, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 55
    invoke-virtual {v2}, Lc/e/a/a/j/B;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lc/e/a/a/j/b/g;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    .line 3
    check-cast p1, Lc/e/a/a/j/b/d;

    invoke-virtual/range {p0 .. p5}, Lc/e/a/a/j/b/g;->a(Lc/e/a/a/j/b/d;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    .line 2
    check-cast p1, Lc/e/a/a/j/b/d;

    invoke-virtual/range {p0 .. p6}, Lc/e/a/a/j/b/g;->a(Lc/e/a/a/j/b/d;JJZ)V

    return-void
.end method

.method public final a(Lc/e/a/a/j/b/d;)Z
    .locals 0

    .line 101
    instance-of p1, p1, Lc/e/a/a/j/b/a;

    return p1
.end method

.method public b()J
    .locals 2

    .line 25
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-wide v0, p0, Lc/e/a/a/j/b/g;->r:J

    return-wide v0

    .line 27
    :cond_0
    iget-boolean v0, p0, Lc/e/a/a/j/b/g;->v:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->j()Lc/e/a/a/j/b/a;

    move-result-object v0

    iget-wide v0, v0, Lc/e/a/a/j/b/d;->g:J

    :goto_0
    return-wide v0
.end method

.method public final b(I)Lc/e/a/a/j/b/a;
    .locals 3

    .line 28
    iget-object v0, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/j/b/a;

    .line 29
    iget-object v1, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lc/e/a/a/o/I;->a(Ljava/util/List;II)V

    .line 30
    iget p1, p0, Lc/e/a/a/j/b/g;->t:I

    iget-object v1, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lc/e/a/a/j/b/g;->t:I

    .line 32
    iget-object p1, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/e/a/a/j/b/a;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lc/e/a/a/j/B;->a(I)V

    .line 33
    :goto_0
    iget-object p1, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 34
    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lc/e/a/a/j/b/a;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lc/e/a/a/j/B;->a(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b(J)Z
    .locals 19

    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lc/e/a/a/j/b/g;->v:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, v0, Lc/e/a/a/j/b/g;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 5
    iget-wide v4, v0, Lc/e/a/a/j/b/g;->r:J

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, v0, Lc/e/a/a/j/b/g;->l:Ljava/util/List;

    .line 7
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/b/g;->j()Lc/e/a/a/j/b/a;

    move-result-object v4

    iget-wide v4, v4, Lc/e/a/a/j/b/d;->g:J

    :goto_0
    move-object v11, v3

    move-wide v9, v4

    .line 8
    iget-object v6, v0, Lc/e/a/a/j/b/g;->e:Lc/e/a/a/j/b/h;

    iget-object v12, v0, Lc/e/a/a/j/b/g;->j:Lc/e/a/a/j/b/f;

    move-wide/from16 v7, p1

    invoke-interface/range {v6 .. v12}, Lc/e/a/a/j/b/h;->a(JJLjava/util/List;Lc/e/a/a/j/b/f;)V

    .line 9
    iget-object v3, v0, Lc/e/a/a/j/b/g;->j:Lc/e/a/a/j/b/f;

    iget-boolean v4, v3, Lc/e/a/a/j/b/f;->b:Z

    .line 10
    iget-object v5, v3, Lc/e/a/a/j/b/f;->a:Lc/e/a/a/j/b/d;

    .line 11
    invoke-virtual {v3}, Lc/e/a/a/j/b/f;->a()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v4, :cond_2

    .line 12
    iput-wide v6, v0, Lc/e/a/a/j/b/g;->r:J

    .line 13
    iput-boolean v3, v0, Lc/e/a/a/j/b/g;->v:Z

    return v3

    :cond_2
    if-nez v5, :cond_3

    return v2

    .line 14
    :cond_3
    invoke-virtual {v0, v5}, Lc/e/a/a/j/b/g;->a(Lc/e/a/a/j/b/d;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 15
    move-object v4, v5

    check-cast v4, Lc/e/a/a/j/b/a;

    if-eqz v1, :cond_6

    .line 16
    iget-wide v8, v4, Lc/e/a/a/j/b/d;->f:J

    iget-wide v10, v0, Lc/e/a/a/j/b/g;->r:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    const-wide/16 v1, 0x0

    goto :goto_1

    .line 17
    :cond_5
    iget-wide v1, v0, Lc/e/a/a/j/b/g;->r:J

    :goto_1
    iput-wide v1, v0, Lc/e/a/a/j/b/g;->u:J

    .line 18
    iput-wide v6, v0, Lc/e/a/a/j/b/g;->r:J

    .line 19
    :cond_6
    iget-object v1, v0, Lc/e/a/a/j/b/g;->o:Lc/e/a/a/j/b/c;

    invoke-virtual {v4, v1}, Lc/e/a/a/j/b/a;->a(Lc/e/a/a/j/b/c;)V

    .line 20
    iget-object v1, v0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_7
    iget-object v1, v0, Lc/e/a/a/j/b/g;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, v0, Lc/e/a/a/j/b/g;->h:Lc/e/a/a/n/v;

    iget v4, v5, Lc/e/a/a/j/b/d;->b:I

    .line 22
    invoke-interface {v2, v4}, Lc/e/a/a/n/v;->a(I)I

    move-result v2

    .line 23
    invoke-virtual {v1, v5, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v17

    .line 24
    iget-object v6, v0, Lc/e/a/a/j/b/g;->g:Lc/e/a/a/j/w$a;

    iget-object v7, v5, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    iget v8, v5, Lc/e/a/a/j/b/d;->b:I

    iget v9, v0, Lc/e/a/a/j/b/g;->a:I

    iget-object v10, v5, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    iget v11, v5, Lc/e/a/a/j/b/d;->d:I

    iget-object v12, v5, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    iget-wide v13, v5, Lc/e/a/a/j/b/d;->f:J

    iget-wide v1, v5, Lc/e/a/a/j/b/d;->g:J

    move-wide v15, v1

    invoke-virtual/range {v6 .. v18}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return v3

    :cond_8
    :goto_2
    return v2
.end method

.method public c(J)V
    .locals 6

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/b/g;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5
    iget-object v1, p0, Lc/e/a/a/j/b/g;->e:Lc/e/a/a/j/b/h;

    iget-object v2, p0, Lc/e/a/a/j/b/g;->l:Ljava/util/List;

    invoke-interface {v1, p1, p2, v2}, Lc/e/a/a/j/b/h;->a(JLjava/util/List;)I

    move-result p1

    if-gt v0, p1, :cond_1

    return-void

    :cond_1
    :goto_0
    if-ge p1, v0, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lc/e/a/a/j/b/g;->c(I)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_1
    if-ne p1, v0, :cond_4

    return-void

    .line 7
    :cond_4
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->j()Lc/e/a/a/j/b/a;

    move-result-object p2

    iget-wide v4, p2, Lc/e/a/a/j/b/d;->g:J

    .line 8
    invoke-virtual {p0, p1}, Lc/e/a/a/j/b/g;->b(I)Lc/e/a/a/j/b/a;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 10
    iget-wide v0, p0, Lc/e/a/a/j/b/g;->s:J

    iput-wide v0, p0, Lc/e/a/a/j/b/g;->r:J

    :cond_5
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lc/e/a/a/j/b/g;->v:Z

    .line 12
    iget-object v0, p0, Lc/e/a/a/j/b/g;->g:Lc/e/a/a/j/w$a;

    iget v1, p0, Lc/e/a/a/j/b/g;->a:I

    iget-wide v2, p1, Lc/e/a/a/j/b/d;->f:J

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/j/w$a;->a(IJJ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/j/b/g;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->j()Z

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

.method public final c(I)Z
    .locals 5

    .line 13
    iget-object v0, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/j/b/a;

    .line 14
    iget-object v0, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->g()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lc/e/a/a/j/b/a;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    .line 15
    :cond_1
    iget-object v2, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 16
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lc/e/a/a/j/B;->g()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lc/e/a/a/j/b/a;->a(I)I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method public d(J)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lc/e/a/a/j/b/g;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->f()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 4
    iget-object p1, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {p1}, Lc/e/a/a/j/B;->a()I

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v2}, Lc/e/a/a/j/B;->a(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->l()V

    return v1
.end method

.method public final d(I)V
    .locals 8

    .line 7
    iget-object v0, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/j/b/a;

    .line 8
    iget-object v7, p1, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    .line 9
    iget-object v0, p0, Lc/e/a/a/j/b/g;->p:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lc/e/a/a/j/b/g;->g:Lc/e/a/a/j/w$a;

    iget v1, p0, Lc/e/a/a/j/b/g;->a:I

    iget v3, p1, Lc/e/a/a/j/b/d;->d:I

    iget-object v4, p1, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    iget-wide v5, p1, Lc/e/a/a/j/b/d;->f:J

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/j/w$a;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 11
    :cond_0
    iput-object v7, p0, Lc/e/a/a/j/b/g;->p:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public g()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/b/g;->v:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lc/e/a/a/j/b/g;->r:J

    return-wide v0

    .line 4
    :cond_1
    iget-wide v0, p0, Lc/e/a/a/j/b/g;->s:J

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/j/b/g;->j()Lc/e/a/a/j/b/a;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lc/e/a/a/j/b/l;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/b/a;

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
    iget-object v2, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {v2}, Lc/e/a/a/j/B;->f()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->m()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/b/g;->n:[Lc/e/a/a/j/B;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lc/e/a/a/j/B;->m()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/b/g;->q:Lc/e/a/a/j/b/g$b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p0}, Lc/e/a/a/j/b/g$b;->a(Lc/e/a/a/j/b/g;)V

    :cond_1
    return-void
.end method

.method public i()Lc/e/a/a/j/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/g;->e:Lc/e/a/a/j/b/h;

    return-object v0
.end method

.method public final j()Lc/e/a/a/j/b/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/j/b/a;

    return-object v0
.end method

.method public k()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/b/g;->r:J

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
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/g;->m:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->g()I

    move-result v0

    .line 2
    iget v1, p0, Lc/e/a/a/j/b/g;->t:I

    add-int/lit8 v1, v1, -0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/j/b/g;->a(II)I

    move-result v0

    .line 4
    :goto_0
    iget v1, p0, Lc/e/a/a/j/b/g;->t:I

    if-gt v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 5
    iput v2, p0, Lc/e/a/a/j/b/g;->t:I

    invoke-virtual {p0, v1}, Lc/e/a/a/j/b/g;->d(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc/e/a/a/j/b/g;->a(Lc/e/a/a/j/b/g$b;)V

    return-void
.end method
