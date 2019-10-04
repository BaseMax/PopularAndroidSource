.class abstract Lcom/google/zxing/c/a/a/a/f;
.super Lcom/google/zxing/c/a/a/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/i;-><init>(Lcom/google/zxing/common/a;)V

    return-void
.end method


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/j;->a:Lcom/google/zxing/common/a;

    .line 46
    invoke-virtual {v0}, Lcom/google/zxing/common/a;->getSize()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/c/a/a/a/f;->b(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x2d

    const/16 v2, 0xf

    .line 53
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/zxing/c/a/a/a/f;->b(Ljava/lang/StringBuilder;II)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0
.end method
