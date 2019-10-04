.class public final Lc/e/a/a/I;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# instance fields
.field public final a:Lc/e/a/a/Z$a;

.field public final b:Lc/e/a/a/Z$b;

.field public c:J

.field public d:Lc/e/a/a/Z;

.field public e:I

.field public f:Z

.field public g:Lc/e/a/a/G;

.field public h:Lc/e/a/a/G;

.field public i:Lc/e/a/a/G;

.field public j:I

.field public k:Ljava/lang/Object;

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/a/Z$a;

    invoke-direct {v0}, Lc/e/a/a/Z$a;-><init>()V

    iput-object v0, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    .line 3
    new-instance v0, Lc/e/a/a/Z$b;

    invoke-direct {v0}, Lc/e/a/a/Z$b;-><init>()V

    iput-object v0, p0, Lc/e/a/a/I;->b:Lc/e/a/a/Z$b;

    .line 4
    sget-object v0, Lc/e/a/a/Z;->a:Lc/e/a/a/Z;

    iput-object v0, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)J
    .locals 5

    .line 62
    iget-object v0, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v1, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v0, p1, v1}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    move-result-object v0

    iget v0, v0, Lc/e/a/a/Z$a;->c:I

    .line 63
    iget-object v1, p0, Lc/e/a/a/I;->k:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 64
    iget-object v3, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    invoke-virtual {v3, v1}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 65
    iget-object v3, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v4, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v3, v1, v4}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    move-result-object v1

    iget v1, v1, Lc/e/a/a/Z$a;->c:I

    if-ne v1, v0, :cond_0

    .line 66
    iget-wide v0, p0, Lc/e/a/a/I;->l:J

    return-wide v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/I;->c()Lc/e/a/a/G;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 68
    iget-object v3, v1, Lc/e/a/a/G;->b:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    iget-object p1, v1, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object p1, p1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-wide v0, p1, Lc/e/a/a/j/v$a;->d:J

    return-wide v0

    .line 70
    :cond_1
    invoke-virtual {v1}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lc/e/a/a/I;->c()Lc/e/a/a/G;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 72
    iget-object v1, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v3, p1, Lc/e/a/a/G;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 73
    iget-object v3, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v4, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v3, v1, v4}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    move-result-object v1

    iget v1, v1, Lc/e/a/a/Z$a;->c:I

    if-ne v1, v0, :cond_3

    .line 74
    iget-object p1, p1, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object p1, p1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-wide v0, p1, Lc/e/a/a/j/v$a;->d:J

    return-wide v0

    .line 75
    :cond_3
    invoke-virtual {p1}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object p1

    goto :goto_1

    .line 76
    :cond_4
    iget-wide v0, p0, Lc/e/a/a/I;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lc/e/a/a/I;->c:J

    return-wide v0
.end method

.method public a()Lc/e/a/a/G;
    .locals 2

    .line 20
    iget-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    if-eqz v0, :cond_2

    .line 21
    iget-object v1, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    if-ne v0, v1, :cond_0

    .line 22
    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    .line 23
    :cond_0
    iget-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    invoke-virtual {v0}, Lc/e/a/a/G;->l()V

    .line 24
    iget v0, p0, Lc/e/a/a/I;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/e/a/a/I;->j:I

    .line 25
    iget v0, p0, Lc/e/a/a/I;->j:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    .line 27
    iget-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    iget-object v1, v0, Lc/e/a/a/G;->b:Ljava/lang/Object;

    iput-object v1, p0, Lc/e/a/a/I;->k:Ljava/lang/Object;

    .line 28
    iget-object v0, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object v0, v0, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-wide v0, v0, Lc/e/a/a/j/v$a;->d:J

    iput-wide v0, p0, Lc/e/a/a/I;->l:J

    .line 29
    :cond_1
    iget-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    iput-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    .line 31
    iput-object v0, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    .line 32
    :goto_0
    iget-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    return-object v0
.end method

