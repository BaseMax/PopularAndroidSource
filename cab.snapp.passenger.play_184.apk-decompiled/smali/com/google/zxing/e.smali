.class public final Lcom/google/zxing/e;
.super Lcom/google/zxing/f;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/f;


# direct methods
.method public constructor <init>(Lcom/google/zxing/f;)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Lcom/google/zxing/f;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/f;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/f;-><init>(II)V

    .line 31
    iput-object p1, p0, Lcom/google/zxing/e;->a:Lcom/google/zxing/f;

    return-void
.end method


# virtual methods
.method public final crop(IIII)Lcom/google/zxing/f;
    .locals 2

    .line 62
    new-instance v0, Lcom/google/zxing/e;

    iget-object v1, p0, Lcom/google/zxing/e;->a:Lcom/google/zxing/f;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/zxing/f;->crop(IIII)Lcom/google/zxing/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/zxing/e;-><init>(Lcom/google/zxing/f;)V

    return-object v0
.end method

.method public final getMatrix()[B
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/google/zxing/e;->a:Lcom/google/zxing/f;

    invoke-virtual {v0}, Lcom/google/zxing/f;->getMatrix()[B

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/google/zxing/e;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/e;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    .line 48
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 50
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final getRow(I[B)[B
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/google/zxing/e;->a:Lcom/google/zxing/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/f;->getRow(I[B)[B

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/google/zxing/e;->getWidth()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 39
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final invert()Lcom/google/zxing/f;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/zxing/e;->a:Lcom/google/zxing/f;

    return-object v0
.end method

.method public final isCropSupported()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/zxing/e;->a:Lcom/google/zxing/f;

    invoke-virtual {v0}, Lcom/google/zxing/f;->isCropSupported()Z

    move-result v0

    return v0
.end method

.method public final isRotateSupported()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/zxing/e;->a:Lcom/google/zxing/f;

    invoke-virtual {v0}, Lcom/google/zxing/f;->isRotateSupported()Z

    move-result v0

    return v0
.end method

.method public final rotateCounterClockwise()Lcom/google/zxing/f;
    .locals 2

    .line 80
    new-instance v0, Lcom/google/zxing/e;

    iget-object v1, p0, Lcom/google/zxing/e;->a:Lcom/google/zxing/f;

    invoke-virtual {v1}, Lcom/google/zxing/f;->rotateCounterClockwise()Lcom/google/zxing/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/e;-><init>(Lcom/google/zxing/f;)V

    return-object v0
.end method

.method public final rotateCounterClockwise45()Lcom/google/zxing/f;
    .locals 2

    .line 85
    new-instance v0, Lcom/google/zxing/e;

    iget-object v1, p0, Lcom/google/zxing/e;->a:Lcom/google/zxing/f;

    invoke-virtual {v1}, Lcom/google/zxing/f;->rotateCounterClockwise45()Lcom/google/zxing/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/e;-><init>(Lcom/google/zxing/f;)V

    return-object v0
.end method
