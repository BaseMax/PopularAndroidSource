.class public Lcom/apptentive/android/sdk/model/SurveyResponsePayload;
.super Lcom/apptentive/android/sdk/model/ConversationItem;
.source "SurveyResponsePayload.java"


# direct methods
.method public constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->survey:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/model/ConversationItem;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;)V

    :try_start_0
    const-string v0, "id"

    .line 32
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/SurveyResponsePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p2, "answers"

    .line 38
    invoke-virtual {p0, p2, p1}, Lcom/apptentive/android/sdk/model/SurveyResponsePayload;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Unable to construct survey payload."

    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->survey:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0, p1}, Lcom/apptentive/android/sdk/model/ConversationItem;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHttpEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/conversations/%s/surveys/%s/responses"

    const/4 v1, 0x2

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/SurveyResponsePayload;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHttpRequestMethod()Lcom/apptentive/android/sdk/network/HttpRequestMethod;
    .locals 1

    .line 63
    sget-object v0, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->POST:Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    const-string v0, "id"

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/SurveyResponsePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getJsonContainer()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "response"

    return-object v0
.end method