.method public a(JLc/e/a/a/J;)Lc/e/a/a/H;
    .locals 1

    .line 7
    iget-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p3}, Lc/e/a/a/I;->a(Lc/e/a/a/J;)Lc/e/a/a/H;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lc/e/a/a/I;->a(Lc/e/a/a/G;J)Lc/e/a/a/H;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final a(Lc/e/a/a/G;J)Lc/e/a/a/H;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 79
    iget-object v1, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    .line 80
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/G;->f()J

    move-result-wide v2

    iget-wide v4, v1, Lc/e/a/a/H;->e:J

    add-long/2addr v2, v4

    sub-long v2, v2, p2

    .line 81
    iget-boolean v4, v1, Lc/e/a/a/H;->f:Z

    const/4 v5, 0x1

    const/4 v6, -0x1

    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 82
    iget-object v4, v8, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v11, v1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-object v11, v11, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v11}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v13

    .line 83
    iget-object v12, v8, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v14, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    iget-object v15, v8, Lc/e/a/a/I;->b:Lc/e/a/a/Z$b;

    iget v4, v8, Lc/e/a/a/I;->e:I

    iget-boolean v11, v8, Lc/e/a/a/I;->f:Z

    move/from16 v16, v4

    move/from16 v17, v11

    .line 84
    invoke-virtual/range {v12 .. v17}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$a;Lc/e/a/a/Z$b;IZ)I

    move-result v4

    if-ne v4, v6, :cond_0

    return-object v7

    .line 85
    :cond_0
    iget-object v6, v8, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v11, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    .line 86
    invoke-virtual {v6, v4, v11, v5}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$a;Z)Lc/e/a/a/Z$a;

    move-result-object v5

    iget v14, v5, Lc/e/a/a/Z$a;->c:I

    .line 87
    iget-object v5, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    iget-object v5, v5, Lc/e/a/a/Z$a;->b:Ljava/lang/Object;

    .line 88
    iget-object v1, v1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-wide v11, v1, Lc/e/a/a/j/v$a;->d:J

    .line 89
    iget-object v1, v8, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v6, v8, Lc/e/a/a/I;->b:Lc/e/a/a/Z$b;

    invoke-virtual {v1, v14, v6}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object v1

    iget v1, v1, Lc/e/a/a/Z$b;->f:I

    if-ne v1, v4, :cond_3

    .line 90
    iget-object v11, v8, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v12, v8, Lc/e/a/a/I;->b:Lc/e/a/a/Z$b;

    iget-object v13, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 91
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    .line 92
    invoke-virtual/range {v11 .. v18}, Lc/e/a/a/Z;->a(Lc/e/a/a/Z$b;Lc/e/a/a/Z$a;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v7

    .line 93
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 94
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 95
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v1, v0, Lc/e/a/a/G;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    iget-object v0, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object v0, v0, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-wide v0, v0, Lc/e/a/a/j/v$a;->d:J

    goto :goto_0

    .line 98
    :cond_2
    iget-wide v0, v8, Lc/e/a/a/I;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, v8, Lc/e/a/a/I;->c:J

    :goto_0
    move-wide v9, v3

    move-wide v4, v0

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v5

    move-wide v4, v11

    :goto_1
    move-object/from16 v0, p0

    move-wide v2, v9

    .line 99
    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/I;->b(Ljava/lang/Object;JJ)Lc/e/a/a/j/v$a;

    move-result-object v1

    move-wide v4, v9

    .line 100
    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/I;->a(Lc/e/a/a/j/v$a;JJ)Lc/e/a/a/H;

    move-result-object v0

    return-object v0

    .line 101
    :cond_4
    iget-object v0, v1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    .line 102
    iget-object v4, v8, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v11, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-object v12, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v4, v11, v12}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    .line 103
    invoke-virtual {v0}, Lc/e/a/a/j/v$a;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 104
    iget v4, v0, Lc/e/a/a/j/v$a;->b:I

    .line 105
    iget-object v11, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v11, v4}, Lc/e/a/a/Z$a;->a(I)I

    move-result v11

    if-ne v11, v6, :cond_5

    return-object v7

    .line 106
    :cond_5
    iget-object v6, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    iget v12, v0, Lc/e/a/a/j/v$a;->c:I

    .line 107
    invoke-virtual {v6, v4, v12}, Lc/e/a/a/Z$a;->b(II)I

    move-result v6

    if-ge v6, v11, :cond_7

    .line 108
    iget-object v2, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v2, v4, v6}, Lc/e/a/a/Z$a;->c(II)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-wide v9, v1, Lc/e/a/a/H;->c:J

    iget-wide v11, v0, Lc/e/a/a/j/v$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move v3, v6

    move-wide v4, v9

    move-wide v6, v11

    .line 109
    invoke-virtual/range {v0 .. v7}, Lc/e/a/a/I;->a(Ljava/lang/Object;IIJJ)Lc/e/a/a/H;

    move-result-object v7

    :goto_2
    return-object v7

    .line 110
    :cond_7
    iget-wide v11, v1, Lc/e/a/a/H;->c:J

    .line 111
    iget-object v1, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v1}, Lc/e/a/a/Z$a;->a()I

    move-result v1

    if-ne v1, v5, :cond_9

    iget-object v1, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lc/e/a/a/Z$a;->b(I)J

    move-result-wide v4

    cmp-long v1, v4, v9

    if-nez v1, :cond_9

    .line 112
    iget-object v13, v8, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v14, v8, Lc/e/a/a/I;->b:Lc/e/a/a/Z$b;

    iget-object v15, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    iget v1, v15, Lc/e/a/a/Z$a;->c:I

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 113
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    move/from16 v16, v1

    .line 114
    invoke-virtual/range {v13 .. v20}, Lc/e/a/a/Z;->a(Lc/e/a/a/Z$b;Lc/e/a/a/Z$a;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v7

    .line 115
    :cond_8
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_3

    :cond_9
    move-wide v2, v11

    .line 116
    :goto_3
    iget-object v1, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-wide v4, v0, Lc/e/a/a/j/v$a;->d:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/I;->a(Ljava/lang/Object;JJ)Lc/e/a/a/H;

    move-result-object v0

    return-object v0

    .line 117
    :cond_a
    iget-object v2, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    iget-wide v3, v1, Lc/e/a/a/H;->d:J

    invoke-virtual {v2, v3, v4}, Lc/e/a/a/Z$a;->b(J)I

    move-result v2

    if-ne v2, v6, :cond_b

    .line 118
    iget-object v2, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-wide v3, v1, Lc/e/a/a/H;->e:J

    iget-wide v5, v0, Lc/e/a/a/j/v$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/I;->a(Ljava/lang/Object;JJ)Lc/e/a/a/H;

    move-result-object v0

    return-object v0

    .line 119
    :cond_b
    iget-object v3, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v3, v2}, Lc/e/a/a/Z$a;->c(I)I

    move-result v3

    .line 120
    iget-object v4, v8, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v4, v2, v3}, Lc/e/a/a/Z$a;->c(II)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    iget-object v4, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-wide v5, v1, Lc/e/a/a/H;->e:J

    iget-wide v9, v0, Lc/e/a/a/j/v$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v9

    .line 121
    invoke-virtual/range {v0 .. v7}, Lc/e/a/a/I;->a(Ljava/lang/Object;IIJJ)Lc/e/a/a/H;

    move-result-object v7

    :goto_4
    return-object v7
