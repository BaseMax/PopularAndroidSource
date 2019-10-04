.class public final Lcom/facebook/crypto/d/a;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/facebook/crypto/d/a;->buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/facebook/crypto/d/a;->count:I

    if-ne v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/facebook/crypto/d/a;->buf:[B

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Size supplied is too small"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
