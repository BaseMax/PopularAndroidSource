.class public Lcom/apptentive/android/sdk/model/DevicePayload;
.super Lcom/apptentive/android/sdk/model/JsonPayload;
.source "DevicePayload.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "device"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/apptentive/android/sdk/model/DevicePayload;

    invoke-static {v0}, Lcom/apptentive/android/sdk/model/DevicePayload;->registerSensitiveKeys(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->device:Lcom/apptentive/android/sdk/model/PayloadType;

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

    .line 55
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->device:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0, p1}, Lcom/apptentive/android/sdk/model/JsonPayload;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCustomData()Lcom/apptentive/android/sdk/model/CustomData;
    .locals 2

    const-string v0, "custom_data"

    .line 153
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/DevicePayload;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :try_start_0
    new-instance v0, Lcom/apptentive/android/sdk/model/CustomData;

    const-string v1, "custom_data"

    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/model/DevicePayload;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apptentive/android/sdk/model/CustomData;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 157
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 2

    const-string v0, "device"

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/DevicePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/conversations/%s/device"

    const/4 v1, 0x1

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getJsonContainer()Ljava/lang/String;
    .locals 1

    const-string v0, "device"

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    const-string v0, "model"

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/DevicePayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAdvertiserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "advertiser_id"

    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBoard(Ljava/lang/String;)V
    .locals 1

    const-string v0, "board"

    .line 100
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBootloaderVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bootloader_version"

    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 1

    const-string v0, "brand"

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBuildId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "build_id"

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBuildType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "build_type"

    .line 136
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 1

    const-string v0, "carrier"

    .line 124
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCpu(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cpu"

    .line 112
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentCarrier(Ljava/lang/String;)V
    .locals 1

    const-string v0, "current_carrier"

    .line 128
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomData(Lcom/apptentive/android/sdk/model/CustomData;)V
    .locals 1

    const-string v0, "custom_data"

    .line 164
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 1

    const-string v0, "device"

    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIntegrationConfig(Lcom/apptentive/android/sdk/model/CustomData;)V
    .locals 1

    const-string v0, "integration_config"

    .line 168
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setLocaleCountryCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "locale_country_code"

    .line 172
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocaleLanguageCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "locale_language_code"

    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocaleRaw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "locale_raw"

    .line 180
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "manufacturer"

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "model"

    .line 96
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "network_type"

    .line 132
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOsApiLevel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "os_api_level"

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOsBuild(Ljava/lang/String;)V
    .locals 1

    const-string v0, "os_build"

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "os_name"

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "os_version"

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 1

    const-string v0, "product"

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRadioVersion(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "radio_version"

    .line 148
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUtcOffset(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "utc_offset"

    .line 184
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uuid"

    .line 68
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/DevicePayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
