.class public final Lcom/adyen/threeds2/internal/h/b/f;
.super Lcom/adyen/threeds2/internal/h/e/f;


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/h/a/b/f;

.field private final b:Lcom/adyen/threeds2/internal/h/a/a/b;


# direct methods
.method public constructor <init>(Lcom/adyen/threeds2/internal/h/a/b/f;Lcom/adyen/threeds2/internal/h/a/a/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 78
    invoke-static {p1, p2, p3}, Lcom/adyen/threeds2/internal/h/b/f;->a(Lcom/adyen/threeds2/internal/h/a/b/f;Lcom/adyen/threeds2/internal/h/a/a/b;Lorg/json/JSONObject;)[B

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/adyen/threeds2/internal/h/e/f;-><init>([B)V

    .line 80
    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/b/f;->a:Lcom/adyen/threeds2/internal/h/a/b/f;

    .line 81
    iput-object p2, p0, Lcom/adyen/threeds2/internal/h/b/f;->b:Lcom/adyen/threeds2/internal/h/a/a/b;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/h/e/f;-><init>(Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/b/f;->e()Lorg/json/JSONObject;

    move-result-object p1

    const/16 v0, 0x2ac

    .line 89
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/h/a/b/g;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/h/b/f;->a:Lcom/adyen/threeds2/internal/h/a/b/f;

    const/16 v0, 0x2ad

    .line 90
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adyen/threeds2/internal/h/a/a/c;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/a/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/b/f;->b:Lcom/adyen/threeds2/internal/h/a/a/b;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 92
    sget-object v0, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method

.method private static a(Lcom/adyen/threeds2/internal/h/a/b/f;Lcom/adyen/threeds2/internal/h/a/a/b;Lorg/json/JSONObject;)[B
    .locals 2

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0x2aa

    .line 50
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/a/b/f;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 p0, 0x2ab

    .line 51
    invoke-static {p0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/a/a/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 56
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 58
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/adyen/threeds2/internal/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1, p0}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/h/a/b/f;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/b/f;->a:Lcom/adyen/threeds2/internal/h/a/b/f;

    return-object v0
.end method

.method public b()Lcom/adyen/threeds2/internal/h/a/a/b;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/b/f;->b:Lcom/adyen/threeds2/internal/h/a/a/b;

    return-object v0
.end method
