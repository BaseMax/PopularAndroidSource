.class Lcom/apptentive/android/sdk/encryption/AesCBCEncryption;
.super Ljava/lang/Object;
.source "AesCBCEncryption.java"

# interfaces
.implements Lcom/apptentive/android/sdk/Encryption;


# instance fields
.field private final key:Ljava/security/Key;

.field private final secureRandom:Ljava/security/SecureRandom;

.field private final transformation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/Key;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/encryption/AesCBCEncryption;->secureRandom:Ljava/security/SecureRandom;

    if-eqz p1, :cond_1

    .line 36
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iput-object p1, p0, Lcom/apptentive/android/sdk/encryption/AesCBCEncryption;->key:Ljava/security/Key;

    .line 41
    iput-object p2, p0, Lcom/apptentive/android/sdk/encryption/AesCBCEncryption;->transformation:Ljava/lang/String;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transformation is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 5
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/ObjectUtils;->isNullOrEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 89
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p1, 0x10

    .line 91
    new-array v1, p1, [B

    .line 92
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/apptentive/android/sdk/encryption/AesCBCEncryption;->transformation:Ljava/lang/String;

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v2, 0x2

    .line 97
    iget-object v3, p0, Lcom/apptentive/android/sdk/encryption/AesCBCEncryption;->key:Ljava/security/Key;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 99
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 103
    :try_start_1
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v0, p1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x200

    .line 106
    :try_start_2
    new-array p1, p1, [B

    .line 107
    :goto_0
    invoke-virtual {v3, p1}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 112
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V

    .line 116
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 112
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V

    :cond_2
    throw p1

    .line 93
    :cond_3
    new-instance p1, Lcom/apptentive/android/sdk/encryption/EncryptionException;

    const-string v0, "Unable to read initialization vector"

    invoke-direct {p1, v0}, Lcom/apptentive/android/sdk/encryption/EncryptionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 118
    new-instance v0, Lcom/apptentive/android/sdk/encryption/EncryptionException;

    invoke-direct {v0, p1}, Lcom/apptentive/android/sdk/encryption/EncryptionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encrypt([B)[B
    .locals 5
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/ObjectUtils;->isNullOrEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/encryption/AesCBCEncryption;->transformation:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/16 v1, 0x10

    .line 53
    new-array v1, v1, [B

    .line 54
    iget-object v2, p0, Lcom/apptentive/android/sdk/encryption/AesCBCEncryption;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x1

    .line 55
    iget-object v3, p0, Lcom/apptentive/android/sdk/encryption/AesCBCEncryption;->key:Ljava/security/Key;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 57
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 62
    :try_start_1
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v2, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    .line 65
    :goto_0
    :try_start_2
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/16 v1, 0x200

    .line 66
    array-length v4, p1

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 67
    invoke-virtual {v3, p1, v0, v1}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 72
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 76
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V

    :cond_2
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 78
    new-instance v0, Lcom/apptentive/android/sdk/encryption/EncryptionException;

    invoke-direct {v0, p1}, Lcom/apptentive/android/sdk/encryption/EncryptionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
