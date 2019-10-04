.class public final Lcom/adyen/threeds2/internal/h/c/d;
.super Lcom/adyen/threeds2/internal/h/c/c;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/security/interfaces/RSAPublicKey;

.field private final c:Ljava/security/interfaces/RSAPrivateKey;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2cf

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/c/d;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/h/c/c;-><init>(Lorg/json/JSONObject;)V

    .line 60
    invoke-static {}, Lcom/adyen/threeds2/internal/l/a;->a()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v0

    const/16 v1, 0x2c6

    .line 61
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/l/a;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/adyen/threeds2/internal/h/e/b;->a([B)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x2c7

    .line 62
    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adyen/threeds2/internal/l/a;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/adyen/threeds2/internal/h/e/b;->a([B)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x2c8

    .line 63
    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x2c9

    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/l/a;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/adyen/threeds2/internal/h/e/b;->a([B)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v4

    .line 65
    :goto_0
    invoke-static {v1, v2}, Lcom/adyen/threeds2/internal/h/e/h;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/h/c/d;->b:Ljava/security/interfaces/RSAPublicKey;

    if-eqz p1, :cond_1

    .line 66
    invoke-static {v1, p1}, Lcom/adyen/threeds2/internal/h/e/h;->b(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v4

    :cond_1
    iput-object v4, p0, Lcom/adyen/threeds2/internal/h/c/d;->c:Ljava/security/interfaces/RSAPrivateKey;

    return-void
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/h/b/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/c/d;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2ce

    .line 104
    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_0
    new-instance v1, Lcom/adyen/threeds2/internal/h/b/f;

    sget-object v2, Lcom/adyen/threeds2/internal/h/a/b/g;->c:Lcom/adyen/threeds2/internal/h/a/b/e;

    sget-object v3, Lcom/adyen/threeds2/internal/h/a/a/c;->a:Lcom/adyen/threeds2/internal/h/a/a/b;

    invoke-direct {v1, v2, v3, v0}, Lcom/adyen/threeds2/internal/h/b/f;-><init>(Lcom/adyen/threeds2/internal/h/a/b/f;Lcom/adyen/threeds2/internal/h/a/a/b;Lorg/json/JSONObject;)V

    .line 109
    new-instance v0, Lcom/adyen/threeds2/internal/h/b/a;

    invoke-direct {v0, v1, p0}, Lcom/adyen/threeds2/internal/h/b/a;-><init>(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/c/b;)V

    return-object v0
.end method

.method public b()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/c/d;->b:Ljava/security/interfaces/RSAPublicKey;

    return-object v0
.end method

.method public c()Ljava/security/interfaces/RSAPrivateKey;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/c/d;->c:Ljava/security/interfaces/RSAPrivateKey;

    return-object v0
.end method

.method public synthetic e()Ljava/security/PrivateKey;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/c/d;->c()Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v0

    return-object v0
.end method
