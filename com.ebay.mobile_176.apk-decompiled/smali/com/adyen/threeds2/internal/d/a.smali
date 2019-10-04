.class public final Lcom/adyen/threeds2/internal/d/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/adyen/threeds2/parameters/ConfigParameters;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adyen/threeds2/parameters/ConfigParameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->CONFIG_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p0, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 63
    sget-object v0, Lcom/adyen/threeds2/util/AdyenConfigParameters;->DIRECTORY_SERVER_ID:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    invoke-static {p0, v0}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->getParamValue(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-static {p0}, Lcom/adyen/threeds2/internal/d/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->DIRECTORY_SERVER_ID:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p0, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/String;Lcom/adyen/threeds2/internal/e/a;)V

    .line 71
    invoke-static {p0}, Lcom/adyen/threeds2/internal/d/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/adyen/threeds2/parameters/ConfigParameters;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adyen/threeds2/parameters/ConfigParameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/adyen/threeds2/internal/d/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/adyen/threeds2/internal/d/a;->a(Lcom/adyen/threeds2/parameters/ConfigParameters;)Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-static {p0}, Lcom/adyen/threeds2/internal/d/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 78
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    :try_start_0
    invoke-static {v1}, Lcom/adyen/threeds2/internal/h/e/i;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    sget-object v0, Lcom/adyen/threeds2/internal/e/c;->UNKNOWN_DIRECTORY_SERVER:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v0, p0}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-object v0
.end method
