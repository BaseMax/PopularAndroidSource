.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;
.super Lorg/json/JSONObject;
.source "Invocation.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInteractionId()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "interaction_id"

    .line 30
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "interaction_id"

    .line 31
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCriteriaMet(Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;Z)Z
    .locals 2

    :try_start_0
    const-string v0, "criteria"

    .line 41
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "criteria"

    .line 42
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionCriteria;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionCriteria;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionCriteria;->isMet(Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;Z)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 47
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
