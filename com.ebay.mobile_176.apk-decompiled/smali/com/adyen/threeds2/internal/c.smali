.class final Lcom/adyen/threeds2/internal/c;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/adyen/threeds2/internal/h/b/b;Lorg/json/JSONObject;)Lcom/adyen/threeds2/internal/h/b/h;
    .locals 1

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/adyen/threeds2/internal/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 50
    invoke-interface {p0}, Lcom/adyen/threeds2/internal/h/b/b;->a()Lcom/adyen/threeds2/internal/h/b/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/h/b/a;->a([B)Lcom/adyen/threeds2/internal/h/b/h;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 52
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1, p0}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0
.end method
