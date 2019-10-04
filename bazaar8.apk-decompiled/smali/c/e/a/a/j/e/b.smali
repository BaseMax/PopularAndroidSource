.class public Lc/e/a/a/j/e/b;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lc/e/a/a/j/e/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/e/b$b;,
        Lc/e/a/a/j/e/b$a;
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/n/x;

.field public final b:I

.field public final c:Lc/e/a/a/l/n;

.field public final d:[Lc/e/a/a/j/b/e;

.field public final e:Lc/e/a/a/n/j;

.field public f:Lc/e/a/a/j/e/a/a;

.field public g:I

.field public h:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lc/e/a/a/n/x;Lc/e/a/a/j/e/a/a;ILc/e/a/a/l/n;Lc/e/a/a/n/j;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    .line 2
    iput-object v4, v0, Lc/e/a/a/j/e/b;->a:Lc/e/a/a/n/x;

    .line 3
    iput-object v1, v0, Lc/e/a/a/j/e/b;->f:Lc/e/a/a/j/e/a/a;

    .line 4
    iput v2, v0, Lc/e/a/a/j/e/b;->b:I

    .line 5
    iput-object v3, v0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    move-object/from16 v4, p5

    .line 6
    iput-object v4, v0, Lc/e/a/a/j/e/b;->e:Lc/e/a/a/n/j;

    .line 7
    iget-object v4, v1, Lc/e/a/a/j/e/a/a;->f:[Lc/e/a/a/j/e/a/a$b;

    aget-object v2, v4, v2

    .line 8
    invoke-interface/range {p4 .. p4}, Lc/e/a/a/l/n;->length()I

    move-result v4

    new-array v4, v4, [Lc/e/a/a/j/b/e;

    iput-object v4, v0, Lc/e/a/a/j/e/b;->d:[Lc/e/a/a/j/b/e;

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget-object v6, v0, Lc/e/a/a/j/e/b;->d:[Lc/e/a/a/j/b/e;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 10
    invoke-interface {v3, v5}, Lc/e/a/a/l/n;->b(I)I

    move-result v8

    .line 11
    iget-object v6, v2, Lc/e/a/a/j/e/a/a$b;->j:[Lcom/google/android/exoplayer2/Format;

    aget-object v6, v6, v8

    .line 12
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v14, 0x0

    if-eqz v7, :cond_0

    iget-object v7, v1, Lc/e/a/a/j/e/a/a;->e:Lc/e/a/a/j/e/a/a$a;

    iget-object v7, v7, Lc/e/a/a/j/e/a/a$a;->c:[Lc/e/a/a/e/e/o;

    move-object/from16 v18, v7

    goto :goto_1

    :cond_0
    move-object/from16 v18, v14

    .line 13
    :goto_1
    iget v7, v2, Lc/e/a/a/j/e/a/a$b;->a:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    const/4 v7, 0x4

    const/16 v19, 0x4

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    .line 14
    :goto_2
    new-instance v15, Lc/e/a/a/e/e/n;

    iget v9, v2, Lc/e/a/a/j/e/a/a$b;->a:I

    iget-wide v10, v2, Lc/e/a/a/j/e/a/a$b;->c:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 p3, v5

    iget-wide v4, v1, Lc/e/a/a/j/e/a/a;->g:J

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v15

    move-object/from16 v22, v15

    move-wide v14, v4

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v21}, Lc/e/a/a/e/e/n;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lc/e/a/a/e/e/o;I[J[J)V

    .line 15
    new-instance v4, Lc/e/a/a/e/e/h;

    const/4 v5, 0x3

    move-object/from16 v7, v22

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v7, v8}, Lc/e/a/a/e/e/h;-><init>(ILc/e/a/a/o/F;Lc/e/a/a/e/e/n;Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 16
    iget-object v5, v0, Lc/e/a/a/j/e/b;->d:[Lc/e/a/a/j/b/e;

    new-instance v7, Lc/e/a/a/j/b/e;

    iget v8, v2, Lc/e/a/a/j/e/a/a$b;->a:I

    invoke-direct {v7, v4, v8, v6}, Lc/e/a/a/j/b/e;-><init>(Lc/e/a/a/e/g;ILcom/google/android/exoplayer2/Format;)V

    aput-object v7, v5, p3

    add-int/lit8 v5, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/Format;Lc/e/a/a/n/j;Landroid/net/Uri;Ljava/lang/String;IJJJILjava/lang/Object;Lc/e/a/a/j/b/e;)Lc/e/a/a/j/b/l;
    .locals 21

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p5

    move-wide/from16 v17, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v19, p13

    .line 55
    new-instance v0, Lc/e/a/a/n/l;

    move-object v2, v0

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 p5, v0

    move-object/from16 p6, p2

    move-wide/from16 p7, v12

    move-wide/from16 p9, v14

    move-object/from16 p11, p3

    invoke-direct/range {p5 .. p11}, Lc/e/a/a/n/l;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 56
    new-instance v20, Lc/e/a/a/j/b/i;

    move-object/from16 v0, v20

    move/from16 v12, p4

    int-to-long v14, v12

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v16, 0x1

    invoke-direct/range {v0 .. v19}, Lc/e/a/a/j/b/i;-><init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJIJLc/e/a/a/j/b/e;)V

    return-object v20
.end method


# virtual methods
.method public a(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lc/e/a/a/j/b/l;",
            ">;)I"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lc/e/a/a/j/e/b;->h:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    invoke-interface {v0}, Lc/e/a/a/l/n;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    invoke-interface {v0, p1, p2, p3}, Lc/e/a/a/l/n;->a(JLjava/util/List;)I

    move-result p1

    return p1

    .line 23
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final a(J)J
    .locals 4

    .line 57
    iget-object v0, p0, Lc/e/a/a/j/e/b;->f:Lc/e/a/a/j/e/a/a;

    iget-boolean v1, v0, Lc/e/a/a/j/e/a/a;->d:Z

    if-nez v1, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    .line 58
    :cond_0
    iget-object v0, v0, Lc/e/a/a/j/e/a/a;->f:[Lc/e/a/a/j/e/a/a$b;

    iget v1, p0, Lc/e/a/a/j/e/b;->b:I

    aget-object v0, v0, v1

    .line 59
    iget v1, v0, Lc/e/a/a/j/e/a/a$b;->k:I

    add-int/lit8 v1, v1, -0x1

    .line 60
    invoke-virtual {v0, v1}, Lc/e/a/a/j/e/a/a$b;->b(I)J

    move-result-wide v2

    .line 61
    invoke-virtual {v0, v1}, Lc/e/a/a/j/e/a/a$b;->a(I)J

    move-result-wide v0

    add-long/2addr v2, v0

    sub-long/2addr v2, p1

    return-wide v2
.end method

.method public a(JLc/e/a/a/V;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/e/b;->f:Lc/e/a/a/j/e/a/a;

    iget-object v0, v0, Lc/e/a/a/j/e/a/a;->f:[Lc/e/a/a/j/e/a/a$b;

    iget v1, p0, Lc/e/a/a/j/e/b;->b:I

    aget-object v0, v0, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lc/e/a/a/j/e/a/a$b;->a(J)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lc/e/a/a/j/e/a/a$b;->b(I)J

    move-result-wide v5

    cmp-long v2, v5, p1

    if-gez v2, :cond_0

    .line 4
    iget v2, v0, Lc/e/a/a/j/e/a/a$b;->k:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lc/e/a/a/j/e/a/a$b;->b(I)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    move-wide v2, p1

    move-object v4, p3

    .line 6
    invoke-static/range {v2 .. v8}, Lc/e/a/a/o/I;->a(JLc/e/a/a/V;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()V
    .locals 1

    .line 18
    iget-object v0, p0, Lc/e/a/a/j/e/b;->h:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lc/e/a/a/j/e/b;->a:Lc/e/a/a/n/x;

    invoke-interface {v0}, Lc/e/a/a/n/x;->a()V

    return-void

    .line 20
    :cond_0
    throw v0
.end method

.method public final a(JJLjava/util/List;Lc/e/a/a/j/b/f;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lc/e/a/a/j/b/l;",
            ">;",
            "Lc/e/a/a/j/b/f;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    .line 24
    iget-object v4, v0, Lc/e/a/a/j/e/b;->h:Ljava/io/IOException;

    if-eqz v4, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v4, v0, Lc/e/a/a/j/e/b;->f:Lc/e/a/a/j/e/a/a;

    iget-object v5, v4, Lc/e/a/a/j/e/a/a;->f:[Lc/e/a/a/j/e/a/a$b;

    iget v6, v0, Lc/e/a/a/j/e/b;->b:I

    aget-object v5, v5, v6

    .line 26
    iget v6, v5, Lc/e/a/a/j/e/a/a$b;->k:I

    if-nez v6, :cond_1

    .line 27
    iget-boolean v1, v4, Lc/e/a/a/j/e/a/a;->d:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v3, Lc/e/a/a/j/b/f;->b:Z

    return-void

    .line 28
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    invoke-virtual {v5, v1, v2}, Lc/e/a/a/j/e/a/a$b;->a(J)I

    move-result v4

    move-object/from16 v15, p5

    goto :goto_0

    .line 30
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v15, p5

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/a/j/b/l;

    invoke-virtual {v4}, Lc/e/a/a/j/b/l;->g()J

    move-result-wide v6

    iget v4, v0, Lc/e/a/a/j/e/b;->g:I

    int-to-long v8, v4

    sub-long/2addr v6, v8

    long-to-int v4, v6

    if-gez v4, :cond_3

    .line 31
    new-instance v1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v1, v0, Lc/e/a/a/j/e/b;->h:Ljava/io/IOException;

    return-void

    .line 32
    :cond_3
    :goto_0
    iget v6, v5, Lc/e/a/a/j/e/a/a$b;->k:I

    if-lt v4, v6, :cond_4

    .line 33
    iget-object v1, v0, Lc/e/a/a/j/e/b;->f:Lc/e/a/a/j/e/a/a;

    iget-boolean v1, v1, Lc/e/a/a/j/e/a/a;->d:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v3, Lc/e/a/a/j/b/f;->b:Z

    return-void

    :cond_4
    sub-long v9, v1, p1

    .line 34
    invoke-virtual/range {p0 .. p2}, Lc/e/a/a/j/e/b;->a(J)J

    move-result-wide v11

    .line 35
    iget-object v6, v0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    invoke-interface {v6}, Lc/e/a/a/l/n;->length()I

    move-result v6

    new-array v14, v6, [Lc/e/a/a/j/b/n;

    const/4 v6, 0x0

    .line 36
    :goto_1
    array-length v7, v14

    if-ge v6, v7, :cond_5

    .line 37
    iget-object v7, v0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    invoke-interface {v7, v6}, Lc/e/a/a/l/n;->b(I)I

    move-result v7

    .line 38
    new-instance v8, Lc/e/a/a/j/e/b$b;

    invoke-direct {v8, v5, v7, v4}, Lc/e/a/a/j/e/b$b;-><init>(Lc/e/a/a/j/e/a/a$b;II)V

    aput-object v8, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 39
    :cond_5
    iget-object v6, v0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    move-wide/from16 v7, p1

    move-object/from16 v13, p5

    invoke-interface/range {v6 .. v14}, Lc/e/a/a/l/n;->a(JJJLjava/util/List;[Lc/e/a/a/j/b/n;)V

    .line 40
    invoke-virtual {v5, v4}, Lc/e/a/a/j/e/a/a$b;->b(I)J

    move-result-wide v20

    .line 41
    invoke-virtual {v5, v4}, Lc/e/a/a/j/e/a/a$b;->a(I)J

    move-result-wide v6

    add-long v22, v20, v6

    .line 42
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    move-wide/from16 v24, v1

    .line 43
    iget v1, v0, Lc/e/a/a/j/e/b;->g:I

    add-int v19, v4, v1

    .line 44
    iget-object v1, v0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    invoke-interface {v1}, Lc/e/a/a/l/n;->b()I

    move-result v1

    .line 45
    iget-object v2, v0, Lc/e/a/a/j/e/b;->d:[Lc/e/a/a/j/b/e;

    aget-object v28, v2, v1

    .line 46
    iget-object v2, v0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    invoke-interface {v2, v1}, Lc/e/a/a/l/n;->b(I)I

    move-result v1

    .line 47
    invoke-virtual {v5, v1, v4}, Lc/e/a/a/j/e/a/a$b;->a(II)Landroid/net/Uri;

    move-result-object v17

    .line 48
    iget-object v1, v0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    .line 49
    invoke-interface {v1}, Lc/e/a/a/l/n;->f()Lcom/google/android/exoplayer2/Format;

    move-result-object v15

    iget-object v1, v0, Lc/e/a/a/j/e/b;->e:Lc/e/a/a/n/j;

    const/16 v18, 0x0

    iget-object v2, v0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    .line 50
    invoke-interface {v2}, Lc/e/a/a/l/n;->g()I

    move-result v26

    iget-object v2, v0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    .line 51
    invoke-interface {v2}, Lc/e/a/a/l/n;->h()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v16, v1

    .line 52
    invoke-static/range {v15 .. v28}, Lc/e/a/a/j/e/b;->a(Lcom/google/android/exoplayer2/Format;Lc/e/a/a/n/j;Landroid/net/Uri;Ljava/lang/String;IJJJILjava/lang/Object;Lc/e/a/a/j/b/e;)Lc/e/a/a/j/b/l;

    move-result-object v1

    iput-object v1, v3, Lc/e/a/a/j/b/f;->a:Lc/e/a/a/j/b/d;

    return-void
.end method

.method public a(Lc/e/a/a/j/b/d;)V
    .locals 0

    return-void
.end method

.method public a(Lc/e/a/a/j/e/a/a;)V
    .locals 8

    .line 7
    iget-object v0, p0, Lc/e/a/a/j/e/b;->f:Lc/e/a/a/j/e/a/a;

    iget-object v0, v0, Lc/e/a/a/j/e/a/a;->f:[Lc/e/a/a/j/e/a/a$b;

    iget v1, p0, Lc/e/a/a/j/e/b;->b:I

    aget-object v0, v0, v1

    .line 8
    iget v2, v0, Lc/e/a/a/j/e/a/a$b;->k:I

    .line 9
    iget-object v3, p1, Lc/e/a/a/j/e/a/a;->f:[Lc/e/a/a/j/e/a/a$b;

    aget-object v1, v3, v1

    if-eqz v2, :cond_2

    .line 10
    iget v3, v1, Lc/e/a/a/j/e/a/a$b;->k:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    .line 11
    invoke-virtual {v0, v3}, Lc/e/a/a/j/e/a/a$b;->b(I)J

    move-result-wide v4

    .line 12
    invoke-virtual {v0, v3}, Lc/e/a/a/j/e/a/a$b;->a(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v3}, Lc/e/a/a/j/e/a/a$b;->b(I)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    .line 14
    iget v0, p0, Lc/e/a/a/j/e/b;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lc/e/a/a/j/e/b;->g:I

    goto :goto_1

    .line 15
    :cond_1
    iget v1, p0, Lc/e/a/a/j/e/b;->g:I

    invoke-virtual {v0, v6, v7}, Lc/e/a/a/j/e/a/a$b;->a(J)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lc/e/a/a/j/e/b;->g:I

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    iget v0, p0, Lc/e/a/a/j/e/b;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lc/e/a/a/j/e/b;->g:I

    .line 17
    :goto_1
    iput-object p1, p0, Lc/e/a/a/j/e/b;->f:Lc/e/a/a/j/e/a/a;

    return-void
.end method

.method public a(Lc/e/a/a/j/b/d;ZLjava/lang/Exception;J)Z
    .locals 1

    if-eqz p2, :cond_0

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p4, p2

    if-eqz v0, :cond_0

    .line 53
    iget-object p2, p0, Lc/e/a/a/j/e/b;->c:Lc/e/a/a/l/n;

    iget-object p1, p1, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    .line 54
    invoke-interface {p2, p1}, Lc/e/a/a/l/n;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    invoke-interface {p2, p1, p4, p5}, Lc/e/a/a/l/n;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
