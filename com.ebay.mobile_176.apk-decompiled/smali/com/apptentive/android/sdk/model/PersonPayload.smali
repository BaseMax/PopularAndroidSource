.class public Lcom/apptentive/android/sdk/model/PersonPayload;
.super Lcom/apptentive/android/sdk/model/JsonPayload;
.source "PersonPayload.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "person"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/apptentive/android/sdk/model/PersonPayload;

    invoke-static {v0}, Lcom/apptentive/android/sdk/model/PersonPayload;->registerSensitiveKeys(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->person:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/model/JsonPayload;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->person:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0, p1}, Lcom/apptentive/android/sdk/model/JsonPayload;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCustomData()Lcom/apptentive/android/sdk/model/CustomData;
    .locals 2

    const-string v0, "custom_data"

    .line 115
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/PersonPayload;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :try_start_0
    new-instance v0, Lcom/apptentive/android/sdk/model/CustomData;

    const-string v1, "custom_data"

    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/model/PersonPayload;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apptentive/android/sdk/model/CustomData;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    const-string v0, "email"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/PersonPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/conversations/%s/person"

    const/4 v1, 0x1

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    const-string v0, "id"

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/PersonPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getJsonContainer()Ljava/lang/String;
    .locals 1

    const-string v0, "person"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const-string v0, "name"

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/PersonPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 1

    const-string v0, "birthday"

    .line 110
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "city"

    .line 98
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    const-string v0, "country"

    .line 106
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomData(Lcom/apptentive/android/sdk/model/CustomData;)V
    .locals 1

    const-string v0, "custom_data"

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "email"

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFacebookId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "facebook_id"

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMParticleId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mparticle_id"

    .line 130
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "phone_number"

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "street"

    .line 94
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "zip"

    .line 102
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/PersonPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
