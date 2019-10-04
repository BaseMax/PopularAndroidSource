.class public final Lcom/facebook/crypto/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/facebook/crypto/b/a;

.field private final b:Lcom/facebook/crypto/e/b;

.field private final c:Lcom/facebook/crypto/d;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/b/a;Lcom/facebook/crypto/e/b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    sget-object v0, Lcom/facebook/crypto/CryptoConfig;->KEY_128:Lcom/facebook/crypto/CryptoConfig;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/crypto/c;-><init>(Lcom/facebook/crypto/b/a;Lcom/facebook/crypto/e/b;Lcom/facebook/crypto/CryptoConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/crypto/b/a;Lcom/facebook/crypto/e/b;Lcom/facebook/crypto/CryptoConfig;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/facebook/crypto/a;

    invoke-direct {v0, p1, p3}, Lcom/facebook/crypto/a;-><init>(Lcom/facebook/crypto/b/a;Lcom/facebook/crypto/CryptoConfig;)V

    iput-object v0, p0, Lcom/facebook/crypto/c;->a:Lcom/facebook/crypto/b/a;

    .line 44
    iput-object p2, p0, Lcom/facebook/crypto/c;->b:Lcom/facebook/crypto/e/b;

    .line 45
    new-instance p1, Lcom/facebook/crypto/e;

    iget-object p2, p0, Lcom/facebook/crypto/c;->b:Lcom/facebook/crypto/e/b;

    iget-object v0, p0, Lcom/facebook/crypto/c;->a:Lcom/facebook/crypto/b/a;

    invoke-direct {p1, p2, v0, p3}, Lcom/facebook/crypto/e;-><init>(Lcom/facebook/crypto/e/b;Lcom/facebook/crypto/b/a;Lcom/facebook/crypto/CryptoConfig;)V

    iput-object p1, p0, Lcom/facebook/crypto/c;->c:Lcom/facebook/crypto/d;

    return-void
.end method

.method private a()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/facebook/crypto/c;->c:Lcom/facebook/crypto/d;

    invoke-interface {v0}, Lcom/facebook/crypto/d;->getCipherMetaDataLength()I

    move-result v0

    return v0
.end method

.method private static a(Lcom/facebook/crypto/mac/NativeMac;B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    new-array p1, v0, [B

    aput-byte v0, p1, v2

    .line 216
    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/crypto/mac/NativeMac;->update([BII)V

    .line 217
    invoke-virtual {p0, p1, v2, v0}, Lcom/facebook/crypto/mac/NativeMac;->update([BII)V

    .line 218
    array-length p1, p2

    invoke-virtual {p0, p2, v2, p1}, Lcom/facebook/crypto/mac/NativeMac;->update([BII)V

    return-void
.end method


# virtual methods
.method public final decrypt([BLcom/facebook/crypto/f;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/b;,
            Lcom/facebook/crypto/a/a;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    array-length v0, p1

    .line 139
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 140
    invoke-virtual {p0, v1, p2}, Lcom/facebook/crypto/c;->getCipherInputStream(Ljava/io/InputStream;Lcom/facebook/crypto/f;)Ljava/io/InputStream;

    move-result-object p1

    .line 142
    invoke-direct {p0}, Lcom/facebook/crypto/c;->a()I

    move-result p2

    sub-int/2addr v0, p2

    .line 143
    new-instance p2, Lcom/facebook/crypto/d/a;

    invoke-direct {p2, v0}, Lcom/facebook/crypto/d/a;-><init>(I)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 146
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 147
    invoke-virtual {p2, v0, v2, v1}, Lcom/facebook/crypto/d/a;->write([BII)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 150
    invoke-virtual {p2}, Lcom/facebook/crypto/d/a;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public final encrypt([BLcom/facebook/crypto/f;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/b;,
            Lcom/facebook/crypto/a/a;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    array-length v0, p1

    invoke-direct {p0}, Lcom/facebook/crypto/c;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    new-instance v1, Lcom/facebook/crypto/d/a;

    invoke-direct {v1, v0}, Lcom/facebook/crypto/d/a;-><init>(I)V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v1, p2, v0}, Lcom/facebook/crypto/c;->getCipherOutputStream(Ljava/io/OutputStream;Lcom/facebook/crypto/f;[B)Ljava/io/OutputStream;

    move-result-object p2

    .line 120
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 121
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 122
    invoke-virtual {v1}, Lcom/facebook/crypto/d/a;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public final getCipherInputStream(Ljava/io/InputStream;Lcom/facebook/crypto/f;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/a/a;,
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/facebook/crypto/c;->c:Lcom/facebook/crypto/d;

    invoke-interface {v0, p1, p2}, Lcom/facebook/crypto/d;->wrap(Ljava/io/InputStream;Lcom/facebook/crypto/f;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final getCipherOutputStream(Ljava/io/OutputStream;Lcom/facebook/crypto/f;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/a/a;,
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/crypto/c;->getCipherOutputStream(Ljava/io/OutputStream;Lcom/facebook/crypto/f;[B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public final getCipherOutputStream(Ljava/io/OutputStream;Lcom/facebook/crypto/f;[B)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/a/a;,
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/facebook/crypto/c;->c:Lcom/facebook/crypto/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/crypto/d;->wrap(Ljava/io/OutputStream;Lcom/facebook/crypto/f;[B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public final getMacInputStream(Ljava/io/InputStream;Lcom/facebook/crypto/f;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/a/b;,
            Lcom/facebook/crypto/a/a;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 194
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unexpected mac version "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/crypto/e/a;->checkArgumentForIO(ZLjava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    .line 198
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected mac ID "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/crypto/e/a;->checkArgumentForIO(ZLjava/lang/String;)V

    .line 201
    new-instance v1, Lcom/facebook/crypto/mac/NativeMac;

    iget-object v2, p0, Lcom/facebook/crypto/c;->b:Lcom/facebook/crypto/e/b;

    invoke-direct {v1, v2}, Lcom/facebook/crypto/mac/NativeMac;-><init>(Lcom/facebook/crypto/e/b;)V

    .line 202
    iget-object v2, p0, Lcom/facebook/crypto/c;->a:Lcom/facebook/crypto/b/a;

    invoke-interface {v2}, Lcom/facebook/crypto/b/a;->getMacKey()[B

    move-result-object v2

    .line 203
    array-length v3, v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/crypto/mac/NativeMac;->init([BI)V

    .line 205
    invoke-virtual {p2}, Lcom/facebook/crypto/f;->getBytes()[B

    move-result-object p2

    .line 206
    invoke-static {v1, v0, p2}, Lcom/facebook/crypto/c;->a(Lcom/facebook/crypto/mac/NativeMac;B[B)V

    .line 207
    new-instance p2, Lcom/facebook/crypto/d/d;

    invoke-direct {p2, v1, p1}, Lcom/facebook/crypto/d/d;-><init>(Lcom/facebook/crypto/mac/NativeMac;Ljava/io/InputStream;)V

    return-object p2
.end method

.method public final getMacOutputStream(Ljava/io/OutputStream;Lcom/facebook/crypto/f;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/a/b;,
            Lcom/facebook/crypto/a/a;
        }
    .end annotation

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 168
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 170
    new-instance v1, Lcom/facebook/crypto/mac/NativeMac;

    iget-object v2, p0, Lcom/facebook/crypto/c;->b:Lcom/facebook/crypto/e/b;

    invoke-direct {v1, v2}, Lcom/facebook/crypto/mac/NativeMac;-><init>(Lcom/facebook/crypto/e/b;)V

    .line 171
    iget-object v2, p0, Lcom/facebook/crypto/c;->a:Lcom/facebook/crypto/b/a;

    invoke-interface {v2}, Lcom/facebook/crypto/b/a;->getMacKey()[B

    move-result-object v2

    .line 172
    array-length v3, v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/crypto/mac/NativeMac;->init([BI)V

    .line 173
    invoke-virtual {p2}, Lcom/facebook/crypto/f;->getBytes()[B

    move-result-object p2

    .line 174
    invoke-static {v1, v0, p2}, Lcom/facebook/crypto/c;->a(Lcom/facebook/crypto/mac/NativeMac;B[B)V

    .line 175
    new-instance p2, Lcom/facebook/crypto/d/e;

    invoke-direct {p2, v1, p1}, Lcom/facebook/crypto/d/e;-><init>(Lcom/facebook/crypto/mac/NativeMac;Ljava/io/OutputStream;)V

    return-object p2
.end method

.method public final isAvailable()Z
    .locals 1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crypto/c;->b:Lcom/facebook/crypto/e/b;

    invoke-interface {v0}, Lcom/facebook/crypto/e/b;->ensureCryptoLoaded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method
