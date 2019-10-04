.class public final Lcom/adyen/threeds2/internal/h/d/a;
.super Lcom/adyen/threeds2/internal/h/e/f;


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/h/a/c/c;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/h/e/f;-><init>(Ljava/lang/String;)V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/d/a;->e()Lorg/json/JSONObject;

    move-result-object p1

    const/16 v0, 0x2d3

    .line 51
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/h/a/c/d;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/h/d/a;->a:Lcom/adyen/threeds2/internal/h/a/c/c;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adyen/threeds2/internal/h/d/a;->b:Ljava/util/List;

    const/16 v0, 0x2d4

    .line 54
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/adyen/threeds2/internal/h/e/i;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/adyen/threeds2/internal/h/d/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 62
    sget-object v0, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/h/a/c/c;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/d/a;->a:Lcom/adyen/threeds2/internal/h/a/c/c;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/h/d/a;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
