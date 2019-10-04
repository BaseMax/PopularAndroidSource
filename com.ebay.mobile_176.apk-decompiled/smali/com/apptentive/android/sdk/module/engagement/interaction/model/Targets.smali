.class public Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;
.super Lorg/json/JSONObject;
.source "Targets.java"


# static fields
.field public static final KEY_NAME:Ljava/lang/String; = "targets"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApplicableInteraction(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13

    .line 33
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Targets;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 35
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 36
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 39
    :try_start_0
    new-instance v4, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v3

    invoke-interface {v3}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v3

    .line 41
    new-instance v12, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;

    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v5

    invoke-interface {v5}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->getVersionHistory()Lcom/apptentive/android/sdk/storage/VersionHistory;

    move-result-object v7

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->getEventData()Lcom/apptentive/android/sdk/storage/EventData;

    move-result-object v8

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v9

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->getDevice()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v10

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/conversation/Conversation;->getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;

    move-result-object v11

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;-><init>(Landroid/content/Context;Lcom/apptentive/android/sdk/storage/VersionHistory;Lcom/apptentive/android/sdk/storage/EventData;Lcom/apptentive/android/sdk/storage/Person;Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/storage/AppRelease;)V

    .line 43
    invoke-virtual {v4, v12, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;->isCriteriaMet(Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Invocation;->getInteractionId()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    .line 47
    invoke-static {v3}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_1
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "No runnable Interactions for EventLabel: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2, v0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
