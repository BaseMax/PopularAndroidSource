.class public final Lcom/google/zxing/common/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b/a;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b/a;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    return-void
.end method

.method private a(Lcom/google/zxing/common/b/b;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/b/d;
        }
    .end annotation

    .line 15077
    iget-object v0, p1, Lcom/google/zxing/common/b/b;->b:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v1, [I

    .line 147
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/b/b;->a(I)I

    move-result p1

    aput p1, v0, v2

    return-object v0

    .line 149
    :cond_0
    new-array v3, v0, [I

    .line 151
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-virtual {v4}, Lcom/google/zxing/common/b/a;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-ge v2, v0, :cond_2

    .line 152
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/b/b;->b(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/b/a;->b(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    return-object v3

    .line 158
    :cond_3
    new-instance p1, Lcom/google/zxing/common/b/d;

    const-string v0, "Error locator degree does not match number of roots"

    invoke-direct {p1, v0}, Lcom/google/zxing/common/b/d;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private a(Lcom/google/zxing/common/b/b;[I)[I
    .locals 9

    .line 165
    array-length v0, p2

    .line 166
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 168
    iget-object v4, p0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    aget v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/b/a;->b(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_1
    if-ge v5, v0, :cond_2

    if-eq v3, v5, :cond_1

    .line 176
    iget-object v7, p0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    aget v8, p2, v5

    invoke-virtual {v7, v8, v4}, Lcom/google/zxing/common/b/a;->c(II)I

    move-result v7

    and-int/lit8 v8, v7, 0x1

    if-nez v8, :cond_0

    or-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    and-int/lit8 v7, v7, -0x2

    .line 178
    :goto_2
    iget-object v8, p0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-virtual {v8, v6, v7}, Lcom/google/zxing/common/b/a;->c(II)I

    move-result v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 181
    :cond_2
    iget-object v5, p0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/b/b;->b(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    .line 182
    invoke-virtual {v8, v6}, Lcom/google/zxing/common/b/a;->b(I)I

    move-result v6

    .line 181
    invoke-virtual {v5, v7, v6}, Lcom/google/zxing/common/b/a;->c(II)I

    move-result v5

    aput v5, v1, v3

    .line 183
    iget-object v5, p0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-virtual {v5}, Lcom/google/zxing/common/b/a;->getGeneratorBase()I

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    iget-object v5, p0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    aget v6, v1, v3

    invoke-virtual {v5, v6, v4}, Lcom/google/zxing/common/b/a;->c(II)I

    move-result v4

    aput v4, v1, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final decode([II)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/b/d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 59
    new-instance v3, Lcom/google/zxing/common/b/b;

    iget-object v4, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/common/b/b;-><init>(Lcom/google/zxing/common/b/a;[I)V

    .line 60
    new-array v4, v2, [I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    if-ge v7, v2, :cond_1

    .line 63
    iget-object v9, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-virtual {v9}, Lcom/google/zxing/common/b/a;->getGeneratorBase()I

    move-result v10

    add-int/2addr v10, v7

    .line 1120
    iget-object v9, v9, Lcom/google/zxing/common/b/a;->a:[I

    aget v9, v9, v10

    .line 63
    invoke-virtual {v3, v9}, Lcom/google/zxing/common/b/b;->b(I)I

    move-result v9

    add-int/lit8 v10, v2, -0x1

    sub-int/2addr v10, v7

    .line 64
    aput v9, v4, v10

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    return-void

    .line 72
    :cond_2
    new-instance v3, Lcom/google/zxing/common/b/b;

    iget-object v7, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-direct {v3, v7, v4}, Lcom/google/zxing/common/b/b;-><init>(Lcom/google/zxing/common/b/a;[I)V

    .line 73
    iget-object v4, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    .line 74
    invoke-virtual {v4, v2, v6}, Lcom/google/zxing/common/b/a;->a(II)Lcom/google/zxing/common/b/b;

    move-result-object v4

    .line 3077
    iget-object v7, v4, Lcom/google/zxing/common/b/b;->b:[I

    array-length v7, v7

    sub-int/2addr v7, v6

    .line 4077
    iget-object v8, v3, Lcom/google/zxing/common/b/b;->b:[I

    array-length v8, v8

    sub-int/2addr v8, v6

    if-ge v7, v8, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .line 2099
    :goto_1
    iget-object v7, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    .line 4085
    iget-object v7, v7, Lcom/google/zxing/common/b/a;->b:Lcom/google/zxing/common/b/b;

    .line 2100
    iget-object v8, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    .line 4089
    iget-object v8, v8, Lcom/google/zxing/common/b/a;->c:Lcom/google/zxing/common/b/b;

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    move-object/from16 v17, v8

    move-object v8, v7

    move-object/from16 v7, v17

    .line 5077
    :goto_2
    iget-object v9, v3, Lcom/google/zxing/common/b/b;->b:[I

    array-length v9, v9

    sub-int/2addr v9, v6

    const/4 v10, 0x2

    .line 2103
    div-int/lit8 v11, v2, 0x2

    if-lt v9, v11, :cond_a

    .line 2110
    invoke-virtual {v3}, Lcom/google/zxing/common/b/b;->a()Z

    move-result v9

    if-nez v9, :cond_9

    .line 2115
    iget-object v9, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    .line 5085
    iget-object v9, v9, Lcom/google/zxing/common/b/a;->b:Lcom/google/zxing/common/b/b;

    .line 6077
    iget-object v10, v3, Lcom/google/zxing/common/b/b;->b:[I

    array-length v10, v10

    sub-int/2addr v10, v6

    .line 2116
    invoke-virtual {v3, v10}, Lcom/google/zxing/common/b/b;->a(I)I

    move-result v10

    .line 2117
    iget-object v11, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-virtual {v11, v10}, Lcom/google/zxing/common/b/a;->b(I)I

    move-result v10

    .line 7077
    :goto_3
    iget-object v11, v4, Lcom/google/zxing/common/b/b;->b:[I

    array-length v11, v11

    sub-int/2addr v11, v6

    .line 8077
    iget-object v12, v3, Lcom/google/zxing/common/b/b;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v6

    if-lt v11, v12, :cond_7

    .line 2118
    invoke-virtual {v4}, Lcom/google/zxing/common/b/b;->a()Z

    move-result v11

    if-nez v11, :cond_7

    .line 9077
    iget-object v11, v4, Lcom/google/zxing/common/b/b;->b:[I

    array-length v11, v11

    sub-int/2addr v11, v6

    .line 10077
    iget-object v12, v3, Lcom/google/zxing/common/b/b;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v6

    sub-int/2addr v11, v12

    .line 2120
    iget-object v12, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    .line 11077
    iget-object v13, v4, Lcom/google/zxing/common/b/b;->b:[I

    array-length v13, v13

    sub-int/2addr v13, v6

    .line 2120
    invoke-virtual {v4, v13}, Lcom/google/zxing/common/b/b;->a(I)I

    move-result v13

    invoke-virtual {v12, v13, v10}, Lcom/google/zxing/common/b/a;->c(II)I

    move-result v12

    .line 2121
    iget-object v13, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-virtual {v13, v11, v12}, Lcom/google/zxing/common/b/a;->a(II)Lcom/google/zxing/common/b/b;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/google/zxing/common/b/b;->a(Lcom/google/zxing/common/b/b;)Lcom/google/zxing/common/b/b;

    move-result-object v9

    if-ltz v11, :cond_6

    if-nez v12, :cond_4

    .line 11190
    iget-object v11, v3, Lcom/google/zxing/common/b/b;->a:Lcom/google/zxing/common/b/a;

    .line 12085
    iget-object v11, v11, Lcom/google/zxing/common/b/a;->b:Lcom/google/zxing/common/b/b;

    move-object v5, v11

    goto :goto_5

    .line 11192
    :cond_4
    iget-object v13, v3, Lcom/google/zxing/common/b/b;->b:[I

    array-length v13, v13

    add-int/2addr v11, v13

    .line 11193
    new-array v11, v11, [I

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_5

    .line 11195
    iget-object v15, v3, Lcom/google/zxing/common/b/b;->a:Lcom/google/zxing/common/b/a;

    iget-object v5, v3, Lcom/google/zxing/common/b/b;->b:[I

    aget v5, v5, v14

    invoke-virtual {v15, v5, v12}, Lcom/google/zxing/common/b/a;->c(II)I

    move-result v5

    aput v5, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 11197
    :cond_5
    new-instance v5, Lcom/google/zxing/common/b/b;

    iget-object v12, v3, Lcom/google/zxing/common/b/b;->a:Lcom/google/zxing/common/b/a;

    invoke-direct {v5, v12, v11}, Lcom/google/zxing/common/b/b;-><init>(Lcom/google/zxing/common/b/a;[I)V

    .line 2122
    :goto_5
    invoke-virtual {v4, v5}, Lcom/google/zxing/common/b/b;->a(Lcom/google/zxing/common/b/b;)Lcom/google/zxing/common/b/b;

    move-result-object v4

    goto :goto_3

    .line 11187
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2125
    :cond_7
    invoke-virtual {v9, v7}, Lcom/google/zxing/common/b/b;->b(Lcom/google/zxing/common/b/b;)Lcom/google/zxing/common/b/b;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/google/zxing/common/b/b;->a(Lcom/google/zxing/common/b/b;)Lcom/google/zxing/common/b/b;

    move-result-object v5

    .line 13077
    iget-object v8, v4, Lcom/google/zxing/common/b/b;->b:[I

    array-length v8, v8

    sub-int/2addr v8, v6

    .line 14077
    iget-object v9, v3, Lcom/google/zxing/common/b/b;->b:[I

    array-length v9, v9

    sub-int/2addr v9, v6

    if-ge v8, v9, :cond_8

    move-object v8, v7

    move-object v7, v5

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    goto/16 :goto_2

    .line 2128
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Division algorithm failed to reduce polynomial?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2112
    :cond_9
    new-instance v1, Lcom/google/zxing/common/b/d;

    const-string v2, "r_{i-1} was zero"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/b/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const/4 v2, 0x0

    .line 2132
    invoke-virtual {v7, v2}, Lcom/google/zxing/common/b/b;->a(I)I

    move-result v4

    if-eqz v4, :cond_d

    .line 2137
    iget-object v5, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    invoke-virtual {v5, v4}, Lcom/google/zxing/common/b/a;->b(I)I

    move-result v4

    .line 2138
    invoke-virtual {v7, v4}, Lcom/google/zxing/common/b/b;->c(I)Lcom/google/zxing/common/b/b;

    move-result-object v5

    .line 2139
    invoke-virtual {v3, v4}, Lcom/google/zxing/common/b/b;->c(I)Lcom/google/zxing/common/b/b;

    move-result-object v3

    new-array v4, v10, [Lcom/google/zxing/common/b/b;

    aput-object v5, v4, v2

    aput-object v3, v4, v6

    .line 75
    aget-object v3, v4, v2

    .line 76
    aget-object v4, v4, v6

    .line 77
    invoke-direct {v0, v3}, Lcom/google/zxing/common/b/c;->a(Lcom/google/zxing/common/b/b;)[I

    move-result-object v3

    .line 78
    invoke-direct {v0, v4, v3}, Lcom/google/zxing/common/b/c;->a(Lcom/google/zxing/common/b/b;[I)[I

    move-result-object v4

    .line 79
    :goto_6
    array-length v5, v3

    if-ge v2, v5, :cond_c

    .line 80
    array-length v5, v1

    sub-int/2addr v5, v6

    iget-object v7, v0, Lcom/google/zxing/common/b/c;->a:Lcom/google/zxing/common/b/a;

    aget v8, v3, v2

    invoke-virtual {v7, v8}, Lcom/google/zxing/common/b/a;->a(I)I

    move-result v7

    sub-int/2addr v5, v7

    if-ltz v5, :cond_b

    .line 84
    aget v7, v1, v5

    aget v8, v4, v2

    invoke-static {v7, v8}, Lcom/google/zxing/common/b/a;->b(II)I

    move-result v7

    aput v7, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 82
    :cond_b
    new-instance v1, Lcom/google/zxing/common/b/d;

    const-string v2, "Bad error location"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/b/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    return-void

    .line 2134
    :cond_d
    new-instance v1, Lcom/google/zxing/common/b/d;

    const-string v2, "sigmaTilde(0) was zero"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/b/d;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method
