.class public abstract Lcom/apptentive/android/sdk/model/JsonPayload;
.super Lcom/apptentive/android/sdk/model/Payload;
.source "JsonPayload.java"


# static fields
.field private static final SENSITIVE_KEYS_LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/apptentive/android/sdk/model/JsonPayload;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final jsonObject:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/model/JsonPayload;->SENSITIVE_KEYS_LOOKUP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/apptentive/android/sdk/model/PayloadType;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/Payload;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;)V

    .line 41
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/model/JsonPayload;->setNonce(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/Payload;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;)V

    .line 47
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method private createSafeJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 178
    :try_start_0
    sget-object v0, Lcom/apptentive/android/sdk/model/JsonPayload;->SENSITIVE_KEYS_LOOKUP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 180
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 181
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 182
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "<HIDDEN>"

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 185
    :goto_1
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "Exception while creating safe json object"

    const/4 v1, 0x0

    .line 190
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected static registerSensitiveKeys(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/apptentive/android/sdk/model/JsonPayload;",
            ">;)V"
        }
    .end annotation

    .line 259
    new-instance v0, Lcom/apptentive/android/sdk/model/JsonPayload$1;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/JsonPayload$1;-><init>()V

    invoke-static {p0, v0}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->listFields(Ljava/lang/Class;Lcom/apptentive/android/sdk/util/RuntimeUtils$FieldFilter;)Ljava/util/List;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 274
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/model/JsonPayload;->SENSITIVE_KEYS_LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Exception while registering sensitive keys"

    const/4 v1, 0x0

    .line 278
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private toNullableValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/model/JsonPayload;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method protected getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 142
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHttpRequestContentType()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/JsonPayload;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/octet-stream"

    return-object v0

    :cond_0
    const-string v0, "application/json"

    return-object v0
.end method

.method public getHttpRequestMethod()Lcom/apptentive/android/sdk/network/HttpRequestMethod;
    .locals 1

    .line 207
    sget-object v0, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->PUT:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    return-object v0
.end method

.method protected getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected getJsonContainer()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 2

    const-string v0, "nonce"

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/JsonPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isNull(Ljava/lang/String;)Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final marshallForSending()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/JsonPayload;->getJsonContainer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 236
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    .line 241
    :goto_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/JsonPayload;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "token"

    .line 242
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/JsonPayload;->getConversationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/JsonPayload;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "session_id"

    .line 246
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/JsonPayload;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v1
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected put(Ljava/lang/String;D)V
    .locals 4

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception while putting json pair \'%s\'=\'%s\'"

    const/4 v2, 0x2

    .line 101
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected put(Ljava/lang/String;I)V
    .locals 4

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception while putting json pair \'%s\'=\'%s\'"

    const/4 v2, 0x2

    .line 92
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/apptentive/android/sdk/model/JsonPayload;->toNullableValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception while putting json pair \'%s\'=\'%s\'"

    const/4 v2, 0x2

    .line 74
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/apptentive/android/sdk/model/JsonPayload;->toNullableValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception while putting json pair \'%s\'=\'%s\'"

    const/4 v2, 0x2

    .line 110
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected put(Ljava/lang/String;Z)V
    .locals 4

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception while putting json pair \'%s\'=\'%s\'"

    const/4 v2, 0x2

    .line 83
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected remove(Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public renderData()[B
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/JsonPayload;->marshallForSending()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/JsonPayload;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/JsonPayload;->getEncryption()Lcom/apptentive/android/sdk/Encryption;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/apptentive/android/sdk/Encryption;->encrypt([B)[B

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nonce"

    .line 226
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/JsonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 169
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveLog;->shouldSanitizeLogMessages()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/model/JsonPayload;->createSafeJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "%s %s"

    .line 171
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object v0, v3, v1

    invoke-static {v4, v3}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "%s %s"

    .line 173
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/apptentive/android/sdk/model/JsonPayload;->jsonObject:Lorg/json/JSONObject;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
