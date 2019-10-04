.class final Lcom/google/zxing/datamatrix/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/zxing/common/b;

.field final b:Lcom/google/zxing/common/b;

.field final c:Lcom/google/zxing/datamatrix/a/e;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/d;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1062
    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v0

    .line 1063
    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v1

    .line 1064
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/a/e;->getVersionForDimensions(II)Lcom/google/zxing/datamatrix/a/e;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/google/zxing/datamatrix/a/a;->c:Lcom/google/zxing/datamatrix/a/e;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/zxing/datamatrix/a/a;->a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/datamatrix/a/a;->a:Lcom/google/zxing/common/b;

    .line 43
    new-instance p1, Lcom/google/zxing/common/b;

    iget-object v0, p0, Lcom/google/zxing/datamatrix/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v0}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v1}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/zxing/common/b;-><init>(II)V

    iput-object p1, p0, Lcom/google/zxing/datamatrix/a/a;->b:Lcom/google/zxing/common/b;

    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object p1

    throw p1
.end method

.method private a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/b;
    .locals 16

    move-object/from16 v0, p0

    .line 403
    iget-object v1, v0, Lcom/google/zxing/datamatrix/a/a;->c:Lcom/google/zxing/datamatrix/a/e;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/a/e;->getSymbolSizeRows()I

    move-result v1

    .line 404
    iget-object v2, v0, Lcom/google/zxing/datamatrix/a/a;->c:Lcom/google/zxing/datamatrix/a/e;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/a/e;->getSymbolSizeColumns()I

    move-result v2

    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 410
    iget-object v3, v0, Lcom/google/zxing/datamatrix/a/a;->c:Lcom/google/zxing/datamatrix/a/e;

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/a/e;->getDataRegionSizeRows()I

    move-result v3

    .line 411
    iget-object v4, v0, Lcom/google/zxing/datamatrix/a/a;->c:Lcom/google/zxing/datamatrix/a/e;

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/a/e;->getDataRegionSizeColumns()I

    move-result v4

    .line 413
    div-int/2addr v1, v3

    .line 414
    div-int/2addr v2, v4

    mul-int v5, v1, v3

    mul-int v6, v2, v4

    .line 419
    new-instance v7, Lcom/google/zxing/common/b;

    invoke-direct {v7, v6, v5}, Lcom/google/zxing/common/b;-><init>(II)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    mul-int v8, v6, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_3

    mul-int v10, v9, v4

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_2

    add-int/lit8 v12, v3, 0x2

    mul-int v12, v12, v6

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v12, v11

    add-int v13, v8, v11

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v4, :cond_1

    add-int/lit8 v15, v4, 0x2

    mul-int v15, v15, v9

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v15, v14

    move-object/from16 v5, p1

    .line 429
    invoke-virtual {v5, v15, v12}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v15

    if-eqz v15, :cond_0

    add-int v15, v10, v14

    .line 431
    invoke-virtual {v7, v15, v13}, Lcom/google/zxing/common/b;->set(II)V

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_1
    move-object/from16 v5, p1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v5, p1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v5, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-object v7

    .line 407
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dimension of bitMatrix must match the version size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method final a(IIII)Z
    .locals 0

    if-gez p1, :cond_0

    add-int/2addr p1, p3

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, p4

    add-int/lit8 p4, p4, 0x4

    and-int/lit8 p3, p4, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p1, p3

    .line 164
    :cond_1
    iget-object p3, p0, Lcom/google/zxing/datamatrix/a/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {p3, p2, p1}, Lcom/google/zxing/common/b;->set(II)V

    .line 165
    iget-object p3, p0, Lcom/google/zxing/datamatrix/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {p3, p2, p1}, Lcom/google/zxing/common/b;->get(II)Z

    move-result p1

    return p1
.end method

.method final b(IIII)I
    .locals 5

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    .line 181
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p2, -0x1

    .line 185
    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p1, -0x1

    .line 189
    invoke-virtual {p0, v2, v1, p3, p4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 193
    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 197
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 201
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 205
    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 209
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method
