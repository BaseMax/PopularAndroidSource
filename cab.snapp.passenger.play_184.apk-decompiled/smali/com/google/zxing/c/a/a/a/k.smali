.class final Lcom/google/zxing/c/a/a/a/k;
.super Lcom/google/zxing/c/a/a/a/j;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/j;-><init>(Lcom/google/zxing/common/a;)V

    return-void
.end method


# virtual methods
.method public final parseInformation()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/d;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/j;->b:Lcom/google/zxing/c/a/a/a/s;

    const/4 v2, 0x5

    .line 48
    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/c/a/a/a/s;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
