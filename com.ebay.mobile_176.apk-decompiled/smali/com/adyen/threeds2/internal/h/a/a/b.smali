.class public abstract Lcom/adyen/threeds2/internal/h/a/a/b;
.super Lcom/adyen/threeds2/internal/h/a/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/h/a/a;-><init>()V

    return-void
.end method

.method private a(I)[B
    .locals 3

    const/16 v0, 0x8

    mul-int/lit8 p1, p1, 0x8

    .line 144
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/adyen/threeds2/internal/h/a/a/d;I[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/a/a/d;->a()Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 102
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 104
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/a/a/b;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    .line 105
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p3, p2, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 107
    invoke-virtual {p3, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method private a([B[B[B)[B
    .locals 2

    .line 126
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x292

    .line 129
    :try_start_0
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v1}, Lcom/adyen/threeds2/internal/l/a;->a(Ljava/nio/charset/Charset;)Lcom/adyen/threeds2/internal/l/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adyen/threeds2/internal/l/a;->a([B)[B

    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 131
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 132
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 133
    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/h/a/a/b;->a(I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 135
    sget-object p2, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method

.method private b(Lcom/adyen/threeds2/internal/h/a/a/d;[B[B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 116
    invoke-direct {p0, p3, p2, p4}, Lcom/adyen/threeds2/internal/h/a/a/b;->a([B[B[B)[B

    move-result-object p2

    .line 117
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/a/a/b;->f()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p3

    .line 118
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/a/a/d;->b()Ljava/security/Key;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 119
    invoke-virtual {p3, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 120
    invoke-virtual {p3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/a/a/b;->g()I

    move-result p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/adyen/threeds2/internal/h/a/a/d;[B[B[B)Lcom/adyen/threeds2/internal/h/a/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/adyen/threeds2/internal/h/a/a/b;->a(Lcom/adyen/threeds2/internal/h/a/a/d;I[B[B)[B

    move-result-object p3

    .line 73
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/adyen/threeds2/internal/h/a/a/b;->b(Lcom/adyen/threeds2/internal/h/a/a/d;[B[B[B)[B

    move-result-object p1

    .line 76
    new-instance p4, Lcom/adyen/threeds2/internal/h/a/a/e;

    invoke-direct {p4, p2, p3, p1}, Lcom/adyen/threeds2/internal/h/a/a/e;-><init>([B[B[B)V

    return-object p4
.end method

.method public final a(Lcom/adyen/threeds2/internal/h/a/a/d;[B[B[B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/adyen/threeds2/internal/h/a/a/b;->b(Lcom/adyen/threeds2/internal/h/a/a/d;[B[B[B)[B

    move-result-object p4

    .line 88
    invoke-static {p5, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    .line 92
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/adyen/threeds2/internal/h/a/a/b;->a(Lcom/adyen/threeds2/internal/h/a/a/d;I[B[B)[B

    move-result-object p1

    return-object p1

    .line 89
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const/16 p2, 0x291

    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()I
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public final h()[B
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/a/a/b;->e()I

    move-result v0

    new-array v0, v0, [B

    .line 61
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method
