.class final Lcom/google/zxing/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[I

.field private final b:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 34
    iput-object v0, p0, Lcom/google/zxing/c/m;->a:[I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/m;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method final a(ILcom/google/zxing/common/a;[I)Lcom/google/zxing/l;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    .line 39
    iget-object v2, v0, Lcom/google/zxing/c/m;->b:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1061
    iget-object v4, v0, Lcom/google/zxing/c/m;->a:[I

    .line 1062
    aput v3, v4, v3

    const/4 v5, 0x1

    .line 1063
    aput v3, v4, v5

    const/4 v6, 0x2

    .line 1064
    aput v3, v4, v6

    const/4 v7, 0x3

    .line 1065
    aput v3, v4, v7

    .line 1066
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/a;->getSize()I

    move-result v7

    .line 1067
    aget v8, p3, v5

    move v9, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v6, :cond_3

    if-ge v9, v7, :cond_3

    .line 1072
    sget-object v11, Lcom/google/zxing/c/p;->f:[[I

    invoke-static {v1, v4, v9, v11}, Lcom/google/zxing/c/p;->a(Lcom/google/zxing/common/a;[II[[I)I

    move-result v11

    .line 1073
    rem-int/lit8 v12, v11, 0xa

    add-int/lit8 v12, v12, 0x30

    int-to-char v12, v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    array-length v12, v4

    move v13, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v12, :cond_0

    aget v14, v4, v9

    add-int/2addr v13, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const/16 v9, 0xa

    if-lt v11, v9, :cond_1

    rsub-int/lit8 v9, v8, 0x1

    shl-int v9, v5, v9

    or-int/2addr v9, v10

    move v10, v9

    :cond_1
    if-eq v8, v5, :cond_2

    .line 1082
    invoke-virtual {v1, v13}, Lcom/google/zxing/common/a;->getNextSet(I)I

    move-result v9

    .line 1083
    invoke-virtual {v1, v9}, Lcom/google/zxing/common/a;->getNextUnset(I)I

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v13

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1087
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 1091
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-ne v1, v10, :cond_6

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1104
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    if-eq v2, v6, :cond_4

    move-object v2, v4

    goto :goto_3

    .line 1107
    :cond_4
    new-instance v2, Ljava/util/EnumMap;

    const-class v7, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v2, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1108
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_3
    new-instance v7, Lcom/google/zxing/l;

    new-array v6, v6, [Lcom/google/zxing/m;

    new-instance v8, Lcom/google/zxing/m;

    aget v10, p3, v3

    aget v11, p3, v5

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move/from16 v11, p1

    int-to-float v11, v11

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v8, v6, v3

    new-instance v3, Lcom/google/zxing/m;

    int-to-float v8, v9

    invoke-direct {v3, v8, v11}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v3, v6, v5

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v7, v1, v4, v6, v3}, Lcom/google/zxing/l;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz v2, :cond_5

    .line 55
    invoke-virtual {v7, v2}, Lcom/google/zxing/l;->putAllMetadata(Ljava/util/Map;)V

    :cond_5
    return-object v7

    .line 1092
    :cond_6
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    throw v1

    .line 1088
    :cond_7
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
