.class public final Lcom/google/zxing/pdf417/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/pdf417/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/google/zxing/pdf417/a/a/b;->PDF417_GF:Lcom/google/zxing/pdf417/a/a/b;

    iput-object v0, p0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    return-void
.end method

.method private a(Lcom/google/zxing/pdf417/a/a/c;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/c;
        }
    .end annotation

    .line 13063
    iget-object v0, p1, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 151
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 153
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    .line 13109
    iget v4, v4, Lcom/google/zxing/pdf417/a/a/b;->e:I

    if-ge v1, v4, :cond_1

    if-ge v3, v0, :cond_1

    .line 154
    invoke-virtual {p1, v1}, Lcom/google/zxing/pdf417/a/a/c;->b(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 155
    iget-object v4, p0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-virtual {v4, v1}, Lcom/google/zxing/pdf417/a/a/b;->a(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_2

    return-object v2

    .line 160
    :cond_2
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private a(Lcom/google/zxing/pdf417/a/a/c;Lcom/google/zxing/pdf417/a/a/c;[I)[I
    .locals 7

    .line 14063
    iget-object v0, p2, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 169
    new-array v2, v0, [I

    :goto_0
    if-gt v1, v0, :cond_0

    sub-int v3, v0, v1

    .line 171
    iget-object v4, p0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    .line 172
    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/a/a/c;->a(I)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/google/zxing/pdf417/a/a/b;->d(II)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    new-instance p2, Lcom/google/zxing/pdf417/a/a/c;

    iget-object v0, p0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-direct {p2, v0, v2}, Lcom/google/zxing/pdf417/a/a/c;-><init>(Lcom/google/zxing/pdf417/a/a/b;[I)V

    .line 177
    array-length v0, p3

    .line 178
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 180
    iget-object v4, p0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/pdf417/a/a/b;->a(I)I

    move-result v4

    .line 181
    iget-object v5, p0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-virtual {p1, v4}, Lcom/google/zxing/pdf417/a/a/c;->b(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lcom/google/zxing/pdf417/a/a/b;->c(II)I

    move-result v5

    .line 182
    iget-object v6, p0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/a/a/c;->b(I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/google/zxing/pdf417/a/a/b;->a(I)I

    move-result v4

    .line 183
    iget-object v6, p0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-virtual {v6, v5, v4}, Lcom/google/zxing/pdf417/a/a/b;->d(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final decode([II[I)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/c;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 49
    new-instance v4, Lcom/google/zxing/pdf417/a/a/c;

    iget-object v5, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-direct {v4, v5, v1}, Lcom/google/zxing/pdf417/a/a/c;-><init>(Lcom/google/zxing/pdf417/a/a/b;[I)V

    .line 50
    new-array v5, v2, [I

    const/4 v6, 0x0

    move v7, v2

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    if-lez v7, :cond_1

    .line 53
    iget-object v10, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    .line 1084
    iget-object v10, v10, Lcom/google/zxing/pdf417/a/a/b;->a:[I

    aget v10, v10, v7

    .line 53
    invoke-virtual {v4, v10}, Lcom/google/zxing/pdf417/a/a/c;->b(I)I

    move-result v10

    sub-int v11, v2, v7

    .line 54
    aput v10, v5, v11

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_1
    if-nez v8, :cond_2

    return v6

    .line 64
    :cond_2
    iget-object v4, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    .line 2060
    iget-object v4, v4, Lcom/google/zxing/pdf417/a/a/b;->d:Lcom/google/zxing/pdf417/a/a/c;

    const/4 v7, 0x2

    if-eqz v3, :cond_3

    .line 66
    array-length v8, v3

    move-object v10, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_3

    aget v11, v3, v4

    .line 67
    iget-object v12, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    array-length v13, v1

    sub-int/2addr v13, v9

    sub-int/2addr v13, v11

    .line 2084
    iget-object v11, v12, Lcom/google/zxing/pdf417/a/a/b;->a:[I

    aget v11, v11, v13

    .line 69
    new-instance v12, Lcom/google/zxing/pdf417/a/a/c;

    iget-object v13, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    new-array v14, v7, [I

    invoke-virtual {v13, v6, v11}, Lcom/google/zxing/pdf417/a/a/b;->c(II)I

    move-result v11

    aput v11, v14, v6

    aput v9, v14, v9

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/pdf417/a/a/c;-><init>(Lcom/google/zxing/pdf417/a/a/b;[I)V

    .line 70
    invoke-virtual {v10, v12}, Lcom/google/zxing/pdf417/a/a/c;->c(Lcom/google/zxing/pdf417/a/a/c;)Lcom/google/zxing/pdf417/a/a/c;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 74
    :cond_3
    new-instance v3, Lcom/google/zxing/pdf417/a/a/c;

    iget-object v4, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/pdf417/a/a/c;-><init>(Lcom/google/zxing/pdf417/a/a/b;[I)V

    .line 77
    iget-object v4, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    .line 78
    invoke-virtual {v4, v2, v9}, Lcom/google/zxing/pdf417/a/a/b;->a(II)Lcom/google/zxing/pdf417/a/a/c;

    move-result-object v4

    .line 3063
    iget-object v5, v4, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v5, v5

    sub-int/2addr v5, v9

    .line 4063
    iget-object v8, v3, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v8, v8

    sub-int/2addr v8, v9

    if-ge v5, v8, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .line 2108
    :goto_2
    iget-object v5, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    .line 5056
    iget-object v5, v5, Lcom/google/zxing/pdf417/a/a/b;->c:Lcom/google/zxing/pdf417/a/a/c;

    .line 2109
    iget-object v8, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    .line 5060
    iget-object v8, v8, Lcom/google/zxing/pdf417/a/a/b;->d:Lcom/google/zxing/pdf417/a/a/c;

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    move-object/from16 v17, v8

    move-object v8, v5

    move-object/from16 v5, v17

    .line 5063
    :goto_3
    iget-object v10, v3, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v10, v10

    sub-int/2addr v10, v9

    .line 2112
    div-int/lit8 v11, v2, 0x2

    if-lt v10, v11, :cond_a

    .line 2119
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/a/a/c;->a()Z

    move-result v10

    if-nez v10, :cond_9

    .line 2124
    iget-object v10, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    .line 6056
    iget-object v10, v10, Lcom/google/zxing/pdf417/a/a/b;->c:Lcom/google/zxing/pdf417/a/a/c;

    .line 6063
    iget-object v11, v3, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v11, v11

    sub-int/2addr v11, v9

    .line 2125
    invoke-virtual {v3, v11}, Lcom/google/zxing/pdf417/a/a/c;->a(I)I

    move-result v11

    .line 2126
    iget-object v12, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-virtual {v12, v11}, Lcom/google/zxing/pdf417/a/a/b;->a(I)I

    move-result v11

    .line 7063
    :goto_4
    iget-object v12, v4, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v9

    .line 8063
    iget-object v13, v3, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v13, v13

    sub-int/2addr v13, v9

    if-lt v12, v13, :cond_8

    .line 2127
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/a/a/c;->a()Z

    move-result v12

    if-nez v12, :cond_8

    .line 9063
    iget-object v12, v4, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v9

    .line 10063
    iget-object v13, v3, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v13, v13

    sub-int/2addr v13, v9

    sub-int/2addr v12, v13

    .line 2129
    iget-object v13, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    .line 11063
    iget-object v14, v4, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v14, v14

    sub-int/2addr v14, v9

    .line 2129
    invoke-virtual {v4, v14}, Lcom/google/zxing/pdf417/a/a/c;->a(I)I

    move-result v14

    invoke-virtual {v13, v14, v11}, Lcom/google/zxing/pdf417/a/a/b;->d(II)I

    move-result v13

    .line 2130
    iget-object v14, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-virtual {v14, v12, v13}, Lcom/google/zxing/pdf417/a/a/b;->a(II)Lcom/google/zxing/pdf417/a/a/c;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/google/zxing/pdf417/a/a/c;->a(Lcom/google/zxing/pdf417/a/a/c;)Lcom/google/zxing/pdf417/a/a/c;

    move-result-object v10

    if-ltz v12, :cond_7

    if-nez v13, :cond_5

    .line 11194
    iget-object v12, v3, Lcom/google/zxing/pdf417/a/a/c;->a:Lcom/google/zxing/pdf417/a/a/b;

    .line 12056
    iget-object v12, v12, Lcom/google/zxing/pdf417/a/a/b;->c:Lcom/google/zxing/pdf417/a/a/c;

    goto :goto_6

    .line 11196
    :cond_5
    iget-object v14, v3, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    array-length v14, v14

    add-int/2addr v12, v14

    .line 11197
    new-array v12, v12, [I

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_6

    .line 11199
    iget-object v9, v3, Lcom/google/zxing/pdf417/a/a/c;->a:Lcom/google/zxing/pdf417/a/a/b;

    iget-object v7, v3, Lcom/google/zxing/pdf417/a/a/c;->b:[I

    aget v7, v7, v15

    invoke-virtual {v9, v7, v13}, Lcom/google/zxing/pdf417/a/a/b;->d(II)I

    move-result v7

    aput v7, v12, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x1

    goto :goto_5

    .line 11201
    :cond_6
    new-instance v7, Lcom/google/zxing/pdf417/a/a/c;

    iget-object v9, v3, Lcom/google/zxing/pdf417/a/a/c;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-direct {v7, v9, v12}, Lcom/google/zxing/pdf417/a/a/c;-><init>(Lcom/google/zxing/pdf417/a/a/b;[I)V

    move-object v12, v7

    .line 2131
    :goto_6
    invoke-virtual {v4, v12}, Lcom/google/zxing/pdf417/a/a/c;->b(Lcom/google/zxing/pdf417/a/a/c;)Lcom/google/zxing/pdf417/a/a/c;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v9, 0x1

    goto :goto_4

    .line 11191
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2134
    :cond_8
    invoke-virtual {v10, v5}, Lcom/google/zxing/pdf417/a/a/c;->c(Lcom/google/zxing/pdf417/a/a/c;)Lcom/google/zxing/pdf417/a/a/c;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/zxing/pdf417/a/a/c;->b(Lcom/google/zxing/pdf417/a/a/c;)Lcom/google/zxing/pdf417/a/a/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/a/a/c;->b()Lcom/google/zxing/pdf417/a/a/c;

    move-result-object v7

    move-object v8, v5

    move-object v5, v7

    const/4 v7, 0x2

    const/4 v9, 0x1

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    goto/16 :goto_3

    .line 2121
    :cond_9
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object v1

    throw v1

    .line 2137
    :cond_a
    invoke-virtual {v5, v6}, Lcom/google/zxing/pdf417/a/a/c;->a(I)I

    move-result v2

    if-eqz v2, :cond_e

    .line 2142
    iget-object v4, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    invoke-virtual {v4, v2}, Lcom/google/zxing/pdf417/a/a/b;->a(I)I

    move-result v2

    .line 2143
    invoke-virtual {v5, v2}, Lcom/google/zxing/pdf417/a/a/c;->c(I)Lcom/google/zxing/pdf417/a/a/c;

    move-result-object v4

    .line 2144
    invoke-virtual {v3, v2}, Lcom/google/zxing/pdf417/a/a/c;->c(I)Lcom/google/zxing/pdf417/a/a/c;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/zxing/pdf417/a/a/c;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 79
    aget-object v2, v3, v6

    .line 80
    aget-object v3, v3, v4

    .line 84
    invoke-direct {v0, v2}, Lcom/google/zxing/pdf417/a/a/a;->a(Lcom/google/zxing/pdf417/a/a/c;)[I

    move-result-object v5

    .line 85
    invoke-direct {v0, v3, v2, v5}, Lcom/google/zxing/pdf417/a/a/a;->a(Lcom/google/zxing/pdf417/a/a/c;Lcom/google/zxing/pdf417/a/a/c;[I)[I

    move-result-object v2

    .line 87
    :goto_7
    array-length v3, v5

    if-ge v6, v3, :cond_d

    .line 88
    array-length v3, v1

    sub-int/2addr v3, v4

    iget-object v7, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    aget v8, v5, v6

    if-eqz v8, :cond_c

    .line 12091
    iget-object v7, v7, Lcom/google/zxing/pdf417/a/a/b;->b:[I

    aget v7, v7, v8

    sub-int/2addr v3, v7

    if-ltz v3, :cond_b

    .line 92
    iget-object v7, v0, Lcom/google/zxing/pdf417/a/a/a;->a:Lcom/google/zxing/pdf417/a/a/b;

    aget v8, v1, v3

    aget v9, v2, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/pdf417/a/a/b;->c(II)I

    move-result v7

    aput v7, v1, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 90
    :cond_b
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object v1

    throw v1

    .line 12089
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 94
    :cond_d
    array-length v1, v5

    return v1

    .line 2139
    :cond_e
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object v1

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method
