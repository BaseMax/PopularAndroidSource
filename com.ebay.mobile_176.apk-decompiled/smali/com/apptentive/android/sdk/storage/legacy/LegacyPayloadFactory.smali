.class public final Lcom/apptentive/android/sdk/storage/legacy/LegacyPayloadFactory;
.super Ljava/lang/Object;
.source "LegacyPayloadFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPayload(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;)Lcom/apptentive/android/sdk/model/JsonPayload;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/apptentive/android/sdk/storage/legacy/LegacyPayloadFactory$1;->$SwitchMap$com$apptentive$android$sdk$model$PayloadType:[I

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/PayloadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected payload type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :pswitch_0
    new-instance p0, Lcom/apptentive/android/sdk/model/SurveyResponsePayload;

    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/SurveyResponsePayload;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 42
    :pswitch_1
    new-instance p0, Lcom/apptentive/android/sdk/model/PersonPayload;

    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    return-object v1

    :pswitch_3
    return-object v1

    .line 33
    :pswitch_4
    new-instance p0, Lcom/apptentive/android/sdk/model/DevicePayload;

    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 31
    :pswitch_5
    new-instance p0, Lcom/apptentive/android/sdk/model/EventPayload;

    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/EventPayload;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 29
    :pswitch_6
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageFactory;->fromJson(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
