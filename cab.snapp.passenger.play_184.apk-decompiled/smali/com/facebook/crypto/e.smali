.class public final Lcom/facebook/crypto/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/crypto/d;


# instance fields
.field private final a:Lcom/facebook/crypto/e/b;

.field private final b:Lcom/facebook/crypto/b/a;

.field private final c:Lcom/facebook/crypto/CryptoConfig;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/e/b;Lcom/facebook/crypto/b/a;Lcom/facebook/crypto/CryptoConfig;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/crypto/e;->a:Lcom/facebook/crypto/e/b;

    .line 31
    iput-object p2, p0, Lcom/facebook/crypto/e;->b:Lcom/facebook/crypto/b/a;

    .line 32
    iput-object p3, p0, Lcom/facebook/crypto/e;->c:Lcom/facebook/crypto/CryptoConfig;

    return-void
.end method

.method private static a(Lcom/facebook/crypto/cipher/NativeGCMCipher;BB[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/a;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    new-array p1, v0, [B

    aput-byte p2, p1, v2

    .line 82
    invoke-virtual {p0, v1, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->updateAad([BI)V

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->updateAad([BI)V

    .line 84
    array-length p1, p3

    invoke-virtual {p0, p3, p1}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->updateAad([BI)V

    return-void
.end method


# virtual methods
.method public final getCipherMetaDataLength()I
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/facebook/crypto/e;->c:Lcom/facebook/crypto/CryptoConfig;

    iget v0, v0, Lcom/facebook/crypto/CryptoConfig;->ivLength:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/facebook/crypto/e;->c:Lcom/facebook/crypto/CryptoConfig;

    iget v1, v1, Lcom/facebook/crypto/CryptoConfig;->tagLength:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final wrap(Ljava/io/InputStream;Lcom/facebook/crypto/f;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/a/a;,
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 55
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 57
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Unexpected crypto version "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/crypto/e/a;->checkArgumentForIO(ZLjava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/facebook/crypto/e;->c:Lcom/facebook/crypto/CryptoConfig;

    iget-byte v4, v4, Lcom/facebook/crypto/CryptoConfig;->cipherId:B

    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unexpected cipher ID "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/crypto/e/a;->checkArgumentForIO(ZLjava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/facebook/crypto/e;->c:Lcom/facebook/crypto/CryptoConfig;

    iget v2, v2, Lcom/facebook/crypto/CryptoConfig;->ivLength:I

    new-array v2, v2, [B

    .line 65
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 67
    new-instance v3, Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v4, p0, Lcom/facebook/crypto/e;->a:Lcom/facebook/crypto/e/b;

    invoke-direct {v3, v4}, Lcom/facebook/crypto/cipher/NativeGCMCipher;-><init>(Lcom/facebook/crypto/e/b;)V

    .line 68
    iget-object v4, p0, Lcom/facebook/crypto/e;->b:Lcom/facebook/crypto/b/a;

    invoke-interface {v4}, Lcom/facebook/crypto/b/a;->getCipherKey()[B

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->decryptInit([B[B)V

    .line 70
    invoke-virtual {p2}, Lcom/facebook/crypto/f;->getBytes()[B

    move-result-object p2

    .line 71
    invoke-static {v3, v0, v1, p2}, Lcom/facebook/crypto/e;->a(Lcom/facebook/crypto/cipher/NativeGCMCipher;BB[B)V

    .line 72
    new-instance p2, Lcom/facebook/crypto/d/b;

    iget-object v0, p0, Lcom/facebook/crypto/e;->c:Lcom/facebook/crypto/CryptoConfig;

    iget v0, v0, Lcom/facebook/crypto/CryptoConfig;->tagLength:I

    invoke-direct {p2, p1, v3, v0}, Lcom/facebook/crypto/d/b;-><init>(Ljava/io/InputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;I)V

    return-object p2
.end method

.method public final wrap(Ljava/io/OutputStream;Lcom/facebook/crypto/f;[B)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/a/a;,
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 39
    iget-object v1, p0, Lcom/facebook/crypto/e;->c:Lcom/facebook/crypto/CryptoConfig;

    iget-byte v1, v1, Lcom/facebook/crypto/CryptoConfig;->cipherId:B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 41
    iget-object v1, p0, Lcom/facebook/crypto/e;->b:Lcom/facebook/crypto/b/a;

    invoke-interface {v1}, Lcom/facebook/crypto/b/a;->getNewIV()[B

    move-result-object v1

    .line 42
    new-instance v2, Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v3, p0, Lcom/facebook/crypto/e;->a:Lcom/facebook/crypto/e/b;

    invoke-direct {v2, v3}, Lcom/facebook/crypto/cipher/NativeGCMCipher;-><init>(Lcom/facebook/crypto/e/b;)V

    .line 43
    iget-object v3, p0, Lcom/facebook/crypto/e;->b:Lcom/facebook/crypto/b/a;

    invoke-interface {v3}, Lcom/facebook/crypto/b/a;->getCipherKey()[B

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->encryptInit([B[B)V

    .line 44
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 46
    invoke-virtual {p2}, Lcom/facebook/crypto/f;->getBytes()[B

    move-result-object p2

    .line 47
    iget-object v1, p0, Lcom/facebook/crypto/e;->c:Lcom/facebook/crypto/CryptoConfig;

    iget-byte v1, v1, Lcom/facebook/crypto/CryptoConfig;->cipherId:B

    invoke-static {v2, v0, v1, p2}, Lcom/facebook/crypto/e;->a(Lcom/facebook/crypto/cipher/NativeGCMCipher;BB[B)V

    .line 48
    new-instance p2, Lcom/facebook/crypto/d/c;

    iget-object v0, p0, Lcom/facebook/crypto/e;->c:Lcom/facebook/crypto/CryptoConfig;

    iget v0, v0, Lcom/facebook/crypto/CryptoConfig;->tagLength:I

    invoke-direct {p2, p1, v2, p3, v0}, Lcom/facebook/crypto/d/c;-><init>(Ljava/io/OutputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;[BI)V

    return-object p2
.end method
