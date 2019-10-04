.class public final Lcom/adyen/threeds2/internal/h/c/a;
.super Lcom/adyen/threeds2/internal/h/c/c;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/adyen/threeds2/internal/h/e/d;

.field private final c:Ljava/security/interfaces/ECPublicKey;

.field private final d:Ljava/security/interfaces/ECPrivateKey;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2be

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/e/d;)V
    .locals 1

    const/16 v0, 0x2b1

    .line 55
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/adyen/threeds2/internal/h/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/adyen/threeds2/internal/h/c/a;->b:Lcom/adyen/threeds2/internal/h/e/d;

    .line 58
    iget-object p1, p0, Lcom/adyen/threeds2/internal/h/c/a;->b:Lcom/adyen/threeds2/internal/h/e/d;

    invoke-static {p1}, Lcom/adyen/threeds2/internal/h/e/e;->a(Lcom/adyen/threeds2/internal/h/e/d;)Ljava/security/KeyPair;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    iput-object p2, p0, Lcom/adyen/threeds2/internal/h/c/a;->c:Ljava/security/interfaces/ECPublicKey;

    .line 60
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/c/a;->d:Ljava/security/interfaces/ECPrivateKey;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/h/c/c;-><init>(Lorg/json/JSONObject;)V

    .line 66
    invoke-static {}, Lcom/adyen/threeds2/internal/l/a;->a()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v0

    const/16 v1, 0x2b2

    .line 67
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/l/a;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/adyen/threeds2/internal/h/e/b;->a([B)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x2b3

    .line 68
    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adyen/threeds2/internal/l/a;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/adyen/threeds2/internal/h/e/b;->a([B)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x2b4

    .line 69
    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x2b5

    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adyen/threeds2/internal/l/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/h/e/b;->a([B)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    const/16 v3, 0x2b6

    .line 71
    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adyen/threeds2/internal/h/e/d;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/e/d;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/c/a;->b:Lcom/adyen/threeds2/internal/h/e/d;

    .line 72
    iget-object p1, p0, Lcom/adyen/threeds2/internal/h/c/a;->b:Lcom/adyen/threeds2/internal/h/e/d;

    invoke-static {p1, v1, v2}, Lcom/adyen/threeds2/internal/h/e/e;->a(Lcom/adyen/threeds2/internal/h/e/d;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/c/a;->c:Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    .line 73
    iget-object p1, p0, Lcom/adyen/threeds2/internal/h/c/a;->b:Lcom/adyen/threeds2/internal/h/e/d;

    invoke-static {p1, v0}, Lcom/adyen/threeds2/internal/h/e/e;->a(Lcom/adyen/threeds2/internal/h/e/d;Ljava/math/BigInteger;)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v4

    :cond_1
    iput-object v4, p0, Lcom/adyen/threeds2/internal/h/c/a;->d:Ljava/security/interfaces/ECPrivateKey;

    return-void
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/h/b/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/adyen/threeds2/internal/h/c/a;

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/c/a;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/h/e/d;->P256:Lcom/adyen/threeds2/internal/h/e/d;

    invoke-direct {v0, v1, v2}, Lcom/adyen/threeds2/internal/h/c/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/e/d;)V

    .line 111
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/c/a;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2bc

    .line 114
    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/16 v2, 0x2bd

    .line 116
    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/c/a;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    new-instance v2, Lcom/adyen/threeds2/internal/h/b/f;

    sget-object v3, Lcom/adyen/threeds2/internal/h/a/b/g;->a:Lcom/adyen/threeds2/internal/h/a/b/b;

    sget-object v4, Lcom/adyen/threeds2/internal/h/a/a/c;->a:Lcom/adyen/threeds2/internal/h/a/a/b;

    invoke-direct {v2, v3, v4, v1}, Lcom/adyen/threeds2/internal/h/b/f;-><init>(Lcom/adyen/threeds2/internal/h/a/b/f;Lcom/adyen/threeds2/internal/h/a/a/b;Lorg/json/JSONObject;)V

    .line 120
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/c/a;->b()Ljava/security/interfaces/ECPublicKey;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v3}, Lcom/adyen/threeds2/internal/h/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v0

    .line 121
    new-instance v1, Lcom/adyen/threeds2/internal/h/c/e;

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/adyen/threeds2/internal/h/c/e;-><init>(Ljava/lang/String;[B)V

    .line 123
    new-instance v0, Lcom/adyen/threeds2/internal/h/b/a;

    invoke-direct {v0, v2, v1}, Lcom/adyen/threeds2/internal/h/b/a;-><init>(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/c/b;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;)[B
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/c/a;->d:Ljava/security/interfaces/ECPrivateKey;

    invoke-static {p4, v0}, Lcom/adyen/threeds2/internal/h/e/e;->a(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)[B

    move-result-object p4

    .line 128
    array-length v0, p4

    mul-int/lit8 v0, v0, 0x8

    .line 130
    invoke-static {p4, v0, p1, p2, p3}, Lcom/adyen/threeds2/internal/h/e/c;->a([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/security/interfaces/ECPublicKey;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/c/a;->c:Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method

.method public c()Ljava/security/interfaces/ECPrivateKey;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/c/a;->d:Ljava/security/interfaces/ECPrivateKey;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/c/a;->c:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/adyen/threeds2/internal/l/a;->a()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/adyen/threeds2/internal/h/e/b;->a(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adyen/threeds2/internal/l/a;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/h/e/b;->a(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adyen/threeds2/internal/l/a;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v3, 0x2b7

    .line 96
    :try_start_0
    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2b8

    invoke-static {v4}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v3, 0x2b9

    .line 97
    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adyen/threeds2/internal/h/c/a;->b:Lcom/adyen/threeds2/internal/h/e/d;

    invoke-virtual {v4}, Lcom/adyen/threeds2/internal/h/e/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v3, 0x2ba

    .line 98
    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0x2bb

    .line 99
    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v1, v0}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object v0

    throw v0
.end method

.method public synthetic e()Ljava/security/PrivateKey;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/c/a;->c()Ljava/security/interfaces/ECPrivateKey;

    move-result-object v0

    return-object v0
.end method
