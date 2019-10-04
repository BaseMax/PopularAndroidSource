.class public final Lcom/google/zxing/datamatrix/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/j;


# static fields
.field private static final a:[Lcom/google/zxing/m;


# instance fields
.field private final b:Lcom/google/zxing/datamatrix/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/m;

    .line 45
    sput-object v0, Lcom/google/zxing/datamatrix/a;->a:[Lcom/google/zxing/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/zxing/datamatrix/a/d;

    invoke-direct {v0}, Lcom/google/zxing/datamatrix/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/a;->b:Lcom/google/zxing/datamatrix/a/d;

    return-void
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/b;)Lcom/google/zxing/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/c;,
            Lcom/google/zxing/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/a;->decode(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/l;

    move-result-object p1

    return-object p1
.end method

.method public final decode(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/l;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/b;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/l;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/c;,
            Lcom/google/zxing/d;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 67
    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 68
    invoke-virtual {p1}, Lcom/google/zxing/b;->getBlackMatrix()Lcom/google/zxing/common/b;

    move-result-object p1

    .line 1104
    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getTopLeftOnBit()[I

    move-result-object p2

    .line 1105
    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getBottomRightOnBit()[I

    move-result-object v0

    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    .line 1144
    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    .line 1145
    aget v3, p2, v2

    const/4 v4, 0x1

    .line 1146
    aget v5, p2, v4

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1147
    invoke-virtual {p1, v3, v5}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eq v3, v1, :cond_6

    .line 1154
    aget v1, p2, v2

    sub-int/2addr v3, v1

    if-eqz v3, :cond_5

    .line 1112
    aget v1, p2, v4

    .line 1113
    aget v5, v0, v4

    .line 1114
    aget p2, p2, v2

    .line 1115
    aget v0, v0, v2

    sub-int/2addr v0, p2

    add-int/2addr v0, v4

    .line 1117
    div-int/2addr v0, v3

    sub-int/2addr v5, v1

    add-int/2addr v5, v4

    .line 1118
    div-int/2addr v5, v3

    if-lez v0, :cond_4

    if-lez v5, :cond_4

    .line 1126
    div-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    add-int/2addr p2, v4

    .line 1131
    new-instance v4, Lcom/google/zxing/common/b;

    invoke-direct {v4, v0, v5}, Lcom/google/zxing/common/b;-><init>(II)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    mul-int v7, v6, v3

    add-int/2addr v7, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_2

    mul-int v9, v8, v3

    add-int/2addr v9, p2

    .line 1135
    invoke-virtual {p1, v9, v7}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1136
    invoke-virtual {v4, v8, v6}, Lcom/google/zxing/common/b;->set(II)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 69
    :cond_3
    iget-object p1, p0, Lcom/google/zxing/datamatrix/a;->b:Lcom/google/zxing/datamatrix/a/d;

    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/a/d;->decode(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/d;

    move-result-object p1

    .line 70
    sget-object p2, Lcom/google/zxing/datamatrix/a;->a:[Lcom/google/zxing/m;

    goto :goto_3

    .line 1120
    :cond_4
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    .line 1156
    :cond_5
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    .line 1151
    :cond_6
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    .line 1107
    :cond_7
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    .line 72
    :cond_8
    new-instance p2, Lcom/google/zxing/datamatrix/b/a;

    invoke-virtual {p1}, Lcom/google/zxing/b;->getBlackMatrix()Lcom/google/zxing/common/b;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/zxing/datamatrix/b/a;-><init>(Lcom/google/zxing/common/b;)V

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/b/a;->detect()Lcom/google/zxing/common/f;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/google/zxing/datamatrix/a;->b:Lcom/google/zxing/datamatrix/a/d;

    invoke-virtual {p1}, Lcom/google/zxing/common/f;->getBits()Lcom/google/zxing/common/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/datamatrix/a/d;->decode(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/d;

    move-result-object p2

    .line 74
    invoke-virtual {p1}, Lcom/google/zxing/common/f;->getPoints()[Lcom/google/zxing/m;

    move-result-object p1

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    .line 76
    :goto_3
    new-instance v0, Lcom/google/zxing/l;

    invoke-virtual {p1}, Lcom/google/zxing/common/d;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/common/d;->getRawBytes()[B

    move-result-object v2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/zxing/l;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;)V

    .line 78
    invoke-virtual {p1}, Lcom/google/zxing/common/d;->getByteSegments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 80
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/l;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 82
    :cond_9
    invoke-virtual {p1}, Lcom/google/zxing/common/d;->getECLevel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 84
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/l;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_a
    return-object v0
.end method

.method public final reset()V
    .locals 0

    return-void
.end method
