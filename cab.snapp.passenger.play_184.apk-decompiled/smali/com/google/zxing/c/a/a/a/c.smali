.class final Lcom/google/zxing/c/a/a/a/c;
.super Lcom/google/zxing/c/a/a/a/h;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/h;-><init>(Lcom/google/zxing/common/a;)V

    return-void
.end method


# virtual methods
.method public final parseInformation()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/d;
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/j;->a:Lcom/google/zxing/common/a;

    .line 47
    invoke-virtual {v0}, Lcom/google/zxing/common/a;->getSize()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    .line 53
    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/c/a/a/a/c;->b(Ljava/lang/StringBuilder;I)V

    .line 1052
    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/j;->b:Lcom/google/zxing/c/a/a/a/s;

    const/4 v3, 0x2

    .line 56
    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v1

    const-string v2, "(392"

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2052
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/j;->b:Lcom/google/zxing/c/a/a/a/s;

    const/16 v2, 0x32

    const/4 v3, 0x0

    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/c/a/a/a/s;->a(ILjava/lang/String;)Lcom/google/zxing/c/a/a/a/o;

    move-result-object v1

    .line 2054
    iget-object v1, v1, Lcom/google/zxing/c/a/a/a/o;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0
.end method
