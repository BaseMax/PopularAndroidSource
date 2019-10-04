.class public Lcom/ebay/common/util/EbaySecureDataEncoder;
.super Ljava/lang/Object;
.source "EbaySecureDataEncoder.java"


# instance fields
.field private final DFLT_ROUNDS:I

.field private final MASKS_LEN:I

.field private final MAX_ROUNDS:I

.field private final bMask1:[B

.field private final bMask2:[B

.field private final bMask3:[B

.field private final bMask4:[B

.field private final bMask5:[B

.field private bMasks:[B

.field private rounds:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 91
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMask1:[B

    .line 92
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMask2:[B

    .line 93
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMask3:[B

    .line 94
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMask4:[B

    .line 95
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMask5:[B

    const/4 v0, 0x4

    .line 97
    iput v0, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->DFLT_ROUNDS:I

    const/16 v1, 0x14

    .line 98
    iput v1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->MAX_ROUNDS:I

    const/16 v1, 0xa

    .line 99
    iput v1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->MASKS_LEN:I

    const/4 v2, 0x0

    .line 101
    iput-object v2, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    .line 102
    iput v0, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->rounds:I

    .line 107
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    .line 109
    invoke-virtual {p0}, Lcom/ebay/common/util/EbaySecureDataEncoder;->setDefaults()V

    return-void

    nop

    :array_0
    .array-data 1
        0x3bt
        -0x1bt
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x2et
        -0x5at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6et
        0x5dt
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x39t
        0x1at
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x54t
        -0x2ft
    .end array-data
.end method


# virtual methods
.method public decode([B)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_b

    .line 267
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_9

    .line 272
    :cond_0
    new-array v2, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 276
    :goto_0
    iget v6, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->rounds:I

    if-ge v5, v6, :cond_a

    .line 279
    iget-object v6, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v6, v6, v3

    iget-object v7, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v8, 0x4

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    iget-object v7, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v9, 0x6

    aget-byte v7, v7, v9

    add-int/2addr v6, v7

    iget-object v7, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/16 v10, 0x8

    aget-byte v7, v7, v10

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 280
    iget-object v6, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    iget-object v11, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v12, 0x5

    aget-byte v11, v11, v12

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v13, 0x7

    aget-byte v11, v11, v13

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/16 v14, 0x9

    aget-byte v11, v11, v14

    add-int/2addr v6, v11

    int-to-byte v6, v6

    const/4 v11, 0x1

    aput-byte v6, v2, v11

    .line 282
    iget-object v6, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    .line 283
    iget-object v15, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v15, v15, v11

    and-int/lit16 v15, v15, 0xff

    .line 285
    :goto_1
    array-length v11, v1

    if-ge v4, v11, :cond_9

    .line 288
    aget-byte v11, v1, v4

    add-int/lit8 v16, v4, 0x1

    .line 289
    aget-byte v7, v1, v16

    and-int/lit16 v11, v11, 0xff

    if-lt v11, v6, :cond_1

    sub-int/2addr v11, v6

    int-to-byte v11, v11

    goto :goto_2

    :cond_1
    sub-int/2addr v11, v6

    add-int/lit16 v11, v11, 0x100

    int-to-byte v11, v11

    :goto_2
    and-int/lit16 v7, v7, 0xff

    if-lt v7, v15, :cond_2

    sub-int/2addr v7, v15

    int-to-byte v7, v7

    goto :goto_3

    :cond_2
    sub-int/2addr v7, v15

    add-int/lit16 v7, v7, 0x100

    int-to-byte v7, v7

    :goto_3
    and-int/lit8 v12, v11, 0x4

    if-eq v12, v8, :cond_4

    and-int/lit8 v12, v7, 0x2

    if-ne v12, v3, :cond_3

    goto :goto_4

    .line 318
    :cond_3
    iget-object v12, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v12, v12, v10

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    .line 319
    iget-object v12, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v12, v12, v14

    xor-int/2addr v7, v12

    int-to-byte v7, v7

    goto :goto_5

    .line 313
    :cond_4
    :goto_4
    iget-object v12, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v12, v12, v9

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    .line 314
    iget-object v12, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v12, v12, v13

    xor-int/2addr v7, v12

    int-to-byte v7, v7

    :goto_5
    and-int/lit8 v12, v11, 0x2

    if-eq v12, v3, :cond_6

    and-int/lit8 v12, v7, 0x4

    if-ne v12, v8, :cond_5

    goto :goto_6

    .line 329
    :cond_5
    iget-object v12, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v12, v12, v8

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    .line 330
    iget-object v12, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/16 v18, 0x5

    aget-byte v12, v12, v18

    xor-int/2addr v7, v12

    int-to-byte v7, v7

    const/16 v17, 0x3

    goto :goto_7

    :cond_6
    :goto_6
    const/16 v18, 0x5

    .line 324
    iget-object v12, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v12, v12, v3

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    .line 325
    iget-object v12, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/16 v17, 0x3

    aget-byte v12, v12, v17

    xor-int/2addr v7, v12

    int-to-byte v7, v7

    :goto_7
    and-int/lit8 v12, v11, 0x1

    const/4 v3, 0x1

    if-eq v12, v3, :cond_8

    and-int/lit8 v12, v7, 0x1

    if-ne v12, v3, :cond_7

    goto :goto_8

    :cond_7
    move/from16 v19, v11

    move v11, v7

    move/from16 v7, v19

    .line 340
    :cond_8
    :goto_8
    iget-object v3, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v12, 0x0

    aget-byte v3, v3, v12

    xor-int/2addr v3, v7

    aget-byte v7, v2, v12

    xor-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/lit8 v4, v16, 0x1

    .line 341
    iget-object v3, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v7, 0x1

    aget-byte v3, v3, v7

    xor-int/2addr v3, v11

    aget-byte v11, v2, v7

    xor-int/2addr v3, v11

    int-to-byte v3, v3

    aput-byte v3, v1, v16

    const/4 v3, 0x0

    .line 343
    aget-byte v11, v2, v3

    add-int/lit8 v12, v4, -0x2

    aget-byte v12, v1, v12

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v3

    .line 344
    aget-byte v11, v2, v7

    add-int/lit8 v12, v4, -0x1

    aget-byte v12, v1, v12

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v7

    const/4 v3, 0x2

    const/4 v7, 0x3

    const/4 v12, 0x5

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    return-void

    :cond_b
    :goto_9
    return-void
.end method

.method public encode([B)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_9

    .line 202
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_7

    .line 207
    :cond_0
    new-array v2, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 211
    :goto_0
    iget v6, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->rounds:I

    if-ge v5, v6, :cond_8

    .line 214
    iget-object v6, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v6, v6, v3

    iget-object v7, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v8, 0x4

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    iget-object v7, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v9, 0x6

    aget-byte v7, v7, v9

    add-int/2addr v6, v7

    iget-object v7, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/16 v10, 0x8

    aget-byte v7, v7, v10

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 215
    iget-object v6, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    iget-object v11, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v12, 0x5

    aget-byte v11, v11, v12

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v13, 0x7

    aget-byte v11, v11, v13

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/16 v14, 0x9

    aget-byte v11, v11, v14

    add-int/2addr v6, v11

    int-to-byte v6, v6

    const/4 v11, 0x1

    aput-byte v6, v2, v11

    const/4 v6, 0x0

    .line 217
    :goto_1
    array-length v15, v1

    if-ge v6, v15, :cond_7

    .line 219
    aget-byte v15, v1, v6

    add-int/lit8 v16, v6, 0x1

    .line 220
    aget-byte v17, v1, v16

    .line 222
    iget-object v13, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v13, v13, v4

    aget-byte v19, v2, v4

    xor-int v13, v13, v19

    int-to-byte v13, v13

    xor-int/2addr v13, v15

    int-to-byte v13, v13

    .line 223
    iget-object v15, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v15, v15, v11

    aget-byte v19, v2, v11

    xor-int v15, v15, v19

    int-to-byte v15, v15

    xor-int v15, v17, v15

    int-to-byte v15, v15

    and-int/lit8 v4, v13, 0x1

    if-eq v4, v11, :cond_2

    and-int/lit8 v4, v15, 0x1

    if-ne v4, v11, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v20, v15

    move v15, v13

    move/from16 v13, v20

    :cond_2
    :goto_2
    and-int/lit8 v4, v15, 0x2

    if-eq v4, v3, :cond_4

    and-int/lit8 v4, v13, 0x4

    if-ne v4, v8, :cond_3

    goto :goto_3

    .line 239
    :cond_3
    iget-object v4, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v4, v4, v8

    xor-int/2addr v4, v15

    int-to-byte v4, v4

    .line 240
    iget-object v15, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v15, v15, v12

    xor-int/2addr v13, v15

    int-to-byte v13, v13

    goto :goto_4

    .line 234
    :cond_4
    :goto_3
    iget-object v4, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v4, v4, v3

    xor-int/2addr v4, v15

    int-to-byte v4, v4

    .line 235
    iget-object v15, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v15, v15, v7

    xor-int/2addr v13, v15

    int-to-byte v13, v13

    :goto_4
    and-int/lit8 v15, v4, 0x4

    if-eq v15, v8, :cond_6

    and-int/lit8 v15, v13, 0x2

    if-ne v15, v3, :cond_5

    goto :goto_5

    .line 250
    :cond_5
    iget-object v15, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v15, v15, v10

    xor-int/2addr v4, v15

    int-to-byte v4, v4

    .line 251
    iget-object v15, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v15, v15, v14

    xor-int/2addr v13, v15

    int-to-byte v13, v13

    const/4 v15, 0x0

    const/16 v17, 0x7

    goto :goto_6

    .line 245
    :cond_6
    :goto_5
    iget-object v15, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v15, v15, v9

    xor-int/2addr v4, v15

    int-to-byte v4, v4

    .line 246
    iget-object v15, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/16 v17, 0x7

    aget-byte v15, v15, v17

    xor-int/2addr v13, v15

    int-to-byte v13, v13

    const/4 v15, 0x0

    .line 254
    :goto_6
    aget-byte v18, v2, v15

    aget-byte v19, v1, v6

    add-int v3, v18, v19

    int-to-byte v3, v3

    aput-byte v3, v2, v15

    .line 255
    aget-byte v3, v2, v11

    aget-byte v18, v1, v16

    add-int v3, v3, v18

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    .line 257
    iget-object v3, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v3, v3, v15

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v6

    add-int/lit8 v6, v16, 0x1

    .line 258
    iget-object v3, v0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v3, v3, v11

    add-int/2addr v13, v3

    int-to-byte v3, v13

    aput-byte v3, v1, v16

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v13, 0x7

    goto/16 :goto_1

    :cond_7
    const/4 v15, 0x0

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    return-void

    :cond_9
    :goto_7
    return-void
.end method

.method public setDefaults()V
    .locals 6

    .line 115
    iget-object v1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMask1:[B

    iget-object v2, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMask2:[B

    iget-object v3, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMask3:[B

    iget-object v4, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMask4:[B

    iget-object v5, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMask5:[B

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/common/util/EbaySecureDataEncoder;->setMasks([B[B[B[B[B)V

    const/4 v0, 0x4

    .line 117
    invoke-virtual {p0, v0}, Lcom/ebay/common/util/EbaySecureDataEncoder;->setRounds(I)V

    return-void
.end method

.method public setMasks([BI)V
    .locals 8

    if-eqz p1, :cond_0

    .line 133
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 138
    new-array v2, v0, [B

    add-int/lit8 v1, p2, 0x1

    .line 139
    aget-byte p2, p1, p2

    const/4 v3, 0x0

    aput-byte p2, v2, v3

    add-int/lit8 p2, v1, 0x1

    .line 140
    aget-byte v1, p1, v1

    const/4 v4, 0x1

    aput-byte v1, v2, v4

    .line 142
    new-array v5, v0, [B

    add-int/lit8 v1, p2, 0x1

    .line 143
    aget-byte p2, p1, p2

    aput-byte p2, v5, v3

    add-int/lit8 p2, v1, 0x1

    .line 144
    aget-byte v1, p1, v1

    aput-byte v1, v5, v4

    .line 146
    new-array v6, v0, [B

    add-int/lit8 v1, p2, 0x1

    .line 147
    aget-byte p2, p1, p2

    aput-byte p2, v6, v3

    add-int/lit8 p2, v1, 0x1

    .line 148
    aget-byte v1, p1, v1

    aput-byte v1, v6, v4

    .line 150
    new-array v7, v0, [B

    add-int/lit8 v1, p2, 0x1

    .line 151
    aget-byte p2, p1, p2

    aput-byte p2, v7, v3

    add-int/lit8 p2, v1, 0x1

    .line 152
    aget-byte v1, p1, v1

    aput-byte v1, v7, v4

    .line 154
    new-array v0, v0, [B

    add-int/lit8 v1, p2, 0x1

    .line 155
    aget-byte p2, p1, p2

    aput-byte p2, v0, v3

    .line 156
    aget-byte p1, p1, v1

    aput-byte p1, v0, v4

    move-object v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v0

    .line 158
    invoke-virtual/range {v1 .. v6}, Lcom/ebay/common/util/EbaySecureDataEncoder;->setMasks([B[B[B[B[B)V

    :cond_0
    return-void
.end method

.method public setMasks([B[B[B[B[B)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 167
    array-length v3, p1

    if-ne v3, v2, :cond_0

    .line 169
    iget-object v3, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v4, p1, v1

    aput-byte v4, v3, v1

    .line 170
    iget-object v3, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte p1, p1, v0

    aput-byte p1, v3, v0

    :cond_0
    if-eqz p2, :cond_1

    .line 173
    array-length p1, p2

    if-ne p1, v2, :cond_1

    .line 175
    iget-object p1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xf9

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 176
    iget-object p1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 v3, 0x3

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xf9

    int-to-byte p2, p2

    aput-byte p2, p1, v3

    :cond_1
    if-eqz p3, :cond_2

    .line 179
    array-length p1, p3

    if-ne p1, v2, :cond_2

    .line 181
    iget-object p1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 p2, 0x4

    aget-byte v3, p3, v1

    and-int/lit16 v3, v3, 0xf9

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 182
    iget-object p1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 p2, 0x5

    aget-byte p3, p3, v0

    and-int/lit16 p3, p3, 0xf9

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :cond_2
    if-eqz p4, :cond_3

    .line 185
    array-length p1, p4

    if-ne p1, v2, :cond_3

    .line 187
    iget-object p1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 p2, 0x6

    aget-byte p3, p4, v1

    and-int/lit16 p3, p3, 0xf9

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 188
    iget-object p1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/4 p2, 0x7

    aget-byte p3, p4, v0

    and-int/lit16 p3, p3, 0xf9

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :cond_3
    if-eqz p5, :cond_4

    .line 191
    array-length p1, p5

    if-ne p1, v2, :cond_4

    .line 193
    iget-object p1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/16 p2, 0x8

    aget-byte p3, p5, v1

    and-int/lit16 p3, p3, 0xf9

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 194
    iget-object p1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->bMasks:[B

    const/16 p2, 0x9

    aget-byte p3, p5, v0

    and-int/lit16 p3, p3, 0xf9

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :cond_4
    return-void
.end method

.method public setRounds(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    .line 125
    iput p1, p0, Lcom/ebay/common/util/EbaySecureDataEncoder;->rounds:I

    :cond_0
    return-void
.end method
