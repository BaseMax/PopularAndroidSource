.class public final Lcom/google/zxing/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/j;


# static fields
.field private static final a:[Lcom/google/zxing/m;


# instance fields
.field private final b:Lcom/google/zxing/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/m;

    .line 40
    sput-object v0, Lcom/google/zxing/b/a;->a:[Lcom/google/zxing/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/zxing/b/a/c;

    invoke-direct {v0}, Lcom/google/zxing/b/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/b/a;->b:Lcom/google/zxing/b/a/c;

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

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/b/a;->decode(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/l;

    move-result-object p1

    return-object p1
.end method

.method public final decode(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/l;
    .locals 16
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

    move-object/from16 v0, p2

    if-eqz v0, :cond_5

    .line 63
    sget-object v1, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/b;->getBlackMatrix()Lcom/google/zxing/common/b;

    move-result-object v1

    .line 1095
    invoke-virtual {v1}, Lcom/google/zxing/common/b;->getEnclosingRectangle()[I

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 1100
    aget v4, v2, v3

    const/4 v5, 0x1

    .line 1101
    aget v5, v2, v5

    const/4 v6, 0x2

    .line 1102
    aget v7, v2, v6

    const/4 v8, 0x3

    .line 1103
    aget v2, v2, v8

    .line 1106
    new-instance v8, Lcom/google/zxing/common/b;

    const/16 v9, 0x21

    const/16 v10, 0x1e

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/common/b;-><init>(II)V

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_2

    mul-int v12, v11, v2

    .line 1108
    div-int/lit8 v13, v2, 0x2

    add-int/2addr v12, v13

    div-int/2addr v12, v9

    add-int/2addr v12, v5

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v10, :cond_1

    mul-int v14, v13, v7

    .line 1110
    div-int/lit8 v15, v7, 0x2

    add-int/2addr v14, v15

    and-int/lit8 v15, v11, 0x1

    mul-int v15, v15, v7

    div-int/2addr v15, v6

    add-int/2addr v14, v15

    div-int/2addr v14, v10

    add-int/2addr v14, v4

    .line 1111
    invoke-virtual {v1, v14, v12}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1112
    invoke-virtual {v8, v13, v11}, Lcom/google/zxing/common/b;->set(II)V

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v11, p0

    .line 65
    iget-object v1, v11, Lcom/google/zxing/b/a;->b:Lcom/google/zxing/b/a/c;

    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/b/a/c;->decode(Lcom/google/zxing/common/b;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/google/zxing/l;

    invoke-virtual {v0}, Lcom/google/zxing/common/d;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/common/d;->getRawBytes()[B

    move-result-object v3

    sget-object v4, Lcom/google/zxing/b/a;->a:[Lcom/google/zxing/m;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/l;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;)V

    .line 72
    invoke-virtual {v0}, Lcom/google/zxing/common/d;->getECLevel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1, v2, v0}, Lcom/google/zxing/l;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p0

    .line 1097
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0

    :cond_5
    move-object/from16 v11, p0

    .line 67
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final reset()V
    .locals 0

    return-void
.end method