.end method

.method public a(Lc/e/a/a/H;)Lc/e/a/a/H;
    .locals 13

    .line 52
    iget-object v1, p1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    .line 53
    invoke-virtual {p0, v1}, Lc/e/a/a/I;->a(Lc/e/a/a/j/v$a;)Z

    move-result v10

    .line 54
    invoke-virtual {p0, v1, v10}, Lc/e/a/a/I;->a(Lc/e/a/a/j/v$a;Z)Z

    move-result v11

    .line 55
    iget-object v0, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v2, p1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-object v2, v2, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v0, v2, v3}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    .line 56
    invoke-virtual {v1}, Lc/e/a/a/j/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    iget v2, v1, Lc/e/a/a/j/v$a;->b:I

    iget v3, v1, Lc/e/a/a/j/v$a;->c:I

    .line 57
    invoke-virtual {v0, v2, v3}, Lc/e/a/a/Z$a;->a(II)J

    move-result-wide v2

    :cond_0
    :goto_0
    move-wide v8, v2

    goto :goto_1

    :cond_1
    iget-wide v2, p1, Lc/e/a/a/H;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    .line 58
    invoke-virtual {v0}, Lc/e/a/a/Z$a;->c()J

    move-result-wide v2

    goto :goto_0

    .line 59
    :goto_1
    new-instance v12, Lc/e/a/a/H;

    iget-wide v2, p1, Lc/e/a/a/H;->b:J

    iget-wide v4, p1, Lc/e/a/a/H;->c:J

    iget-wide v6, p1, Lc/e/a/a/H;->d:J

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lc/e/a/a/H;-><init>(Lc/e/a/a/j/v$a;JJJJZZ)V

    return-object v12
