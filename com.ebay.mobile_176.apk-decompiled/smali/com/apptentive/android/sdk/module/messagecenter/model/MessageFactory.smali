.class public Lcom/apptentive/android/sdk/module/messagecenter/model/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage;
    .locals 5

    .line 25
    :try_start_0
    sget-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->CompoundMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    .line 27
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "type"

    .line 28
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-static {v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    move-result-object v0

    .line 33
    :cond_0
    sget-object v1, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageFactory$1;->$SwitchMap$com$apptentive$android$sdk$model$ApptentiveMessage$Type:[I

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 35
    :pswitch_0
    new-instance v0, Lcom/apptentive/android/sdk/model/CompoundMessage;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/model/CompoundMessage;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 46
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 42
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Error parsing json as Message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    :pswitch_1
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
