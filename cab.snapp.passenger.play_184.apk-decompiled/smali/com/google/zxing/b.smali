.class public final Lcom/google/zxing/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/a;

.field private b:Lcom/google/zxing/common/b;


# direct methods
.method public constructor <init>(Lcom/google/zxing/a;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Binarizer must be non-null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final crop(IIII)Lcom/google/zxing/b;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v0}, Lcom/google/zxing/a;->getLuminanceSource()Lcom/google/zxing/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/zxing/f;->crop(IIII)Lcom/google/zxing/f;

    move-result-object p1

    .line 109
    new-instance p2, Lcom/google/zxing/b;

    iget-object p3, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {p3, p1}, Lcom/google/zxing/a;->createBinarizer(Lcom/google/zxing/f;)Lcom/google/zxing/a;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/a;)V

    return-object p2
.end method

.method public final getBlackMatrix()Lcom/google/zxing/common/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/zxing/b;->b:Lcom/google/zxing/common/b;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v0}, Lcom/google/zxing/a;->getBlackMatrix()Lcom/google/zxing/common/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/b;->b:Lcom/google/zxing/common/b;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/b;->b:Lcom/google/zxing/common/b;

    return-object v0
.end method

.method public final getBlackRow(ILcom/google/zxing/common/a;)Lcom/google/zxing/common/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/a;->getBlackRow(ILcom/google/zxing/common/a;)Lcom/google/zxing/common/a;

    move-result-object p1

    return-object p1
.end method

.method public final getHeight()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v0}, Lcom/google/zxing/a;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v0}, Lcom/google/zxing/a;->getWidth()I

    move-result v0

    return v0
.end method

.method public final isCropSupported()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v0}, Lcom/google/zxing/a;->getLuminanceSource()Lcom/google/zxing/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/f;->isCropSupported()Z

    move-result v0

    return v0
.end method

.method public final isRotateSupported()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v0}, Lcom/google/zxing/a;->getLuminanceSource()Lcom/google/zxing/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/f;->isRotateSupported()Z

    move-result v0

    return v0
.end method

.method public final rotateCounterClockwise()Lcom/google/zxing/b;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v0}, Lcom/google/zxing/a;->getLuminanceSource()Lcom/google/zxing/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/f;->rotateCounterClockwise()Lcom/google/zxing/f;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/google/zxing/b;

    iget-object v2, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v2, v0}, Lcom/google/zxing/a;->createBinarizer(Lcom/google/zxing/f;)Lcom/google/zxing/a;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/a;)V

    return-object v1
.end method

.method public final rotateCounterClockwise45()Lcom/google/zxing/b;
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v0}, Lcom/google/zxing/a;->getLuminanceSource()Lcom/google/zxing/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/f;->rotateCounterClockwise45()Lcom/google/zxing/f;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/google/zxing/b;

    iget-object v2, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/a;

    invoke-virtual {v2, v0}, Lcom/google/zxing/a;->createBinarizer(Lcom/google/zxing/f;)Lcom/google/zxing/a;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/a;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/b;->getBlackMatrix()Lcom/google/zxing/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/b;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/h; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method