.end method

.method public final a(Lc/e/a/a/J;)Lc/e/a/a/H;
    .locals 6

    .line 78
    iget-object v1, p1, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-wide v2, p1, Lc/e/a/a/J;->f:J

    iget-wide v4, p1, Lc/e/a/a/J;->e:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/I;->a(Lc/e/a/a/j/v$a;JJ)Lc/e/a/a/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/a/a/j/v$a;JJ)Lc/e/a/a/H;
    .locals 8

    .line 122
    iget-object v0, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v1, p1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    .line 123
    invoke-virtual {p1}, Lc/e/a/a/j/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object p4, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    iget p5, p1, Lc/e/a/a/j/v$a;->b:I

    iget v0, p1, Lc/e/a/a/j/v$a;->c:I

    invoke-virtual {p4, p5, v0}, Lc/e/a/a/Z$a;->c(II)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 125
    :cond_0
    iget-object v1, p1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget v2, p1, Lc/e/a/a/j/v$a;->b:I

    iget v3, p1, Lc/e/a/a/j/v$a;->c:I

    iget-wide v6, p1, Lc/e/a/a/j/v$a;->d:J

    move-object v0, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lc/e/a/a/I;->a(Ljava/lang/Object;IIJJ)Lc/e/a/a/H;

    move-result-object p1

    return-object p1

    .line 126
    :cond_1
    iget-object v1, p1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-wide v4, p1, Lc/e/a/a/j/v$a;->d:J

    move-object v0, p0

    move-wide v2, p4

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/I;->a(Ljava/lang/Object;JJ)Lc/e/a/a/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;IIJJ)Lc/e/a/a/H;
    .locals 16

    move-object/from16 v0, p0

    .line 127
    new-instance v7, Lc/e/a/a/j/v$a;

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lc/e/a/a/j/v$a;-><init>(Ljava/lang/Object;IIJ)V

    .line 128
    iget-object v1, v0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v2, v7, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-object v3, v0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    .line 129
    invoke-virtual {v1, v2, v3}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    move-result-object v1

    iget v2, v7, Lc/e/a/a/j/v$a;->b:I

    iget v3, v7, Lc/e/a/a/j/v$a;->c:I

    .line 130
    invoke-virtual {v1, v2, v3}, Lc/e/a/a/Z$a;->a(II)J

    move-result-wide v9

    .line 131
    iget-object v1, v0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    move/from16 v2, p2

    .line 132
    invoke-virtual {v1, v2}, Lc/e/a/a/Z$a;->c(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    .line 133
    invoke-virtual {v1}, Lc/e/a/a/Z$a;->b()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v3, v1

    .line 134
    new-instance v13, Lc/e/a/a/H;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v5, p4

    move-wide v7, v11

    move v11, v14

    move v12, v15

    invoke-direct/range {v1 .. v12}, Lc/e/a/a/H;-><init>(Lc/e/a/a/j/v$a;JJJJZZ)V

    return-object v13
.end method

.method public final a(Ljava/lang/Object;JJ)Lc/e/a/a/H;
    .locals 14

    move-object v0, p0

    .line 135
    iget-object v1, v0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Lc/e/a/a/Z$a;->a(J)I

    move-result v1

    .line 136
    new-instance v3, Lc/e/a/a/j/v$a;

    move-object v2, p1

    move-wide/from16 v6, p4

    invoke-direct {v3, p1, v6, v7, v1}, Lc/e/a/a/j/v$a;-><init>(Ljava/lang/Object;JI)V

    .line 137
    invoke-virtual {p0, v3}, Lc/e/a/a/I;->a(Lc/e/a/a/j/v$a;)Z

    move-result v12

    .line 138
    invoke-virtual {p0, v3, v12}, Lc/e/a/a/I;->a(Lc/e/a/a/j/v$a;Z)Z

    move-result v13

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 139
    iget-object v2, v0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    .line 140
    invoke-virtual {v2, v1}, Lc/e/a/a/Z$a;->b(I)J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    cmp-long v1, v8, v6

    if-eqz v1, :cond_2

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v6, v8, v1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v10, v8

    goto :goto_2

    .line 141
    :cond_2
    :goto_1
    iget-object v1, v0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    iget-wide v1, v1, Lc/e/a/a/Z$a;->d:J

    move-wide v10, v1

    .line 142
    :goto_2
    new-instance v1, Lc/e/a/a/H;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v13}, Lc/e/a/a/H;-><init>(Lc/e/a/a/j/v$a;JJJJZZ)V

    return-object v1
