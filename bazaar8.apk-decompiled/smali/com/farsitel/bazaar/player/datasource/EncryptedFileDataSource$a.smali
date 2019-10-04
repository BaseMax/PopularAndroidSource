.class public Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;
.super Ljavax/crypto/CipherInputStream;
.source "EncryptedFileDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljavax/crypto/Cipher;

.field public c:Ljavax/crypto/spec/SecretKeySpec;

.field public d:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;Ljavax/crypto/spec/SecretKeySpec;Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 2
    iput-object p1, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->a:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->b:Ljavax/crypto/Cipher;

    .line 4
    iput-object p3, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 5
    iput-object p4, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->d:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public h(J)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x10

    .line 2
    :try_start_0
    rem-long v4, p1, v2

    long-to-int v5, v4

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 3
    div-long/2addr p1, v2

    .line 4
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->d:Ljavax/crypto/spec/IvParameterSpec;

    .line 5
    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 7
    array-length p2, p1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ge p2, v3, :cond_0

    .line 8
    new-array p2, v3, [B

    .line 9
    array-length v6, p1

    sub-int/2addr v3, v6

    array-length v6, p1

    invoke-static {p1, v2, p2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    array-length v6, p1

    sub-int/2addr v6, v3

    invoke-direct {p2, p1, v6, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    move-object p1, p2

    .line 12
    :goto_0
    iget-object p2, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->b:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2, v4, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 13
    new-array p1, v5, [B

    .line 14
    iget-object p2, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p2, p1, v2, v5, p1}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 15
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public read([BII)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p1

    return p1
.end method
