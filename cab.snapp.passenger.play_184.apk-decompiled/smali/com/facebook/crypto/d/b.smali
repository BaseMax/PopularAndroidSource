.class public final Lcom/facebook/crypto/d/b;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcom/facebook/crypto/d/f;

.field private final b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

.field private c:[B

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/facebook/crypto/d/b;->d:Z

    .line 40
    new-instance v0, Lcom/facebook/crypto/d/f;

    invoke-direct {v0, p1, p3}, Lcom/facebook/crypto/d/f;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/facebook/crypto/d/b;->a:Lcom/facebook/crypto/d/f;

    .line 41
    iput-object p2, p0, Lcom/facebook/crypto/d/b;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    return-void
.end method

.method private a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lcom/facebook/crypto/d/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/facebook/crypto/d/b;->d:Z

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crypto/d/b;->a:Lcom/facebook/crypto/d/f;

    invoke-virtual {v0}, Lcom/facebook/crypto/d/f;->getTail()[B

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/facebook/crypto/d/b;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->decryptFinal([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/facebook/crypto/d/b;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    invoke-virtual {v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->destroy()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/d/b;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    invoke-virtual {v1}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->destroy()V

    throw v0
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/facebook/crypto/d/b;->a:Lcom/facebook/crypto/d/f;

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

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/crypto/d/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/facebook/crypto/d/b;->a:Lcom/facebook/crypto/d/f;

    invoke-virtual {v0}, Lcom/facebook/crypto/d/f;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/d/b;->a:Lcom/facebook/crypto/d/f;

    invoke-virtual {v1}, Lcom/facebook/crypto/d/f;->close()V

    throw v0
.end method

.method public final mark(I)V
    .locals 0

    .line 60
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/crypto/d/b;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/facebook/crypto/d/b;->a:Lcom/facebook/crypto/d/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/crypto/d/f;->read([BII)I

    move-result v4

    const/4 p3, -0x1

    if-ne v4, p3, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/facebook/crypto/d/b;->a()V

    return p3

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/facebook/crypto/d/b;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    move-object v2, p1

    move v3, p2

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->update([BII[BI)I

    move-result p1

    return p1

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 117
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/facebook/crypto/d/b;->c:[B

    if-nez v0, :cond_0

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 123
    iput-object v0, p0, Lcom/facebook/crypto/d/b;->c:[B

    :cond_0
    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    const-wide/16 v4, 0x100

    .line 132
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 133
    iget-object v4, p0, Lcom/facebook/crypto/d/b;->c:[B

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v5}, Lcom/facebook/crypto/d/b;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr p1, v4

    goto :goto_0

    :cond_1
    cmp-long p1, v2, v0

    if-nez p1, :cond_2

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_2
    return-wide v2
.end method
