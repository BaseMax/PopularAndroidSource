.class public final Lcom/facebook/crypto/d/e;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcom/facebook/crypto/mac/NativeMac;

.field private final b:Ljava/io/OutputStream;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/mac/NativeMac;Ljava/io/OutputStream;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/facebook/crypto/d/e;->c:Z

    .line 32
    iput-object p1, p0, Lcom/facebook/crypto/d/e;->a:Lcom/facebook/crypto/mac/NativeMac;

    .line 33
    iput-object p2, p0, Lcom/facebook/crypto/d/e;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1046
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/crypto/d/e;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1049
    iput-boolean v0, p0, Lcom/facebook/crypto/d/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1051
    :try_start_1
    iget-object v0, p0, Lcom/facebook/crypto/d/e;->a:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0}, Lcom/facebook/crypto/mac/NativeMac;->doFinal()[B

    move-result-object v0

    .line 1052
    iget-object v1, p0, Lcom/facebook/crypto/d/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    :try_start_2
    iget-object v0, p0, Lcom/facebook/crypto/d/e;->a:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0}, Lcom/facebook/crypto/mac/NativeMac;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/d/e;->a:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v1}, Lcom/facebook/crypto/mac/NativeMac;->destroy()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/crypto/d/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/d/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/facebook/crypto/d/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/facebook/crypto/d/e;->a:Lcom/facebook/crypto/mac/NativeMac;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/facebook/crypto/mac/NativeMac;->update(B)V

    .line 77
    iget-object v0, p0, Lcom/facebook/crypto/d/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/crypto/d/e;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/facebook/crypto/d/e;->a:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/crypto/mac/NativeMac;->update([BII)V

    .line 71
    iget-object v0, p0, Lcom/facebook/crypto/d/e;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
