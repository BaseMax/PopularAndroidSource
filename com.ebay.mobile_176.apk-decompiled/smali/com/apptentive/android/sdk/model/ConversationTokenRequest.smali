.class public Lcom/apptentive/android/sdk/model/ConversationTokenRequest;
.super Lorg/json/JSONObject;
.source "ConversationTokenRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public setDevice(Lcom/apptentive/android/sdk/model/DevicePayload;)V
    .locals 5

    :try_start_0
    const-string v0, "device"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 29
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to ConversationTokenRequest"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "device"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setPerson(Lcom/apptentive/android/sdk/model/PersonPayload;)V
    .locals 5

    :try_start_0
    const-string v0, "person"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 47
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to ConversationTokenRequest"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "person"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setSdk(Lcom/apptentive/android/sdk/model/SdkPayload;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "sdk"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/SdkPayload;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 38
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error adding %s to ConversationTokenRequest"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sdk"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setSdkAndAppRelease(Lcom/apptentive/android/sdk/model/SdkPayload;Lcom/apptentive/android/sdk/model/AppReleasePayload;)V
    .locals 5

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/SdkPayload;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sdk_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/SdkPayload;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 62
    invoke-static {v2}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 68
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 69
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    :try_start_1
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 74
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :try_start_2
    const-string p1, "app_release"

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/model/ConversationTokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 82
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
