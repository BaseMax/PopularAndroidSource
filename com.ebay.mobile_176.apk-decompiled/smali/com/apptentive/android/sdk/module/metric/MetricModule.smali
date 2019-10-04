.class public Lcom/apptentive/android/sdk/module/metric/MetricModule;
.super Ljava/lang/Object;
.source "MetricModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 69
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->isConversationQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/apptentive/android/sdk/module/metric/MetricModule$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/apptentive/android/sdk/module/metric/MetricModule$2;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->error:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    const/4 v1, 0x0

    .line 81
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "thread"

    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    .line 84
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "message"

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "stackTrace"

    .line 86
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Util;->stackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "exception"

    .line 87
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "description"

    .line 90
    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p2, :cond_3

    const-string p0, "extraData"

    .line 93
    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_3
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/Configuration;->isMetricsEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 97
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p1, "Sending Error Metric: %s, data: %s"

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->getLabelName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    const/4 v3, 0x1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    invoke-static {p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance p0, Lcom/apptentive/android/sdk/model/EventPayload;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->getLabelName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/apptentive/android/sdk/model/EventPayload;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 99
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/metric/MetricModule;->sendEvent(Lcom/apptentive/android/sdk/model/EventPayload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Error creating Error Metric. Nothing we can do but log this."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, p2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static sendEvent(Lcom/apptentive/android/sdk/model/EventPayload;)V
    .locals 4

    .line 109
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 111
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/conversation/Conversation;->addPayload(Lcom/apptentive/android/sdk/model/Payload;)V

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Unable to send event \'%s\': no active conversation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static sendMetric(Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0}, Lcom/apptentive/android/sdk/module/metric/MetricModule;->sendMetric(Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;Ljava/lang/String;)V

    return-void
.end method

.method public static sendMetric(Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, p1, v0}, Lcom/apptentive/android/sdk/module/metric/MetricModule;->sendMetric(Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendMetric(Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->isConversationQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/apptentive/android/sdk/module/metric/MetricModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/apptentive/android/sdk/module/metric/MetricModule$1;-><init>(Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/Configuration;->isMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Sending Metric: %s, trigger: %s, data: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->getLabelName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "null"

    :goto_0
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lcom/apptentive/android/sdk/model/EventPayload;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->getLabelName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/model/EventPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p2}, Lcom/apptentive/android/sdk/model/EventPayload;->putData(Ljava/util/Map;)V

    .line 57
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/metric/MetricModule;->sendEvent(Lcom/apptentive/android/sdk/model/EventPayload;)V

    :cond_2
    return-void
.end method
