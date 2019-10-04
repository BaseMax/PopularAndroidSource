.class public final Lcom/google/zxing/c/l;
.super Lcom/google/zxing/c/p;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/c/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/google/zxing/c/p;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/c/e;

    invoke-direct {v0}, Lcom/google/zxing/c/e;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/p;

    return-void
.end method

.method private static a(Lcom/google/zxing/l;)Lcom/google/zxing/l;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/d;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/zxing/l;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 80
    new-instance v1, Lcom/google/zxing/l;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/l;->getResultPoints()[Lcom/google/zxing/m;

    move-result-object v3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/zxing/l;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/zxing/l;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/google/zxing/l;->getResultMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/zxing/l;->putAllMetadata(Ljava/util/Map;)V

    :cond_0
    return-object v1

    .line 86
    :cond_1
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected final a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuilder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/c/p;->a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method final a()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 68
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method

.method public final decode(Lcom/google/zxing/b;)Lcom/google/zxing/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/d;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/p;

    invoke-virtual {v0, p1}, Lcom/google/zxing/c/p;->decode(Lcom/google/zxing/b;)Lcom/google/zxing/l;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/c/l;->a(Lcom/google/zxing/l;)Lcom/google/zxing/l;

    move-result-object p1

    return-object p1
.end method

.method public final decode(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/l;
    .locals 1
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
            Lcom/google/zxing/d;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/p;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/c/p;->decode(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/l;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/c/l;->a(Lcom/google/zxing/l;)Lcom/google/zxing/l;

    move-result-object p1

    return-object p1
.end method

.method public final decodeRow(ILcom/google/zxing/common/a;Ljava/util/Map;)Lcom/google/zxing/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/a;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/l;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/d;,
            Lcom/google/zxing/c;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/c/p;->decodeRow(ILcom/google/zxing/common/a;Ljava/util/Map;)Lcom/google/zxing/l;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/c/l;->a(Lcom/google/zxing/l;)Lcom/google/zxing/l;

    move-result-object p1

    return-object p1
.end method

.method public final decodeRow(ILcom/google/zxing/common/a;[ILjava/util/Map;)Lcom/google/zxing/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/a;",
            "[I",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/l;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/d;,
            Lcom/google/zxing/c;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/zxing/c/p;->decodeRow(ILcom/google/zxing/common/a;[ILjava/util/Map;)Lcom/google/zxing/l;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/c/l;->a(Lcom/google/zxing/l;)Lcom/google/zxing/l;

    move-result-object p1

    return-object p1
.end method
