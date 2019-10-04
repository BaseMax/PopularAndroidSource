.class public final Lcom/facebook/crypto/d/d;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcom/facebook/crypto/mac/NativeMac;

.field private final b:Lcom/facebook/crypto/d/f;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/mac/NativeMac;Ljava/io/InputStream;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/facebook/crypto/d/d;->c:Z

    .line 34
    iput-object p1, p0, Lcom/facebook/crypto/d/d;->a:Lcom/facebook/crypto/mac/NativeMac;

    .line 35
    new-instance v0, Lcom/facebook/crypto/d/f;

    invoke-virtual {p1}, Lcom/facebook/crypto/mac/NativeMac;->getMacLength()I

    move-result p1

    invoke-direct {v0, p2, p1}, Lcom/facebook/crypto/d/f;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/facebook/crypto/d/d;->b:Lcom/facebook/crypto/d/f;

    return-void
.end method

.method private a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lcom/facebook/crypto/d/d;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/facebook/crypto/d/d;->c:Z

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crypto/d/d;->a:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0}, Lcom/facebook/crypto/mac/NativeMac;->doFinal()[B

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/facebook/crypto/d/d;->b:Lcom/facebook/crypto/d/f;

    invoke-virtual {v1}, Lcom/facebook/crypto/d/f;->getTail()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/crypto/d/d;->a([B[B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/facebook/crypto/d/d;->a:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0}, Lcom/facebook/crypto/mac/NativeMac;->destroy()V

    return-void

    .line 106
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mac does not match"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 109
    iget-object v1, p0, Lcom/facebook/crypto/d/d;->a:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v1}, Lcom/facebook/crypto/mac/NativeMac;->destroy()V

    throw v0
.end method

.method private static a([B[B)Z
    .locals 5

    .line 124
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 129
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/facebook/crypto/d/d;->b:Lcom/facebook/crypto/d/f;

    invoke-virtual {v0}, Lcom/facebook/crypto/d/f;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/crypto/d/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/facebook/crypto/d/d;->b:Lcom/facebook/crypto/d/f;

    invoke-virtual {v0}, Lcom/facebook/crypto/d/f;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/d/d;->b:Lcom/facebook/crypto/d/f;

    invoke-virtual {v1}, Lcom/facebook/crypto/d/f;->close()V

    throw v0
.end method

.method public final mark(I)V
    .locals 0

    .line 54
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/crypto/d/d;->read([BII)I

    move-result v3

    :goto_0
    if-nez v3, :cond_0

    .line 67
    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/crypto/d/d;->read([BII)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    return v0

    .line 73
    :cond_1
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/crypto/d/d;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/facebook/crypto/d/d;->b:Lcom/facebook/crypto/d/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/crypto/d/f;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/facebook/crypto/d/d;->a()V

    return v0

    :cond_0
    if-lez p3, :cond_1

    .line 91
    iget-object v0, p0, Lcom/facebook/crypto/d/d;->a:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/crypto/mac/NativeMac;->update([BII)V

    :cond_1
    return p3
.end method

.method public final declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
