.class public final Lcom/adyen/threeds2/internal/d/c;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/adyen/threeds2/parameters/ConfigParameters;)Lcom/adyen/threeds2/internal/h/c/b;
    .locals 2

    .line 60
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->CONFIG_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p0, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 62
    sget-object v0, Lcom/adyen/threeds2/util/AdyenConfigParameters;->DIRECTORY_SERVER_ID:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    invoke-static {p0, v0}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->getParamValue(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;)Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/adyen/threeds2/util/AdyenConfigParameters;->DIRECTORY_SERVER_PUBLIC_KEY:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    invoke-static {p0, v1}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->getParamValue(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;)Ljava/lang/String;

    move-result-object p0

    .line 66
    :try_start_0
    invoke-static {}, Lcom/adyen/threeds2/internal/l/a;->a()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adyen/threeds2/internal/l/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 67
    invoke-static {p0, v0}, Lcom/adyen/threeds2/internal/d/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/c/b;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 71
    :catch_0
    sget-object p0, Lcom/adyen/threeds2/internal/e/a;->CONFIG_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/e/a;->a()Lcom/adyen/threeds2/exception/InvalidInputException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 69
    sget-object v0, Lcom/adyen/threeds2/internal/e/c;->UNKNOWN_DIRECTORY_SERVER:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v0, p0}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/c/b;
    .locals 2

    .line 76
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->DIRECTORY_SERVER_ID:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p0, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/String;Lcom/adyen/threeds2/internal/e/a;)V

    .line 78
    invoke-static {p0}, Lcom/adyen/threeds2/internal/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {v1, p0}, Lcom/adyen/threeds2/internal/d/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/c/b;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 84
    sget-object v0, Lcom/adyen/threeds2/internal/e/c;->UNKNOWN_DIRECTORY_SERVER:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v0, p0}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/lang/String;Lcom/adyen/threeds2/parameters/ConfigParameters;)Lcom/adyen/threeds2/internal/h/c/b;
    .locals 1

    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/adyen/threeds2/internal/d/c;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/c/b;

    move-result-object p0

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/adyen/threeds2/internal/d/c;->a(Lcom/adyen/threeds2/parameters/ConfigParameters;)Lcom/adyen/threeds2/internal/h/c/b;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x237

    .line 89
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x238

    .line 90
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/adyen/threeds2/internal/h/c/b;->a(Lorg/json/JSONObject;)Lcom/adyen/threeds2/internal/h/c/b;

    move-result-object p0

    return-object p0
.end method
