.class public final Lcom/google/zxing/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:I

.field private d:[Lcom/google/zxing/m;

.field private final e:Lcom/google/zxing/BarcodeFormat;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/zxing/l;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/google/zxing/l;->b:[B

    .line 61
    iput p3, p0, Lcom/google/zxing/l;->c:I

    .line 62
    iput-object p4, p0, Lcom/google/zxing/l;->d:[Lcom/google/zxing/m;

    .line 63
    iput-object p5, p0, Lcom/google/zxing/l;->e:Lcom/google/zxing/BarcodeFormat;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/google/zxing/l;->f:Ljava/util/Map;

    .line 65
    iput-wide p6, p0, Lcom/google/zxing/l;->g:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;)V
    .locals 7

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/l;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;J)V
    .locals 9

    if-nez p2, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    .line 49
    :cond_0
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    move v4, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/zxing/l;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;J)V

    return-void
.end method


# virtual methods
.method public final addResultPoints([Lcom/google/zxing/m;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/google/zxing/l;->d:[Lcom/google/zxing/m;

    if-nez v0, :cond_0

    .line 135
    iput-object p1, p0, Lcom/google/zxing/l;->d:[Lcom/google/zxing/m;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 136
    array-length v1, p1

    if-lez v1, :cond_1

    .line 137
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/google/zxing/m;

    .line 138
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput-object v1, p0, Lcom/google/zxing/l;->d:[Lcom/google/zxing/m;

    :cond_1
    return-void
.end method

.method public final getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/zxing/l;->e:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method

.method public final getNumBits()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/google/zxing/l;->c:I

    return v0
.end method

.method public final getRawBytes()[B
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/zxing/l;->b:[B

    return-object v0
.end method

.method public final getResultMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/zxing/l;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final getResultPoints()[Lcom/google/zxing/m;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/zxing/l;->d:[Lcom/google/zxing/m;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/zxing/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/google/zxing/l;->g:J

    return-wide v0
.end method

.method public final putAllMetadata(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/google/zxing/l;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 125
    iput-object p1, p0, Lcom/google/zxing/l;->f:Ljava/util/Map;

    return-void

    .line 127
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/google/zxing/l;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/zxing/l;->f:Ljava/util/Map;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/l;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/zxing/l;->a:Ljava/lang/String;

    return-object v0
.end method
