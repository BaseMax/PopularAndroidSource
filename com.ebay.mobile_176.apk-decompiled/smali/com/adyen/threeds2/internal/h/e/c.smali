.class public final Lcom/adyen/threeds2/internal/h/e/c;
.super Ljava/lang/Object;


# direct methods
.method private static a(I)[B
    .locals 1

    const/4 v0, 0x4

    .line 91
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x2de

    .line 85
    invoke-static {p0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 87
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Lcom/adyen/threeds2/internal/h/e/c;->a(I)[B

    move-result-object v0

    .line 49
    invoke-static {p2}, Lcom/adyen/threeds2/internal/h/e/c;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 50
    invoke-static {p3}, Lcom/adyen/threeds2/internal/h/e/c;->a(Ljava/lang/String;)[B

    move-result-object p3

    .line 51
    invoke-static {p4}, Lcom/adyen/threeds2/internal/h/e/c;->a(Ljava/lang/String;)[B

    move-result-object p4

    .line 52
    invoke-static {p1}, Lcom/adyen/threeds2/internal/h/e/c;->a(I)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 53
    new-array v2, v2, [B

    .line 55
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 59
    invoke-virtual {v3, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 60
    invoke-virtual {v3, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 61
    invoke-virtual {v3, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 62
    invoke-virtual {v3, p4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 63
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 64
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p0, 0x2dd

    .line 72
    :try_start_1
    invoke-static {p0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 78
    invoke-virtual {p0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 79
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 81
    div-int/lit8 p1, p1, 0x8

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 74
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1, p0}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 66
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1, p0}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0
.end method