.end method

.method public a([Lc/e/a/a/S;Lc/e/a/a/l/r;Lc/e/a/a/n/e;Lc/e/a/a/j/v;Lc/e/a/a/H;)Lc/e/a/a/j/u;
    .locals 10

    .line 10
    iget-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    if-nez v0, :cond_0

    iget-wide v0, p5, Lc/e/a/a/H;->b:J

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lc/e/a/a/G;->f()J

    move-result-wide v0

    iget-object v2, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    iget-object v2, v2, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v2, v2, Lc/e/a/a/H;->e:J

    add-long/2addr v0, v2

    :goto_0
    move-wide v4, v0

    .line 12
    new-instance v0, Lc/e/a/a/G;

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lc/e/a/a/G;-><init>([Lc/e/a/a/S;JLc/e/a/a/l/r;Lc/e/a/a/n/e;Lc/e/a/a/j/v;Lc/e/a/a/H;)V

    .line 13
    iget-object p1, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Lc/e/a/a/I;->g()Z

    move-result p1

    invoke-static {p1}, Lc/e/a/a/o/e;->b(Z)V

    .line 15
    iget-object p1, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    invoke-virtual {p1, v0}, Lc/e/a/a/G;->a(Lc/e/a/a/G;)V

    :cond_1
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lc/e/a/a/I;->k:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    .line 18
    iget p1, p0, Lc/e/a/a/I;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/a/a/I;->j:I

    .line 19
    iget-object p1, v0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    return-object p1
.end method

.method public a(Ljava/lang/Object;J)Lc/e/a/a/j/v$a;
    .locals 6

    .line 60
    invoke-virtual {p0, p1}, Lc/e/a/a/I;->a(Ljava/lang/Object;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 61
    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/I;->b(Ljava/lang/Object;JJ)Lc/e/a/a/j/v$a;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lc/e/a/a/G;->b(J)V

    :cond_0
    return-void
.end method

.method public a(Lc/e/a/a/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 42
    invoke-virtual {p0}, Lc/e/a/a/I;->c()Lc/e/a/a/G;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, v0, Lc/e/a/a/G;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lc/e/a/a/I;->k:Ljava/lang/Object;

    .line 44
    iget-object p1, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object p1, p1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-wide v2, p1, Lc/e/a/a/j/v$a;->d:J

    iput-wide v2, p0, Lc/e/a/a/I;->l:J

    .line 45
    invoke-virtual {v0}, Lc/e/a/a/G;->l()V

    .line 46
    invoke-virtual {p0, v0}, Lc/e/a/a/I;->a(Lc/e/a/a/G;)Z

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 47
    iput-object v1, p0, Lc/e/a/a/I;->k:Ljava/lang/Object;

    .line 48
    :cond_2
    :goto_1
    iput-object v1, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    .line 49
    iput-object v1, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    .line 50
    iput-object v1, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lc/e/a/a/I;->j:I

    return-void
.end method

.method public a(I)Z
    .locals 0

    .line 2
    iput p1, p0, Lc/e/a/a/I;->e:I

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/I;->i()Z

    move-result p1

    return p1
.end method

.method public final a(JJ)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

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

.method public a(Lc/e/a/a/G;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-static {v2}, Lc/e/a/a/o/e;->b(Z)V

    .line 34
    iput-object p1, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    .line 35
    :goto_1
    invoke-virtual {p1}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {p1}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object p1

    .line 37
    iget-object v2, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    if-ne p1, v2, :cond_1

    .line 38
    iget-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    iput-object v0, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    const/4 v0, 0x1

    .line 39
    :cond_1
    invoke-virtual {p1}, Lc/e/a/a/G;->l()V

    .line 40
    iget v2, p0, Lc/e/a/a/I;->j:I

    sub-int/2addr v2, v1

    iput v2, p0, Lc/e/a/a/I;->j:I

    goto :goto_1

    .line 41
    :cond_2
    iget-object p1, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lc/e/a/a/G;->a(Lc/e/a/a/G;)V

    return v0
.end method

.method public final a(Lc/e/a/a/H;Lc/e/a/a/H;)Z
    .locals 5

    .line 77
    iget-wide v0, p1, Lc/e/a/a/H;->b:J

    iget-wide v2, p2, Lc/e/a/a/H;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p1, p1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-object p2, p2, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    invoke-virtual {p1, p2}, Lc/e/a/a/j/v$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lc/e/a/a/j/u;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Lc/e/a/a/j/v$a;)Z
    .locals 1

    .line 143
    invoke-virtual {p1}, Lc/e/a/a/j/v$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lc/e/a/a/j/v$a;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Lc/e/a/a/j/v$a;Z)Z
    .locals 7

    .line 144
    iget-object v0, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object p1, p1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v2

    .line 145
    iget-object p1, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v0, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {p1, v2, v0}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    move-result-object p1

    iget p1, p1, Lc/e/a/a/Z$a;->c:I

    .line 146
    iget-object v0, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v1, p0, Lc/e/a/a/I;->b:Lc/e/a/a/Z$b;

    invoke-virtual {v0, p1, v1}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object p1

    iget-boolean p1, p1, Lc/e/a/a/Z$b;->e:Z

    if-nez p1, :cond_0

    iget-object v1, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v3, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    iget-object v4, p0, Lc/e/a/a/I;->b:Lc/e/a/a/Z$b;

    iget v5, p0, Lc/e/a/a/I;->e:I

    iget-boolean v6, p0, Lc/e/a/a/I;->f:Z

    .line 147
    invoke-virtual/range {v1 .. v6}, Lc/e/a/a/Z;->b(ILc/e/a/a/Z$a;Lc/e/a/a/Z$b;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lc/e/a/a/G;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 4
    iget-object v0, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    .line 5
    iget-object v0, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;JJ)Lc/e/a/a/j/v$a;
    .locals 7

    .line 20
    iget-object v0, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v1, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v0, p1, v1}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    .line 21
    iget-object v0, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v0, p2, p3}, Lc/e/a/a/Z$a;->b(J)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 22
    iget-object v0, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {v0, p2, p3}, Lc/e/a/a/Z$a;->a(J)I

    move-result p2

    .line 23
    new-instance p3, Lc/e/a/a/j/v$a;

    invoke-direct {p3, p1, p4, p5, p2}, Lc/e/a/a/j/v$a;-><init>(Ljava/lang/Object;JI)V

    return-object p3

    .line 24
    :cond_0
    iget-object p2, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    invoke-virtual {p2, v3}, Lc/e/a/a/Z$a;->c(I)I

    move-result v4

    .line 25
    new-instance p2, Lc/e/a/a/j/v$a;

    move-object v1, p2

    move-object v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lc/e/a/a/j/v$a;-><init>(Ljava/lang/Object;IIJ)V

    return-object p2
.end method

.method public b(JJ)Z
    .locals 8

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/I;->c()Lc/e/a/a/G;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 7
    iget-object v3, v1, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, v3}, Lc/e/a/a/I;->a(Lc/e/a/a/H;)Lc/e/a/a/H;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lc/e/a/a/I;->a(Lc/e/a/a/G;J)Lc/e/a/a/H;

    move-result-object v4

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lc/e/a/a/I;->a(Lc/e/a/a/G;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 11
    :cond_1
    invoke-virtual {p0, v3, v4}, Lc/e/a/a/I;->a(Lc/e/a/a/H;Lc/e/a/a/H;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Lc/e/a/a/I;->a(Lc/e/a/a/G;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_2
    move-object v0, v4

    .line 13
    :goto_1
    iget-wide v4, v3, Lc/e/a/a/H;->c:J

    invoke-virtual {v0, v4, v5}, Lc/e/a/a/H;->a(J)Lc/e/a/a/H;

    move-result-object v4

    iput-object v4, v1, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    .line 14
    iget-wide v3, v3, Lc/e/a/a/H;->e:J

    iget-wide v5, v0, Lc/e/a/a/H;->e:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lc/e/a/a/I;->a(JJ)Z

    move-result v3

    if-nez v3, :cond_7

    .line 15
    iget-wide p1, v0, Lc/e/a/a/H;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v3

    if-nez v0, :cond_3

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v1, p1, p2}, Lc/e/a/a/G;->d(J)J

    move-result-wide p1

    .line 17
    :goto_2
    iget-object v0, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    const/4 v3, 0x0

    if-ne v1, v0, :cond_5

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, p3, v4

    if-eqz v0, :cond_4

    cmp-long v0, p3, p1

    if-ltz v0, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 18
    :goto_3
    invoke-virtual {p0, v1}, Lc/e/a/a/I;->a(Lc/e/a/a/G;)Z

    move-result p2

    if-nez p2, :cond_6

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    return v2

    .line 19
    :cond_7
    invoke-virtual {v1}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    goto :goto_0

    :cond_8
    return v2
.end method

.method public b(Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/e/a/a/I;->f:Z

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/I;->i()Z

    move-result p1

    return p1
.end method

.method public c()Lc/e/a/a/G;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/I;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    :goto_0
    return-object v0
.end method

.method public d()Lc/e/a/a/G;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    return-object v0
.end method

.method public e()Lc/e/a/a/G;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    return-object v0
.end method

.method public f()Lc/e/a/a/G;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/I;->h:Lc/e/a/a/G;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/I;->g:Lc/e/a/a/G;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-boolean v1, v1, Lc/e/a/a/H;->g:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/e/a/a/G;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/I;->i:Lc/e/a/a/G;

    iget-object v0, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v0, v0, Lc/e/a/a/H;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lc/e/a/a/I;->j:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

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

.method public final i()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/I;->c()Lc/e/a/a/G;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v3, v0, Lc/e/a/a/G;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v2

    move v4, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v5, p0, Lc/e/a/a/I;->a:Lc/e/a/a/Z$a;

    iget-object v6, p0, Lc/e/a/a/I;->b:Lc/e/a/a/Z$b;

    iget v7, p0, Lc/e/a/a/I;->e:I

    iget-boolean v8, p0, Lc/e/a/a/I;->f:Z

    .line 4
    invoke-virtual/range {v3 .. v8}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$a;Lc/e/a/a/Z$b;IZ)I

    move-result v4

    .line 5
    :goto_1
    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-boolean v2, v2, Lc/e/a/a/H;->f:Z

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v2

    const/4 v3, -0x1

    if-eq v4, v3, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object v3, p0, Lc/e/a/a/I;->d:Lc/e/a/a/Z;

    iget-object v5, v2, Lc/e/a/a/G;->b:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 9
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lc/e/a/a/I;->a(Lc/e/a/a/G;)Z

    move-result v2

    .line 10
    iget-object v3, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    invoke-virtual {p0, v3}, Lc/e/a/a/I;->a(Lc/e/a/a/H;)Lc/e/a/a/H;

    move-result-object v3

    iput-object v3, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    if-eqz v2, :cond_6

    .line 11
    invoke-virtual {p0}, Lc/e/a/a/I;->g()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    return v1
.end method
