.class abstract Lcom/koushikdutta/async/http/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/r$a;
    }
.end annotation


# static fields
.field private static final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/koushikdutta/async/a/d;

.field b:Lcom/koushikdutta/async/a/d;

.field c:Lcom/koushikdutta/async/a/d;

.field d:Lcom/koushikdutta/async/a/d;

.field e:Lcom/koushikdutta/async/a/d;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:[B

.field private q:[B

.field private r:Z

.field private s:Ljava/io/ByteArrayOutputStream;

.field private t:Ljava/util/zip/Inflater;

.field private u:[B

.field private x:Lcom/koushikdutta/async/p;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v3, 0x1

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v5, 0x2

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/16 v7, 0x8

    .line 96
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v0, v8

    const/16 v7, 0x9

    .line 97
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v0, v9

    const/16 v7, 0xa

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x5

    aput-object v7, v0, v9

    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/r;->v:Ljava/util/List;

    new-array v0, v8, [Ljava/lang/Integer;

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    .line 101
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/r;->w:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/n;)V
    .locals 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/r;->f:Z

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/r;->g:Z

    new-array v2, v1, [B

    .line 64
    iput-object v2, p0, Lcom/koushikdutta/async/http/r;->p:[B

    new-array v2, v1, [B

    .line 65
    iput-object v2, p0, Lcom/koushikdutta/async/http/r;->q:[B

    .line 67
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/r;->r:Z

    .line 69
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/r;->s:Ljava/io/ByteArrayOutputStream;

    .line 70
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v1, p0, Lcom/koushikdutta/async/http/r;->t:Ljava/util/zip/Inflater;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 71
    iput-object v0, p0, Lcom/koushikdutta/async/http/r;->u:[B

    .line 144
    new-instance v0, Lcom/koushikdutta/async/http/r$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/r$1;-><init>(Lcom/koushikdutta/async/http/r;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/r;->a:Lcom/koushikdutta/async/a/d;

    .line 158
    new-instance v0, Lcom/koushikdutta/async/http/r$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/r$2;-><init>(Lcom/koushikdutta/async/http/r;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/r;->b:Lcom/koushikdutta/async/a/d;

    .line 166
    new-instance v0, Lcom/koushikdutta/async/http/r$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/r$3;-><init>(Lcom/koushikdutta/async/http/r;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/r;->c:Lcom/koushikdutta/async/a/d;

    .line 182
    new-instance v0, Lcom/koushikdutta/async/http/r$4;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/r$4;-><init>(Lcom/koushikdutta/async/http/r;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/r;->d:Lcom/koushikdutta/async/a/d;

    .line 192
    new-instance v0, Lcom/koushikdutta/async/http/r$5;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/r$5;-><init>(Lcom/koushikdutta/async/http/r;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/r;->e:Lcom/koushikdutta/async/a/d;

    .line 230
    new-instance v0, Lcom/koushikdutta/async/p;

    invoke-direct {v0}, Lcom/koushikdutta/async/p;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/r;->x:Lcom/koushikdutta/async/p;

    .line 248
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->x:Lcom/koushikdutta/async/p;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 249
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/r;->a()V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/r;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/koushikdutta/async/http/r;->m:I

    return p0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/r;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/koushikdutta/async/http/r;->h:I

    return p1
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/r;B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/r$a;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/lit8 v4, p1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 1257
    :goto_2
    iget-boolean v5, p0, Lcom/koushikdutta/async/http/r;->g:Z

    if-nez v5, :cond_3

    if-nez v0, :cond_8

    :cond_3
    if-nez v1, :cond_8

    if-nez v4, :cond_8

    and-int/lit16 v1, p1, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 1261
    :goto_3
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/r;->i:Z

    and-int/lit8 p1, p1, 0xf

    .line 1262
    iput p1, p0, Lcom/koushikdutta/async/http/r;->l:I

    .line 1263
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/r;->k:Z

    new-array p1, v3, [B

    .line 1264
    iput-object p1, p0, Lcom/koushikdutta/async/http/r;->p:[B

    new-array p1, v3, [B

    .line 1265
    iput-object p1, p0, Lcom/koushikdutta/async/http/r;->q:[B

    .line 1267
    sget-object p1, Lcom/koushikdutta/async/http/r;->v:Ljava/util/List;

    iget v0, p0, Lcom/koushikdutta/async/http/r;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1271
    sget-object p1, Lcom/koushikdutta/async/http/r;->w:Ljava/util/List;

    iget v0, p0, Lcom/koushikdutta/async/http/r;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/koushikdutta/async/http/r;->i:Z

    if-eqz p1, :cond_5

    goto :goto_4

    .line 1272
    :cond_5
    new-instance p0, Lcom/koushikdutta/async/http/r$a;

    const-string p1, "Expected non-final packet"

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/r$a;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1275
    :cond_6
    :goto_4
    iput v2, p0, Lcom/koushikdutta/async/http/r;->h:I

    return-void

    .line 1268
    :cond_7
    new-instance p0, Lcom/koushikdutta/async/http/r$a;

    const-string p1, "Bad opcode"

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/r$a;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1258
    :cond_8
    new-instance p0, Lcom/koushikdutta/async/http/r$a;

    const-string p1, "RSV not zero"

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/r$a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/r;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/r$a;
        }
    .end annotation

    .line 1490
    array-length v0, p1

    .line 1525
    array-length v1, p1

    if-lt v1, v0, :cond_3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v1, 0x0

    .line 1531
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int v6, v7, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v4, v2

    if-ltz p1, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, v4, v0

    if-gtz p1, :cond_2

    long-to-int p1, v4

    .line 1291
    iput p1, p0, Lcom/koushikdutta/async/http/r;->n:I

    .line 1292
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/r;->j:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    :goto_1
    iput p1, p0, Lcom/koushikdutta/async/http/r;->h:I

    return-void

    .line 1492
    :cond_2
    new-instance p0, Lcom/koushikdutta/async/http/r$a;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bad integer: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/r$a;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1526
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length must be less than or equal to b.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private a(ILjava/lang/String;I)[B
    .locals 0

    .line 336
    invoke-static {p2}, Lcom/koushikdutta/async/http/r;->d(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/r;->a(I[BI)[B

    move-result-object p1

    return-object p1
.end method

.method private a(I[BI)[B
    .locals 6

    .line 324
    array-length v5, p2

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/r;->a(I[BIII)[B

    move-result-object p1

    return-object p1
.end method

.method private a(I[BIII)[B
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 340
    iget-boolean v3, v0, Lcom/koushikdutta/async/http/r;->r:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lez v1, :cond_1

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    add-int v6, p5, v5

    sub-int/2addr v6, v2

    const v7, 0xffff

    const/16 v8, 0x7d

    const/4 v9, 0x4

    if-gt v6, v8, :cond_2

    const/4 v10, 0x2

    goto :goto_1

    :cond_2
    if-gt v6, v7, :cond_3

    const/4 v10, 0x4

    goto :goto_1

    :cond_3
    const/16 v10, 0xa

    .line 347
    :goto_1
    iget-boolean v11, v0, Lcom/koushikdutta/async/http/r;->f:Z

    if-eqz v11, :cond_4

    const/4 v11, 0x4

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    add-int/2addr v11, v10

    .line 348
    iget-boolean v12, v0, Lcom/koushikdutta/async/http/r;->f:Z

    if-eqz v12, :cond_5

    const/16 v12, 0x80

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    add-int v13, v6, v11

    .line 349
    new-array v13, v13, [B

    move/from16 v14, p1

    int-to-byte v14, v14

    or-int/lit8 v14, v14, -0x80

    int-to-byte v14, v14

    .line 351
    aput-byte v14, v13, v4

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-gt v6, v8, :cond_6

    or-int/2addr v6, v12

    int-to-byte v6, v6

    .line 354
    aput-byte v6, v13, v15

    :goto_4
    move/from16 v20, v5

    goto :goto_5

    :cond_6
    if-gt v6, v7, :cond_7

    or-int/lit8 v7, v12, 0x7e

    int-to-byte v7, v7

    .line 356
    aput-byte v7, v13, v15

    .line 357
    div-int/lit16 v7, v6, 0x100

    int-to-byte v7, v7

    aput-byte v7, v13, v3

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 358
    aput-byte v6, v13, v14

    goto :goto_4

    :cond_7
    or-int/lit8 v7, v12, 0x7f

    int-to-byte v7, v7

    .line 361
    aput-byte v7, v13, v15

    int-to-long v7, v6

    const-wide/high16 v16, 0x100000000000000L

    .line 362
    div-long v16, v7, v16

    const-wide/16 v18, 0xff

    move/from16 v20, v5

    and-long v4, v16, v18

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v13, v3

    const-wide/high16 v4, 0x1000000000000L

    .line 363
    div-long v4, v7, v4

    and-long v4, v4, v18

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v13, v14

    const-wide v4, 0x10000000000L

    .line 364
    div-long v4, v7, v4

    and-long v4, v4, v18

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v13, v9

    const/4 v4, 0x5

    const-wide v16, 0x100000000L

    .line 365
    div-long v16, v7, v16

    and-long v14, v16, v18

    long-to-int v15, v14

    int-to-byte v14, v15

    aput-byte v14, v13, v4

    const/4 v4, 0x6

    const-wide/32 v14, 0x1000000

    .line 366
    div-long v14, v7, v14

    and-long v14, v14, v18

    long-to-int v15, v14

    int-to-byte v14, v15

    aput-byte v14, v13, v4

    const/4 v4, 0x7

    const-wide/32 v14, 0x10000

    .line 367
    div-long v14, v7, v14

    and-long v14, v14, v18

    long-to-int v15, v14

    int-to-byte v14, v15

    aput-byte v14, v13, v4

    const/16 v4, 0x8

    const-wide/16 v14, 0x100

    .line 368
    div-long/2addr v7, v14

    and-long v7, v7, v18

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v13, v4

    const/16 v4, 0x9

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 369
    aput-byte v6, v13, v4

    :goto_5
    if-lez v1, :cond_8

    .line 373
    div-int/lit16 v4, v1, 0x100

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v13, v11

    add-int/lit8 v4, v11, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 374
    aput-byte v1, v13, v4

    :cond_8
    add-int v1, v11, v20

    sub-int v4, p5, v2

    move-object/from16 v6, p2

    .line 377
    invoke-static {v6, v2, v13, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iget-boolean v1, v0, Lcom/koushikdutta/async/http/r;->f:Z

    if-eqz v1, :cond_9

    new-array v1, v9, [B

    .line 381
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v14, 0x4070000000000000L    # 256.0

    mul-double v6, v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-byte v2, v2

    const/4 v4, 0x0

    aput-byte v2, v1, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double v6, v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 382
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double v4, v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double v2, v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/4 v2, 0x0

    .line 384
    invoke-static {v1, v2, v13, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    invoke-static {v13, v1, v11}, Lcom/koushikdutta/async/http/r;->a([B[BI)[B

    :cond_9
    return-object v13
.end method

.method private static a([B[BI)[B
    .locals 4

    .line 110
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    array-length v1, p0

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_1

    add-int v1, p2, v0

    .line 113
    aget-byte v2, p0, v1

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/r;B)V
    .locals 2

    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1279
    :goto_0
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/r;->j:Z

    and-int/lit8 p1, p1, 0x7f

    .line 1280
    iput p1, p0, Lcom/koushikdutta/async/http/r;->n:I

    .line 1282
    iget p1, p0, Lcom/koushikdutta/async/http/r;->n:I

    if-ltz p1, :cond_2

    const/16 v0, 0x7d

    if-gt p1, v0, :cond_2

    .line 1283
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/r;->j:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    :goto_1
    iput p1, p0, Lcom/koushikdutta/async/http/r;->h:I

    return-void

    .line 1285
    :cond_2
    iget p1, p0, Lcom/koushikdutta/async/http/r;->n:I

    const/16 v0, 0x7e

    const/4 v1, 0x2

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    :goto_2
    iput p1, p0, Lcom/koushikdutta/async/http/r;->m:I

    .line 1286
    iput v1, p0, Lcom/koushikdutta/async/http/r;->h:I

    return-void
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/r;)[B
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/koushikdutta/async/http/r;->p:[B

    return-object p0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/r;[B)[B
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/koushikdutta/async/http/r;->p:[B

    return-object p1
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/r;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/koushikdutta/async/http/r;->n:I

    return p0
.end method

.method private static c([B)Ljava/lang/String;
    .locals 2

    .line 475
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 477
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/r;[B)[B
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/koushikdutta/async/http/r;->q:[B

    return-object p1
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/r;)[B
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/koushikdutta/async/http/r;->q:[B

    return-object p0
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 483
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 485
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic e(Lcom/koushikdutta/async/http/r;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2398
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->q:[B

    iget-object v1, p0, Lcom/koushikdutta/async/http/r;->p:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/http/r;->a([B[BI)[B

    move-result-object v0

    .line 2399
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/r;->k:Z

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    .line 3119
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3121
    iget-object v6, p0, Lcom/koushikdutta/async/http/r;->t:Ljava/util/zip/Inflater;

    invoke-virtual {v6, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 3122
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->t:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->t:Ljava/util/zip/Inflater;

    iget-object v6, p0, Lcom/koushikdutta/async/http/r;->u:[B

    invoke-virtual {v0, v6}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 3124
    iget-object v6, p0, Lcom/koushikdutta/async/http/r;->u:[B

    invoke-virtual {v1, v6, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 3127
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->t:Ljava/util/zip/Inflater;

    const/4 v6, 0x4

    new-array v6, v6, [B

    aput-byte v2, v6, v2

    aput-byte v2, v6, v4

    aput-byte v3, v6, v5

    const/4 v7, 0x3

    aput-byte v3, v6, v7

    invoke-virtual {v0, v6}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 3128
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->t:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3129
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->t:Ljava/util/zip/Inflater;

    iget-object v6, p0, Lcom/koushikdutta/async/http/r;->u:[B

    invoke-virtual {v0, v6}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 3130
    iget-object v6, p0, Lcom/koushikdutta/async/http/r;->u:[B

    invoke-virtual {v1, v6, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 3133
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2403
    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid deflated data"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2406
    :cond_2
    :goto_2
    iget v1, p0, Lcom/koushikdutta/async/http/r;->l:I

    if-nez v1, :cond_5

    .line 2409
    iget v1, p0, Lcom/koushikdutta/async/http/r;->o:I

    if-eqz v1, :cond_4

    .line 2412
    iget-object v1, p0, Lcom/koushikdutta/async/http/r;->s:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2413
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/r;->i:Z

    if-eqz v0, :cond_e

    .line 2414
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->s:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2415
    iget v1, p0, Lcom/koushikdutta/async/http/r;->o:I

    if-ne v1, v4, :cond_3

    .line 2416
    invoke-static {v0}, Lcom/koushikdutta/async/http/r;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/r;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 2418
    :cond_3
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/r;->a([B)V

    .line 3469
    :goto_3
    iput v2, p0, Lcom/koushikdutta/async/http/r;->o:I

    .line 3470
    iget-object p0, p0, Lcom/koushikdutta/async/http/r;->s:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    .line 2410
    :cond_4
    new-instance p0, Lcom/koushikdutta/async/http/r$a;

    const-string v0, "Mode was not set."

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/r$a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-ne v1, v4, :cond_7

    .line 2424
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/r;->i:Z

    if-eqz v1, :cond_6

    .line 2425
    invoke-static {v0}, Lcom/koushikdutta/async/http/r;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 2426
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/r;->a(Ljava/lang/String;)V

    return-void

    .line 2428
    :cond_6
    iput v4, p0, Lcom/koushikdutta/async/http/r;->o:I

    .line 2429
    iget-object p0, p0, Lcom/koushikdutta/async/http/r;->s:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void

    :cond_7
    if-ne v1, v5, :cond_9

    .line 2433
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/r;->i:Z

    if-eqz v1, :cond_8

    .line 2434
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/r;->a([B)V

    return-void

    .line 2436
    :cond_8
    iput v5, p0, Lcom/koushikdutta/async/http/r;->o:I

    .line 2437
    iget-object p0, p0, Lcom/koushikdutta/async/http/r;->s:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void

    :cond_9
    const/16 v4, 0x8

    if-ne v1, v4, :cond_b

    .line 2442
    array-length v1, v0

    if-le v1, v5, :cond_a

    .line 3498
    array-length v1, v0

    sub-int/2addr v1, v5

    new-array v1, v1, [B

    .line 3499
    array-length v3, v0

    sub-int/2addr v3, v5

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2442
    invoke-static {v1}, Lcom/koushikdutta/async/http/r;->c([B)Ljava/lang/String;

    .line 2444
    :cond_a
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/r;->b()V

    return-void

    :cond_b
    const/16 v2, 0x9

    const/16 v4, 0xa

    if-ne v1, v2, :cond_d

    .line 2447
    array-length v1, v0

    const/16 v2, 0x7d

    if-gt v1, v2, :cond_c

    .line 2449
    invoke-static {v0}, Lcom/koushikdutta/async/http/r;->c([B)Ljava/lang/String;

    move-result-object v1

    .line 2450
    invoke-direct {p0, v4, v0, v3}, Lcom/koushikdutta/async/http/r;->a(I[BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/r;->b([B)V

    .line 2451
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/r;->c(Ljava/lang/String;)V

    return-void

    .line 2447
    :cond_c
    new-instance p0, Lcom/koushikdutta/async/http/r$a;

    const-string v0, "Ping payload too large"

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/r$a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    if-ne v1, v4, :cond_e

    .line 2453
    invoke-static {v0}, Lcom/koushikdutta/async/http/r;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 2454
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/r;->b(Ljava/lang/String;)V

    :cond_e
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 211
    iget v0, p0, Lcom/koushikdutta/async/http/r;->h:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->x:Lcom/koushikdutta/async/p;

    iget v1, p0, Lcom/koushikdutta/async/http/r;->n:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/r;->e:Lcom/koushikdutta/async/a/d;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/p;->read(ILcom/koushikdutta/async/a/d;)V

    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->x:Lcom/koushikdutta/async/p;

    iget-object v1, p0, Lcom/koushikdutta/async/http/r;->d:Lcom/koushikdutta/async/a/d;

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/p;->read(ILcom/koushikdutta/async/a/d;)V

    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->x:Lcom/koushikdutta/async/p;

    iget v1, p0, Lcom/koushikdutta/async/http/r;->m:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/r;->c:Lcom/koushikdutta/async/a/d;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/p;->read(ILcom/koushikdutta/async/a/d;)V

    return-void

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->x:Lcom/koushikdutta/async/p;

    iget-object v2, p0, Lcom/koushikdutta/async/http/r;->b:Lcom/koushikdutta/async/a/d;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/p;->read(ILcom/koushikdutta/async/a/d;)V

    return-void

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->x:Lcom/koushikdutta/async/p;

    iget-object v2, p0, Lcom/koushikdutta/async/http/r;->a:Lcom/koushikdutta/async/a/d;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/p;->read(ILcom/koushikdutta/async/a/d;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/Exception;)V
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract a([B)V
.end method

.method protected abstract b()V
.end method

.method protected abstract b(Ljava/lang/String;)V
.end method

.method protected abstract b([B)V
.end method

.method protected abstract c(Ljava/lang/String;)V
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/r;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 393
    invoke-direct {p0, v0, p2, p1}, Lcom/koushikdutta/async/http/r;->a(ILjava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/r;->b([B)V

    const/4 p1, 0x1

    .line 394
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/r;->r:Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/koushikdutta/async/http/r;->t:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 509
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :catch_0
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public frame(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 296
    invoke-direct {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/r;->a(ILjava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public frame([B)[B
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 300
    invoke-direct {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/r;->a(I[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public frame([BII)[B
    .locals 6

    const/4 v1, 0x2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    .line 304
    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/r;->a(I[BIII)[B

    move-result-object p1

    return-object p1
.end method

.method public pingFrame(Ljava/lang/String;)[B
    .locals 2

    const/16 v0, 0x9

    const/4 v1, -0x1

    .line 308
    invoke-direct {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/r;->a(ILjava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public pongFrame(Ljava/lang/String;)[B
    .locals 2

    const/16 v0, 0xa

    const/4 v1, -0x1

    .line 312
    invoke-direct {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/r;->a(ILjava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public setDeflate(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/r;->g:Z

    return-void
.end method

.method public setMasking(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/r;->f:Z

    return-void
.end method
