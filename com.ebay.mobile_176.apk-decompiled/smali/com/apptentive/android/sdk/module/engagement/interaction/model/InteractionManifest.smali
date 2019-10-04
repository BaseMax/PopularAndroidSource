.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;
.super Lorg/json/JSONObject;
.source "InteractionManifest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInteractions()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "interactions"

    .line 31
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "interactions"

    .line 32
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    .line 34
    new-instance v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;

    invoke-direct {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;-><init>()V

    .line 35
    check-cast v1, Lorg/json/JSONArray;

    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 37
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Factory;->parseInteraction(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interactions;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception v1

    .line 48
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Unable to load Interactions from InteractionManifest."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargets()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;
    .locals 4

    :try_start_0
    const-string/jumbo v0, "targets"

    .line 56
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "targets"

    .line 57
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 61
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Unable to load Targets from InteractionManifest."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
