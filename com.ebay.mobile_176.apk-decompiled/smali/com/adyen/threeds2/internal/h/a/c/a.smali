.class final Lcom/adyen/threeds2/internal/h/a/c/a;
.super Lcom/adyen/threeds2/internal/h/a/c/c;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2a4

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/h/a/c/c;-><init>()V

    return-void
.end method

.method private a([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 73
    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 75
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 76
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 77
    array-length v2, p1

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 79
    new-instance v0, Lorg/a/a/g;

    invoke-direct {v0}, Lorg/a/a/g;-><init>()V

    .line 80
    new-instance v2, Lorg/a/a/l;

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v2, v3}, Lorg/a/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Lorg/a/a/g;->a(Lorg/a/a/f;)V

    .line 81
    new-instance v1, Lorg/a/a/l;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2}, Lorg/a/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/a/a/g;->a(Lorg/a/a/f;)V

    .line 83
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    new-instance v1, Lorg/a/a/bc;

    invoke-direct {v1, p1}, Lorg/a/a/bc;-><init>(Ljava/io/OutputStream;)V

    .line 87
    :try_start_0
    new-instance v2, Lorg/a/a/be;

    invoke-direct {v2, v0}, Lorg/a/a/be;-><init>(Lorg/a/a/g;)V

    .line 88
    invoke-virtual {v1, v2}, Lorg/a/a/bc;->a(Lorg/a/a/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Ljava/security/SignatureException;

    const/16 v1, 0x2a3

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-object p1
.end method

.method private b()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x2a2

    .line 69
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2a1

    .line 47
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a([B[BLjava/security/PublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/h/a/c/a;->b()Ljava/security/Signature;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 63
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 65
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/h/a/c/a;->a([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method
