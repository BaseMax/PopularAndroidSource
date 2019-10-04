.class final Lcom/adyen/threeds2/internal/h/a/b/h;
.super Lcom/adyen/threeds2/internal/h/a/b/e;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x29d

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/b/h;->a:Ljava/lang/String;

    const/16 v0, 0x29e

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/b/h;->b:Ljava/lang/String;

    .line 52
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const/16 v1, 0x29f

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a0

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/b/h;->c:Ljavax/crypto/spec/OAEPParameterSpec;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/h/a/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adyen/threeds2/internal/h/a/a/b;)Lcom/adyen/threeds2/internal/h/a/a/d;
    .locals 2

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/a/a/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 74
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/adyen/threeds2/internal/h/a/a/d;

    invoke-direct {v1, v0, p1}, Lcom/adyen/threeds2/internal/h/a/a/d;-><init>(Ljavax/crypto/SecretKey;Lcom/adyen/threeds2/internal/h/a/a/b;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 78
    sget-object v0, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/c/b;)Lcom/adyen/threeds2/internal/h/a/a/d;
    .locals 1

    .line 62
    const-class v0, Lcom/adyen/threeds2/internal/h/c/d;

    invoke-static {p2, v0}, Lcom/adyen/threeds2/internal/h/c/b;->a(Lcom/adyen/threeds2/internal/h/c/b;Ljava/lang/Class;)V

    .line 64
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/f;->b()Lcom/adyen/threeds2/internal/h/a/a/b;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/h/a/b/h;->a(Lcom/adyen/threeds2/internal/h/a/a/b;)Lcom/adyen/threeds2/internal/h/a/a/d;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x29b

    .line 57
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/adyen/threeds2/internal/h/a/a/d;Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/SDKRuntimeException;
        }
    .end annotation

    const/16 v0, 0x29c

    .line 85
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x3

    .line 86
    sget-object v2, Lcom/adyen/threeds2/internal/h/a/b/h;->c:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v0, v1, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 88
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 95
    sget-object p2, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method
