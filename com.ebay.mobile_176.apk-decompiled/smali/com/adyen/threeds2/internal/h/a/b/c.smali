.class final Lcom/adyen/threeds2/internal/h/a/b/c;
.super Lcom/adyen/threeds2/internal/h/a/b/d;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x299

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/h/a/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adyen/threeds2/internal/h/a/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/adyen/threeds2/internal/h/a/a/d;
    .locals 1

    .line 73
    invoke-static {p4, p5}, Lcom/adyen/threeds2/internal/h/e/e;->a(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)[B

    move-result-object p4

    .line 74
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/a/a/b;->c()I

    move-result p5

    .line 75
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p4, p5, v0, p2, p3}, Lcom/adyen/threeds2/internal/h/e/c;->a([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    .line 78
    new-instance p3, Lcom/adyen/threeds2/internal/h/a/a/d;

    invoke-direct {p3, p2, p1}, Lcom/adyen/threeds2/internal/h/a/a/d;-><init>([BLcom/adyen/threeds2/internal/h/a/a/b;)V

    return-object p3
.end method

.method public a(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/c/b;)Lcom/adyen/threeds2/internal/h/a/a/d;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 50
    const-class v0, Lcom/adyen/threeds2/internal/h/c/a;

    invoke-static {p2, v0}, Lcom/adyen/threeds2/internal/h/c/b;->a(Lcom/adyen/threeds2/internal/h/c/b;Ljava/lang/Class;)V

    .line 52
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/f;->b()Lcom/adyen/threeds2/internal/h/a/a/b;

    move-result-object v2

    .line 54
    check-cast p2, Lcom/adyen/threeds2/internal/h/c/a;

    .line 55
    new-instance v0, Lcom/adyen/threeds2/internal/h/c/a;

    sget-object v1, Lcom/adyen/threeds2/internal/h/e/d;->P256:Lcom/adyen/threeds2/internal/h/e/d;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lcom/adyen/threeds2/internal/h/c/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/e/d;)V

    .line 56
    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/h/c/a;->b()Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    .line 57
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/c/a;->c()Ljava/security/interfaces/ECPrivateKey;

    move-result-object v6

    .line 58
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/f;->e()Lorg/json/JSONObject;

    move-result-object p1

    const/16 p2, 0x297

    .line 59
    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x298

    .line 60
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    .line 62
    invoke-virtual/range {v1 .. v6}, Lcom/adyen/threeds2/internal/h/a/b/c;->a(Lcom/adyen/threeds2/internal/h/a/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/adyen/threeds2/internal/h/a/a/d;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x296

    .line 45
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
