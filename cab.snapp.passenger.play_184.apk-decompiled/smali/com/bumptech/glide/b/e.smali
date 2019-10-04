.class public Lcom/bumptech/glide/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/b/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[I

.field private final c:[I

.field private final d:Lcom/bumptech/glide/b/a$a;

.field private e:Ljava/nio/ByteBuffer;

.field private f:[B

.field private g:Lcom/bumptech/glide/b/d;

.field private h:[S

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[I

.field private m:I

.field private n:Lcom/bumptech/glide/b/c;

.field private o:Landroid/graphics/Bitmap;

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/lang/Boolean;

.field private v:Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/bumptech/glide/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 87
    iput-object v0, p0, Lcom/bumptech/glide/b/e;->c:[I

    .line 119
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->v:Landroid/graphics/Bitmap$Config;

    .line 138
    iput-object p1, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    .line 139
    new-instance p1, Lcom/bumptech/glide/b/c;

    invoke-direct {p1}, Lcom/bumptech/glide/b/c;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 126
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/b/e;-><init>(Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/e;-><init>(Lcom/bumptech/glide/b/a$a;)V

    .line 133
    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/b/e;->setData(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private a()I
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 418
    iget-object v10, v0, Lcom/bumptech/glide/b/e;->l:[I

    const/4 v11, 0x0

    if-nez v2, :cond_1

    .line 422
    iget-object v3, v0, Lcom/bumptech/glide/b/e;->o:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 423
    iget-object v4, v0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v4, v3}, Lcom/bumptech/glide/b/a$a;->release(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v3, 0x0

    .line 425
    iput-object v3, v0, Lcom/bumptech/glide/b/e;->o:Landroid/graphics/Bitmap;

    .line 426
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v12, 0x3

    if-eqz v2, :cond_2

    .line 432
    iget v3, v2, Lcom/bumptech/glide/b/b;->g:I

    if-ne v3, v12, :cond_2

    iget-object v3, v0, Lcom/bumptech/glide/b/e;->o:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 434
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    const/4 v13, 0x2

    if-eqz v2, :cond_8

    .line 438
    iget v3, v2, Lcom/bumptech/glide/b/b;->g:I

    if-lez v3, :cond_8

    .line 441
    iget v3, v2, Lcom/bumptech/glide/b/b;->g:I

    if-ne v3, v13, :cond_7

    .line 444
    iget-boolean v3, v1, Lcom/bumptech/glide/b/b;->f:Z

    if-nez v3, :cond_3

    .line 445
    iget-object v3, v0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->l:I

    .line 446
    iget-object v4, v1, Lcom/bumptech/glide/b/b;->k:[I

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v4, v4, Lcom/bumptech/glide/b/c;->j:I

    iget v5, v1, Lcom/bumptech/glide/b/b;->h:I

    if-ne v4, v5, :cond_5

    goto :goto_0

    .line 449
    :cond_3
    iget v3, v0, Lcom/bumptech/glide/b/e;->m:I

    if-nez v3, :cond_4

    .line 453
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/bumptech/glide/b/e;->u:Ljava/lang/Boolean;

    :cond_4
    :goto_0
    const/4 v3, 0x0

    .line 456
    :cond_5
    iget v4, v2, Lcom/bumptech/glide/b/b;->d:I

    iget v5, v0, Lcom/bumptech/glide/b/e;->r:I

    div-int/2addr v4, v5

    .line 457
    iget v5, v2, Lcom/bumptech/glide/b/b;->b:I

    iget v6, v0, Lcom/bumptech/glide/b/e;->r:I

    div-int/2addr v5, v6

    .line 458
    iget v6, v2, Lcom/bumptech/glide/b/b;->c:I

    iget v7, v0, Lcom/bumptech/glide/b/e;->r:I

    div-int/2addr v6, v7

    .line 459
    iget v2, v2, Lcom/bumptech/glide/b/b;->a:I

    iget v7, v0, Lcom/bumptech/glide/b/e;->r:I

    div-int/2addr v2, v7

    .line 460
    iget v7, v0, Lcom/bumptech/glide/b/e;->t:I

    mul-int v5, v5, v7

    add-int/2addr v5, v2

    mul-int v4, v4, v7

    add-int/2addr v4, v5

    :goto_1
    if-ge v5, v4, :cond_8

    add-int v2, v5, v6

    move v7, v5

    :goto_2
    if-ge v7, v2, :cond_6

    .line 465
    aput v3, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 462
    :cond_6
    iget v2, v0, Lcom/bumptech/glide/b/e;->t:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 468
    :cond_7
    iget v2, v2, Lcom/bumptech/glide/b/b;->g:I

    if-ne v2, v12, :cond_8

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->o:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    const/4 v4, 0x0

    .line 470
    iget v8, v0, Lcom/bumptech/glide/b/e;->t:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v0, Lcom/bumptech/glide/b/e;->s:I

    move-object v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_8
    if-eqz v1, :cond_9

    .line 1694
    iget-object v2, v0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/bumptech/glide/b/b;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_9
    if-nez v1, :cond_a

    .line 1697
    iget-object v2, v0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->f:I

    iget-object v3, v0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->g:I

    goto :goto_3

    :cond_a
    iget v2, v1, Lcom/bumptech/glide/b/b;->c:I

    iget v3, v1, Lcom/bumptech/glide/b/b;->d:I

    :goto_3
    mul-int v2, v2, v3

    .line 1701
    iget-object v3, v0, Lcom/bumptech/glide/b/e;->k:[B

    if-eqz v3, :cond_b

    array-length v3, v3

    if-ge v3, v2, :cond_c

    .line 1703
    :cond_b
    iget-object v3, v0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v3, v2}, Lcom/bumptech/glide/b/a$a;->obtainByteArray(I)[B

    move-result-object v3

    iput-object v3, v0, Lcom/bumptech/glide/b/e;->k:[B

    .line 1705
    :cond_c
    iget-object v3, v0, Lcom/bumptech/glide/b/e;->k:[B

    .line 1706
    iget-object v4, v0, Lcom/bumptech/glide/b/e;->h:[S

    const/16 v5, 0x1000

    if-nez v4, :cond_d

    new-array v4, v5, [S

    .line 1707
    iput-object v4, v0, Lcom/bumptech/glide/b/e;->h:[S

    .line 1709
    :cond_d
    iget-object v4, v0, Lcom/bumptech/glide/b/e;->h:[S

    .line 1710
    iget-object v6, v0, Lcom/bumptech/glide/b/e;->i:[B

    if-nez v6, :cond_e

    new-array v6, v5, [B

    .line 1711
    iput-object v6, v0, Lcom/bumptech/glide/b/e;->i:[B

    .line 1713
    :cond_e
    iget-object v6, v0, Lcom/bumptech/glide/b/e;->i:[B

    .line 1714
    iget-object v7, v0, Lcom/bumptech/glide/b/e;->j:[B

    if-nez v7, :cond_f

    const/16 v7, 0x1001

    new-array v7, v7, [B

    .line 1715
    iput-object v7, v0, Lcom/bumptech/glide/b/e;->j:[B

    .line 1717
    :cond_f
    iget-object v7, v0, Lcom/bumptech/glide/b/e;->j:[B

    .line 1720
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/e;->a()I

    move-result v8

    const/4 v9, 0x1

    shl-int v14, v9, v8

    add-int/lit8 v15, v14, 0x1

    add-int/lit8 v16, v14, 0x2

    add-int/2addr v8, v9

    shl-int v17, v9, v8

    add-int/lit8 v17, v17, -0x1

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v14, :cond_10

    .line 1730
    aput-short v11, v4, v13

    int-to-byte v5, v13

    .line 1731
    aput-byte v5, v6, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x1000

    goto :goto_4

    .line 1733
    :cond_10
    iget-object v5, v0, Lcom/bumptech/glide/b/e;->f:[B

    move/from16 v27, v8

    move/from16 v25, v16

    move/from16 v26, v17

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_5
    const/16 v31, 0x8

    if-ge v13, v2, :cond_1c

    if-nez v20, :cond_13

    .line 1833
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/e;->a()I

    move-result v9

    if-gtz v9, :cond_11

    move/from16 v33, v8

    move/from16 v34, v13

    goto :goto_6

    .line 1837
    :cond_11
    iget-object v12, v0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    iget-object v11, v0, Lcom/bumptech/glide/b/e;->f:[B

    move/from16 v33, v8

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v34, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_6
    if-gtz v9, :cond_12

    const/4 v8, 0x3

    .line 1741
    iput v8, v0, Lcom/bumptech/glide/b/e;->q:I

    goto/16 :goto_c

    :cond_12
    move/from16 v20, v9

    const/16 v23, 0x0

    goto :goto_7

    :cond_13
    move/from16 v33, v8

    move/from16 v34, v13

    .line 1747
    :goto_7
    aget-byte v8, v5, v23

    and-int/lit16 v8, v8, 0xff

    shl-int v8, v8, v21

    add-int v22, v22, v8

    add-int/lit8 v21, v21, 0x8

    const/4 v8, 0x1

    add-int/lit8 v23, v23, 0x1

    const/4 v8, -0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v9, v21

    move/from16 v35, v25

    move/from16 v11, v27

    move/from16 v12, v28

    move/from16 v36, v29

    move/from16 v13, v34

    :goto_8
    if-lt v9, v11, :cond_1b

    and-int v8, v22, v26

    shr-int v22, v22, v11

    sub-int/2addr v9, v11

    if-ne v8, v14, :cond_14

    move/from16 v35, v16

    move/from16 v26, v17

    move/from16 v11, v33

    const/4 v8, -0x1

    const/4 v12, -0x1

    goto :goto_8

    :cond_14
    move-object/from16 v21, v5

    if-eq v8, v15, :cond_1a

    const/4 v5, -0x1

    if-ne v12, v5, :cond_15

    .line 1769
    aget-byte v5, v6, v8

    aput-byte v5, v3, v24

    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v13, v13, 0x1

    move v12, v8

    move/from16 v36, v12

    move-object/from16 v5, v21

    :goto_9
    const/4 v8, -0x1

    goto :goto_8

    :cond_15
    move/from16 v5, v35

    move/from16 v25, v8

    if-lt v8, v5, :cond_16

    move/from16 v8, v36

    int-to-byte v8, v8

    .line 1779
    aput-byte v8, v7, v30

    add-int/lit8 v30, v30, 0x1

    move v8, v12

    :cond_16
    :goto_a
    if-lt v8, v14, :cond_17

    .line 1785
    aget-byte v27, v6, v8

    aput-byte v27, v7, v30

    add-int/lit8 v30, v30, 0x1

    .line 1787
    aget-short v8, v4, v8

    goto :goto_a

    .line 1789
    :cond_17
    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    move/from16 v27, v9

    int-to-byte v9, v8

    .line 1791
    aput-byte v9, v3, v24

    :goto_b
    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v13, v13, 0x1

    if-lez v30, :cond_18

    add-int/lit8 v30, v30, -0x1

    .line 1797
    aget-byte v28, v7, v30

    aput-byte v28, v3, v24

    goto :goto_b

    :cond_18
    move-object/from16 v28, v7

    const/16 v7, 0x1000

    if-ge v5, v7, :cond_19

    int-to-short v12, v12

    .line 1804
    aput-short v12, v4, v5

    .line 1805
    aput-byte v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    and-int v9, v5, v26

    if-nez v9, :cond_19

    if-ge v5, v7, :cond_19

    add-int/lit8 v11, v11, 0x1

    add-int v26, v26, v5

    :cond_19
    move/from16 v35, v5

    move/from16 v36, v8

    move-object/from16 v5, v21

    move/from16 v12, v25

    move/from16 v9, v27

    move-object/from16 v7, v28

    goto :goto_9

    :cond_1a
    move/from16 v27, v9

    move/from16 v5, v35

    move/from16 v8, v36

    move/from16 v25, v5

    move/from16 v29, v8

    move/from16 v28, v12

    move-object/from16 v5, v21

    move/from16 v21, v27

    move/from16 v8, v33

    const/4 v9, 0x1

    const/4 v12, 0x3

    move/from16 v27, v11

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v21, v5

    move/from16 v5, v35

    move/from16 v8, v36

    move/from16 v25, v5

    move/from16 v29, v8

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v5, v21

    move/from16 v8, v33

    const/4 v11, 0x0

    const/4 v12, 0x3

    move/from16 v21, v9

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_1c
    :goto_c
    move/from16 v11, v24

    const/4 v13, 0x0

    .line 1817
    invoke-static {v3, v11, v2, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 478
    iget-boolean v2, v1, Lcom/bumptech/glide/b/b;->e:Z

    if-nez v2, :cond_25

    iget v2, v0, Lcom/bumptech/glide/b/e;->r:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    goto/16 :goto_12

    .line 3501
    :cond_1d
    iget-object v2, v0, Lcom/bumptech/glide/b/e;->l:[I

    .line 3502
    iget v3, v1, Lcom/bumptech/glide/b/b;->d:I

    .line 3503
    iget v4, v1, Lcom/bumptech/glide/b/b;->b:I

    .line 3504
    iget v5, v1, Lcom/bumptech/glide/b/b;->c:I

    .line 3505
    iget v6, v1, Lcom/bumptech/glide/b/b;->a:I

    .line 3507
    iget v7, v0, Lcom/bumptech/glide/b/e;->m:I

    if-nez v7, :cond_1e

    const/4 v7, 0x1

    goto :goto_d

    :cond_1e
    const/4 v7, 0x0

    .line 3508
    :goto_d
    iget v8, v0, Lcom/bumptech/glide/b/e;->t:I

    .line 3509
    iget-object v9, v0, Lcom/bumptech/glide/b/e;->k:[B

    .line 3510
    iget-object v11, v0, Lcom/bumptech/glide/b/e;->b:[I

    const/4 v12, 0x0

    const/4 v14, -0x1

    :goto_e
    if-ge v12, v3, :cond_23

    add-int v15, v12, v4

    mul-int v15, v15, v8

    add-int v16, v15, v6

    add-int v13, v16, v5

    add-int/2addr v15, v8

    if-ge v15, v13, :cond_1f

    move v13, v15

    .line 3524
    :cond_1f
    iget v15, v1, Lcom/bumptech/glide/b/b;->c:I

    mul-int v15, v15, v12

    move/from16 v37, v15

    move v15, v14

    move/from16 v14, v16

    move/from16 v16, v37

    :goto_f
    if-ge v14, v13, :cond_22

    move/from16 v17, v3

    .line 3527
    aget-byte v3, v9, v16

    move/from16 v18, v4

    and-int/lit16 v4, v3, 0xff

    if-eq v4, v15, :cond_21

    .line 3530
    aget v4, v11, v4

    if-eqz v4, :cond_20

    .line 3532
    aput v4, v2, v14

    goto :goto_10

    :cond_20
    move v15, v3

    :cond_21
    :goto_10
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_f

    :cond_22
    move/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v12, v12, 0x1

    move v14, v15

    const/4 v13, 0x0

    goto :goto_e

    .line 3542
    :cond_23
    iget-object v2, v0, Lcom/bumptech/glide/b/e;->u:Ljava/lang/Boolean;

    if-nez v2, :cond_24

    if-eqz v7, :cond_24

    const/4 v2, -0x1

    if-eq v14, v2, :cond_24

    const/16 v32, 0x1

    goto :goto_11

    :cond_24
    const/16 v32, 0x0

    .line 3543
    :goto_11
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/b/e;->u:Ljava/lang/Boolean;

    move-object/from16 v16, v10

    goto/16 :goto_21

    .line 2547
    :cond_25
    :goto_12
    iget-object v2, v0, Lcom/bumptech/glide/b/e;->l:[I

    .line 2548
    iget v3, v1, Lcom/bumptech/glide/b/b;->d:I

    iget v4, v0, Lcom/bumptech/glide/b/e;->r:I

    div-int/2addr v3, v4

    .line 2549
    iget v4, v1, Lcom/bumptech/glide/b/b;->b:I

    iget v5, v0, Lcom/bumptech/glide/b/e;->r:I

    div-int/2addr v4, v5

    .line 2550
    iget v5, v1, Lcom/bumptech/glide/b/b;->c:I

    iget v6, v0, Lcom/bumptech/glide/b/e;->r:I

    div-int/2addr v5, v6

    .line 2551
    iget v6, v1, Lcom/bumptech/glide/b/b;->a:I

    iget v7, v0, Lcom/bumptech/glide/b/e;->r:I

    div-int/2addr v6, v7

    .line 2556
    iget v7, v0, Lcom/bumptech/glide/b/e;->m:I

    if-nez v7, :cond_26

    const/4 v7, 0x1

    goto :goto_13

    :cond_26
    const/4 v7, 0x0

    .line 2557
    :goto_13
    iget v8, v0, Lcom/bumptech/glide/b/e;->r:I

    .line 2558
    iget v9, v0, Lcom/bumptech/glide/b/e;->t:I

    .line 2559
    iget v11, v0, Lcom/bumptech/glide/b/e;->s:I

    .line 2560
    iget-object v12, v0, Lcom/bumptech/glide/b/e;->k:[B

    .line 2561
    iget-object v13, v0, Lcom/bumptech/glide/b/e;->b:[I

    .line 2563
    iget-object v14, v0, Lcom/bumptech/glide/b/e;->u:Ljava/lang/Boolean;

    move-object/from16 v16, v10

    move-object v15, v14

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x8

    :goto_14
    if-ge v14, v3, :cond_3c

    move-object/from16 p2, v15

    .line 2566
    iget-boolean v15, v1, Lcom/bumptech/glide/b/b;->e:Z

    if-eqz v15, :cond_2b

    if-lt v10, v3, :cond_2a

    add-int/lit8 v15, v17, 0x1

    move/from16 v21, v3

    const/4 v3, 0x2

    if-eq v15, v3, :cond_29

    const/4 v3, 0x3

    if-eq v15, v3, :cond_28

    const/4 v3, 0x4

    if-eq v15, v3, :cond_27

    goto :goto_15

    :cond_27
    const/4 v10, 0x1

    const/16 v19, 0x2

    goto :goto_15

    :cond_28
    const/4 v3, 0x4

    const/4 v10, 0x2

    const/16 v19, 0x4

    goto :goto_15

    :cond_29
    const/4 v3, 0x4

    const/4 v10, 0x4

    goto :goto_15

    :cond_2a
    move/from16 v21, v3

    move/from16 v15, v17

    :goto_15
    add-int v3, v10, v19

    move/from16 v17, v15

    goto :goto_16

    :cond_2b
    move/from16 v21, v3

    move v3, v10

    move v10, v14

    :goto_16
    add-int/2addr v10, v4

    const/4 v15, 0x1

    if-ne v8, v15, :cond_2c

    const/4 v15, 0x1

    goto :goto_17

    :cond_2c
    const/4 v15, 0x0

    :goto_17
    if-ge v10, v11, :cond_3b

    mul-int v10, v10, v9

    add-int v20, v10, v6

    move/from16 v22, v3

    add-int v3, v20, v5

    add-int/2addr v10, v9

    if-ge v10, v3, :cond_2d

    move v3, v10

    :cond_2d
    mul-int v10, v14, v8

    move/from16 v23, v4

    .line 2601
    iget v4, v1, Lcom/bumptech/glide/b/b;->c:I

    mul-int v10, v10, v4

    if-eqz v15, :cond_31

    move-object/from16 v15, p2

    move/from16 v4, v20

    :goto_18
    if-ge v4, v3, :cond_30

    move/from16 v24, v5

    .line 2605
    aget-byte v5, v12, v10

    and-int/lit16 v5, v5, 0xff

    .line 2606
    aget v5, v13, v5

    if-eqz v5, :cond_2e

    .line 2608
    aput v5, v2, v4

    goto :goto_19

    :cond_2e
    if-eqz v7, :cond_2f

    if-nez v15, :cond_2f

    .line 2610
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v15, v5

    :cond_2f
    :goto_19
    add-int/2addr v10, v8

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v24

    goto :goto_18

    :cond_30
    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v33, v9

    move/from16 v34, v11

    goto/16 :goto_1f

    :cond_31
    move/from16 v24, v5

    sub-int v4, v3, v20

    mul-int v4, v4, v8

    add-int/2addr v4, v10

    move v15, v10

    move/from16 v5, v20

    move-object/from16 v10, p2

    :goto_1a
    if-ge v5, v3, :cond_3a

    move/from16 v20, v3

    .line 2622
    iget v3, v1, Lcom/bumptech/glide/b/b;->c:I

    move/from16 v25, v6

    move/from16 v33, v9

    move v6, v15

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 2653
    :goto_1b
    iget v9, v0, Lcom/bumptech/glide/b/e;->r:I

    add-int/2addr v9, v15

    if-ge v6, v9, :cond_33

    iget-object v9, v0, Lcom/bumptech/glide/b/e;->k:[B

    move/from16 v34, v11

    array-length v11, v9

    if-ge v6, v11, :cond_34

    if-ge v6, v4, :cond_34

    .line 2654
    aget-byte v9, v9, v6

    and-int/lit16 v9, v9, 0xff

    .line 2655
    iget-object v11, v0, Lcom/bumptech/glide/b/e;->b:[I

    aget v9, v11, v9

    if-eqz v9, :cond_32

    shr-int/lit8 v11, v9, 0x18

    and-int/lit16 v11, v11, 0xff

    add-int v26, v26, v11

    shr-int/lit8 v11, v9, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int v27, v27, v11

    shr-int/lit8 v11, v9, 0x8

    and-int/lit16 v11, v11, 0xff

    add-int v28, v28, v11

    and-int/lit16 v9, v9, 0xff

    add-int v29, v29, v9

    add-int/lit8 v30, v30, 0x1

    :cond_32
    add-int/lit8 v6, v6, 0x1

    move/from16 v11, v34

    goto :goto_1b

    :cond_33
    move/from16 v34, v11

    :cond_34
    add-int/2addr v3, v15

    move v6, v3

    .line 2667
    :goto_1c
    iget v9, v0, Lcom/bumptech/glide/b/e;->r:I

    add-int/2addr v9, v3

    if-ge v6, v9, :cond_36

    iget-object v9, v0, Lcom/bumptech/glide/b/e;->k:[B

    array-length v11, v9

    if-ge v6, v11, :cond_36

    if-ge v6, v4, :cond_36

    .line 2668
    aget-byte v9, v9, v6

    and-int/lit16 v9, v9, 0xff

    .line 2669
    iget-object v11, v0, Lcom/bumptech/glide/b/e;->b:[I

    aget v9, v11, v9

    if-eqz v9, :cond_35

    shr-int/lit8 v11, v9, 0x18

    and-int/lit16 v11, v11, 0xff

    add-int v26, v26, v11

    shr-int/lit8 v11, v9, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int v27, v27, v11

    shr-int/lit8 v11, v9, 0x8

    and-int/lit16 v11, v11, 0xff

    add-int v28, v28, v11

    and-int/lit16 v9, v9, 0xff

    add-int v29, v29, v9

    add-int/lit8 v30, v30, 0x1

    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_36
    if-nez v30, :cond_37

    const/4 v11, 0x0

    goto :goto_1d

    .line 2681
    :cond_37
    div-int v26, v26, v30

    shl-int/lit8 v3, v26, 0x18

    div-int v27, v27, v30

    shl-int/lit8 v6, v27, 0x10

    or-int/2addr v3, v6

    div-int v28, v28, v30

    shl-int/lit8 v6, v28, 0x8

    or-int/2addr v3, v6

    div-int v29, v29, v30

    or-int v11, v3, v29

    :goto_1d
    if-eqz v11, :cond_38

    .line 2624
    aput v11, v2, v5

    goto :goto_1e

    :cond_38
    if-eqz v7, :cond_39

    if-nez v10, :cond_39

    .line 2626
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v10, v3

    :cond_39
    :goto_1e
    add-int/2addr v15, v8

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v20

    move/from16 v6, v25

    move/from16 v9, v33

    move/from16 v11, v34

    goto/16 :goto_1a

    :cond_3a
    move/from16 v25, v6

    move/from16 v33, v9

    move/from16 v34, v11

    move-object v15, v10

    goto :goto_1f

    :cond_3b
    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v33, v9

    move/from16 v34, v11

    move-object/from16 v15, p2

    :goto_1f
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v21

    move/from16 v10, v22

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v9, v33

    move/from16 v11, v34

    goto/16 :goto_14

    :cond_3c
    move-object/from16 p2, v15

    .line 2635
    iget-object v2, v0, Lcom/bumptech/glide/b/e;->u:Ljava/lang/Boolean;

    if-nez v2, :cond_3e

    if-nez p2, :cond_3d

    const/16 v32, 0x0

    goto :goto_20

    .line 2637
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    move/from16 v32, v11

    .line 2636
    :goto_20
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/b/e;->u:Ljava/lang/Boolean;

    .line 485
    :cond_3e
    :goto_21
    iget-boolean v2, v0, Lcom/bumptech/glide/b/e;->p:Z

    if-eqz v2, :cond_41

    iget v2, v1, Lcom/bumptech/glide/b/b;->g:I

    if-eqz v2, :cond_3f

    iget v1, v1, Lcom/bumptech/glide/b/b;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    .line 487
    :cond_3f
    iget-object v1, v0, Lcom/bumptech/glide/b/e;->o:Landroid/graphics/Bitmap;

    if-nez v1, :cond_40

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/e;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/b/e;->o:Landroid/graphics/Bitmap;

    .line 490
    :cond_40
    iget-object v1, v0, Lcom/bumptech/glide/b/e;->o:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, v0, Lcom/bumptech/glide/b/e;->t:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lcom/bumptech/glide/b/e;->s:I

    move-object/from16 v2, v16

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 495
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/e;->b()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    .line 496
    iget v7, v0, Lcom/bumptech/glide/b/e;->t:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lcom/bumptech/glide/b/e;->s:I

    move-object v1, v9

    move-object/from16 v2, v16

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 4

    .line 842
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->u:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->v:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 844
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget v2, p0, Lcom/bumptech/glide/b/e;->t:I

    iget v3, p0, Lcom/bumptech/glide/b/e;->s:I

    invoke-interface {v1, v2, v3, v0}, Lcom/bumptech/glide/b/a$a;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    .line 845
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method


# virtual methods
.method public advance()V
    .locals 2

    .line 165
    iget v0, p0, Lcom/bumptech/glide/b/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/e;->m:I

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    .line 322
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->k:[B

    if-eqz v1, :cond_0

    .line 323
    iget-object v2, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/b/a$a;->release([B)V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->l:[I

    if-eqz v1, :cond_1

    .line 326
    iget-object v2, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/b/a$a;->release([I)V

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->o:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 329
    iget-object v2, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/b/a$a;->release(Landroid/graphics/Bitmap;)V

    .line 331
    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/b/e;->o:Landroid/graphics/Bitmap;

    .line 332
    iput-object v0, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    .line 333
    iput-object v0, p0, Lcom/bumptech/glide/b/e;->u:Ljava/lang/Boolean;

    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->f:[B

    if-eqz v0, :cond_3

    .line 335
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/b/a$a;->release([B)V

    :cond_3
    return-void
.end method

.method public getByteSize()I
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->k:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->l:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/bumptech/glide/b/e;->m:I

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-ge p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/b/b;

    iget p1, p1, Lcom/bumptech/glide/b/b;->i:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->g:I

    return v0
.end method

.method public getLoopCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    return v0
.end method

.method public getNetscapeLoopCount()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/bumptech/glide/b/e;->m:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b/e;->getDelay(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 7

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/b/e;->m:I

    if-gez v0, :cond_2

    .line 235
    :cond_0
    sget-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unable to decode frame, frameCount="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", framePointer="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/b/e;->m:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    :cond_1
    iput v2, p0, Lcom/bumptech/glide/b/e;->q:I

    .line 243
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/b/e;->q:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/bumptech/glide/b/e;->q:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lcom/bumptech/glide/b/e;->q:I

    .line 251
    iget-object v4, p0, Lcom/bumptech/glide/b/e;->f:[B

    if-nez v4, :cond_4

    .line 252
    iget-object v4, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    const/16 v5, 0xff

    invoke-interface {v4, v5}, Lcom/bumptech/glide/b/a$a;->obtainByteArray(I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/b/e;->f:[B

    .line 255
    :cond_4
    iget-object v4, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget-object v4, v4, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    iget v5, p0, Lcom/bumptech/glide/b/e;->m:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/b/b;

    .line 257
    iget v5, p0, Lcom/bumptech/glide/b/e;->m:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_5

    .line 259
    iget-object v6, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget-object v6, v6, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/b/b;

    goto :goto_0

    :cond_5
    move-object v5, v3

    .line 263
    :goto_0
    iget-object v6, v4, Lcom/bumptech/glide/b/b;->k:[I

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/bumptech/glide/b/b;->k:[I

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget-object v6, v6, Lcom/bumptech/glide/b/c;->a:[I

    :goto_1
    iput-object v6, p0, Lcom/bumptech/glide/b/e;->b:[I

    .line 264
    iget-object v6, p0, Lcom/bumptech/glide/b/e;->b:[I

    if-nez v6, :cond_8

    .line 265
    sget-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No valid color table found for frame #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bumptech/glide/b/e;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    :cond_7
    iput v2, p0, Lcom/bumptech/glide/b/e;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-object v3

    .line 274
    :cond_8
    :try_start_1
    iget-boolean v1, v4, Lcom/bumptech/glide/b/b;->f:Z

    if-eqz v1, :cond_9

    .line 276
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->b:[I

    iget-object v2, p0, Lcom/bumptech/glide/b/e;->c:[I

    iget-object v3, p0, Lcom/bumptech/glide/b/e;->b:[I

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->c:[I

    iput-object v1, p0, Lcom/bumptech/glide/b/e;->b:[I

    .line 280
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->b:[I

    iget v2, v4, Lcom/bumptech/glide/b/b;->h:I

    aput v0, v1, v2

    .line 284
    :cond_9
    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/b/e;->a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 244
    :cond_a
    :goto_2
    :try_start_2
    sget-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to decode frame, status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bumptech/glide/b/e;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :cond_b
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStatus()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/bumptech/glide/b/e;->q:I

    return v0
.end method

.method public getTotalIterationCount()I
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->f:I

    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 5

    if-eqz p1, :cond_2

    const/16 v0, 0x4000

    if-lez p2, :cond_0

    add-int/lit16 p2, p2, 0x1000

    goto :goto_0

    :cond_0
    const/16 p2, 0x4000

    .line 292
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array p2, v0, [B

    :goto_1
    const/4 v2, 0x0

    .line 295
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 296
    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 298
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 300
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/b/e;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_2
    const/4 p2, 0x2

    .line 305
    iput p2, p0, Lcom/bumptech/glide/b/e;->q:I

    :goto_2
    if-eqz p1, :cond_3

    .line 310
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :catch_1
    :cond_3
    iget p1, p0, Lcom/bumptech/glide/b/e;->q:I

    return p1
.end method

.method public declared-synchronized read([B)I
    .locals 1

    monitor-enter p0

    .line 1385
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->g:Lcom/bumptech/glide/b/d;

    if-nez v0, :cond_0

    .line 1386
    new-instance v0, Lcom/bumptech/glide/b/d;

    invoke-direct {v0}, Lcom/bumptech/glide/b/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->g:Lcom/bumptech/glide/b/d;

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->g:Lcom/bumptech/glide/b/d;

    .line 394
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/b/d;->setData([B)Lcom/bumptech/glide/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/b/d;->parseHeader()Lcom/bumptech/glide/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    if-eqz p1, :cond_1

    .line 396
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/b/e;->setData(Lcom/bumptech/glide/b/c;[B)V

    .line 399
    :cond_1
    iget p1, p0, Lcom/bumptech/glide/b/e;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetFrameIndex()V
    .locals 1

    const/4 v0, -0x1

    .line 198
    iput v0, p0, Lcom/bumptech/glide/b/e;->m:I

    return-void
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 346
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/b/e;->setData(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 2

    monitor-enter p0

    if-lez p3, :cond_2

    .line 356
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    .line 357
    iput v0, p0, Lcom/bumptech/glide/b/e;->q:I

    .line 358
    iput-object p1, p0, Lcom/bumptech/glide/b/e;->n:Lcom/bumptech/glide/b/c;

    const/4 v1, -0x1

    .line 359
    iput v1, p0, Lcom/bumptech/glide/b/e;->m:I

    .line 361
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    .line 362
    iget-object p2, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 363
    iget-object p2, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 366
    iput-boolean v0, p0, Lcom/bumptech/glide/b/e;->p:Z

    .line 367
    iget-object p2, p1, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 368
    iget v0, v0, Lcom/bumptech/glide/b/b;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 369
    iput-boolean p2, p0, Lcom/bumptech/glide/b/e;->p:Z

    .line 374
    :cond_1
    iput p3, p0, Lcom/bumptech/glide/b/e;->r:I

    .line 375
    iget p2, p1, Lcom/bumptech/glide/b/c;->f:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/b/e;->t:I

    .line 376
    iget p2, p1, Lcom/bumptech/glide/b/c;->g:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/b/e;->s:I

    .line 379
    iget-object p2, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget p3, p1, Lcom/bumptech/glide/b/c;->f:I

    iget p1, p1, Lcom/bumptech/glide/b/c;->g:I

    mul-int p3, p3, p1

    invoke-interface {p2, p3}, Lcom/bumptech/glide/b/a$a;->obtainByteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/b/e;->k:[B

    .line 380
    iget-object p1, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget p2, p0, Lcom/bumptech/glide/b/e;->t:I

    iget p3, p0, Lcom/bumptech/glide/b/e;->s:I

    mul-int p2, p2, p3

    invoke-interface {p1, p2}, Lcom/bumptech/glide/b/a$a;->obtainIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/b/e;->l:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 353
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sample size must be >=0, not: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/b/c;[B)V
    .locals 0

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/b/e;->setData(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 3

    .line 404
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/b/e;->v:Landroid/graphics/Bitmap$Config;

    return-void
.end method
