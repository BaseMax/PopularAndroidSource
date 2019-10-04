.class public final Lcom/adyen/threeds2/internal/c/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/adyen/threeds2/internal/c/a;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/adyen/threeds2/parameters/ConfigParameters;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/adyen/threeds2/parameters/ConfigParameters;",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/Warning;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adyen/threeds2/internal/c/b;->a:Ljava/util/Map;

    .line 56
    invoke-direct {p0, p3}, Lcom/adyen/threeds2/internal/c/b;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p3

    .line 58
    invoke-static {}, Lcom/adyen/threeds2/internal/c/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adyen/threeds2/internal/c/a;

    .line 60
    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Lcom/adyen/threeds2/internal/c/b;->a(Landroid/content/Context;Lcom/adyen/threeds2/internal/c/a;Lcom/adyen/threeds2/parameters/ConfigParameters;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v3, 0x108

    .line 61
    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v3, p0, Lcom/adyen/threeds2/internal/c/b;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    sget-object p2, Lcom/adyen/threeds2/internal/e/c;->DEVICE_DATA_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/adyen/threeds2/parameters/ConfigParameters;Ljava/util/List;)Lcom/adyen/threeds2/internal/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/adyen/threeds2/parameters/ConfigParameters;",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/Warning;",
            ">;)",
            "Lcom/adyen/threeds2/internal/c/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 51
    new-instance v0, Lcom/adyen/threeds2/internal/c/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/adyen/threeds2/internal/c/b;-><init>(Landroid/content/Context;Lcom/adyen/threeds2/parameters/ConfigParameters;Ljava/util/List;)V

    return-object v0
.end method

.method private a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/Warning;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 121
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adyen/threeds2/Warning;

    .line 124
    invoke-interface {v1}, Lcom/adyen/threeds2/Warning;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/adyen/threeds2/internal/c/a;Lcom/adyen/threeds2/parameters/ConfigParameters;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 88
    invoke-static {p2}, Lcom/adyen/threeds2/internal/c/e;->a(Lcom/adyen/threeds2/internal/c/a;)Lcom/adyen/threeds2/internal/c/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adyen/threeds2/internal/c/c;->b()Ljava/util/List;

    move-result-object v3

    .line 89
    sget-object v4, Lcom/adyen/threeds2/util/AdyenConfigParameters;->DEVICE_PARAMETER_BLACKLIST:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    .line 90
    invoke-static {p3, v4}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->getParamValues(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;)Ljava/util/Collection;

    move-result-object p3

    .line 92
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adyen/threeds2/internal/c/a/b;

    .line 93
    invoke-interface {v4}, Lcom/adyen/threeds2/internal/c/a/b;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_0

    .line 95
    invoke-interface {p3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    sget-object v4, Lcom/adyen/threeds2/internal/c/a/c$a;->MARKET_OR_REGIONAL_RESTRICTION:Lcom/adyen/threeds2/internal/c/a/c$a;

    invoke-virtual {v4}, Lcom/adyen/threeds2/internal/c/a/c$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 101
    :cond_0
    :try_start_0
    invoke-interface {v4, p1}, Lcom/adyen/threeds2/internal/c/a/b;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    .line 103
    invoke-direct {p0, v4}, Lcom/adyen/threeds2/internal/c/b;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v4, 0x109

    .line 104
    invoke-static {v4}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/adyen/threeds2/internal/c/a/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 109
    invoke-virtual {v4}, Lcom/adyen/threeds2/internal/c/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const/16 p1, 0x10a

    .line 113
    invoke-static {p1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/c/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 p1, 0x10b

    .line 114
    invoke-static {p1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 p1, 0x10c

    .line 115
    invoke-static {p1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 135
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 139
    :cond_1
    instance-of v1, p1, Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 143
    :cond_2
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/adyen/threeds2/internal/c/a;)Lorg/json/JSONObject;
    .locals 1

    .line 70
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    return-object p1

    .line 73
    :cond_0
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->DEVICE_DATA_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1

    .line 77
    :cond_1
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->DEVICE_DATA_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method
