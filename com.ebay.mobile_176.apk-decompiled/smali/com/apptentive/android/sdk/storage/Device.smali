.class public Lcom/apptentive/android/sdk/storage/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lcom/apptentive/android/sdk/storage/DataChangedListener;
.implements Lcom/apptentive/android/sdk/storage/Saveable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private advertiserId:Ljava/lang/String;

.field private board:Ljava/lang/String;

.field private bootloaderVersion:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private buildId:Ljava/lang/String;

.field private buildType:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private cpu:Ljava/lang/String;

.field private currentCarrier:Ljava/lang/String;

.field private customData:Lcom/apptentive/android/sdk/storage/CustomData;

.field private device:Ljava/lang/String;

.field private transient deviceDataChangedListener:Lcom/apptentive/android/sdk/storage/DeviceDataChangedListener;

.field private integrationConfig:Lcom/apptentive/android/sdk/storage/IntegrationConfig;

.field private transient listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

.field private localeCountryCode:Ljava/lang/String;

.field private localeLanguageCode:Ljava/lang/String;

.field private localeRaw:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private osApiLevel:I

.field private osBuild:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field private radioVersion:Ljava/lang/String;

.field private utcOffset:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/apptentive/android/sdk/storage/CustomData;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/storage/CustomData;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    .line 47
    new-instance v0, Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/storage/IntegrationConfig;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->integrationConfig:Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    return-void
.end method


# virtual methods
.method public clone()Lcom/apptentive/android/sdk/storage/Device;
    .locals 3

    .line 78
    new-instance v0, Lcom/apptentive/android/sdk/storage/Device;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/storage/Device;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->uuid:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->osName:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->osName:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->osVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->osVersion:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->osBuild:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->osBuild:Ljava/lang/String;

    .line 83
    iget v1, p0, Lcom/apptentive/android/sdk/storage/Device;->osApiLevel:I

    iput v1, v0, Lcom/apptentive/android/sdk/storage/Device;->osApiLevel:I

    .line 84
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->manufacturer:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->manufacturer:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->model:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->model:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->board:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->board:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->product:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->product:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->brand:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->brand:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->cpu:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->cpu:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->device:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->device:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->carrier:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->carrier:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->currentCarrier:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->currentCarrier:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->networkType:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->networkType:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->buildType:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->buildType:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->buildId:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->buildId:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->bootloaderVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->bootloaderVersion:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->radioVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->radioVersion:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    iget-object v2, p0, Lcom/apptentive/android/sdk/storage/Device;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/storage/CustomData;->putAll(Ljava/util/Map;)V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->localeCountryCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->localeCountryCode:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->localeLanguageCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->localeLanguageCode:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->localeRaw:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->localeRaw:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->utcOffset:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->utcOffset:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->advertiserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->advertiserId:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->integrationConfig:Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->integrationConfig:Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/storage/IntegrationConfig;->clone()Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->integrationConfig:Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    .line 110
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Device;->deviceDataChangedListener:Lcom/apptentive/android/sdk/storage/DeviceDataChangedListener;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Device;->deviceDataChangedListener:Lcom/apptentive/android/sdk/storage/DeviceDataChangedListener;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->clone()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->advertiserId:Ljava/lang/String;

    return-object v0
.end method

.method public getBoard()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->board:Ljava/lang/String;

    return-object v0
.end method

.method public getBootloaderVersion()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->bootloaderVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildId()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildType()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->buildType:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getCpu()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->cpu:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCarrier()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->currentCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getIntegrationConfig()Lcom/apptentive/android/sdk/storage/IntegrationConfig;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->integrationConfig:Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    return-object v0
.end method

.method public getLocaleCountryCode()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->localeCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleLanguageCode()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->localeLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleRaw()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->localeRaw:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getOsApiLevel()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/apptentive/android/sdk/storage/Device;->osApiLevel:I

    return v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->osBuild:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioVersion()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->radioVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUtcOffset()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->utcOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public notifyDataChanged()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->deviceDataChangedListener:Lcom/apptentive/android/sdk/storage/DeviceDataChangedListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->deviceDataChangedListener:Lcom/apptentive/android/sdk/storage/DeviceDataChangedListener;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/storage/DeviceDataChangedListener;->onDeviceDataChanged()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/storage/DataChangedListener;->onDataChanged()V

    :cond_1
    return-void
.end method

.method public onDataChanged()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    return-void
.end method

.method public setAdvertiserId(Ljava/lang/String;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->advertiserId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->advertiserId:Ljava/lang/String;

    .line 386
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setBoard(Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->board:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->board:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setBootloaderVersion(Ljava/lang/String;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->bootloaderVersion:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->bootloaderVersion:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->brand:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->brand:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setBuildId(Ljava/lang/String;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->buildId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->buildId:Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setBuildType(Ljava/lang/String;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->buildType:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->buildType:Ljava/lang/String;

    .line 288
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->carrier:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->carrier:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setCpu(Ljava/lang/String;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->cpu:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->cpu:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setCurrentCarrier(Ljava/lang/String;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->currentCarrier:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->currentCarrier:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setCustomData(Lcom/apptentive/android/sdk/storage/CustomData;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    .line 331
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    invoke-virtual {p1, p0}, Lcom/apptentive/android/sdk/storage/CustomData;->setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V

    .line 332
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    return-void
.end method

.method public setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    .line 57
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    invoke-virtual {p1, p0}, Lcom/apptentive/android/sdk/storage/CustomData;->setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V

    .line 58
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->integrationConfig:Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    invoke-virtual {p1, p0}, Lcom/apptentive/android/sdk/storage/IntegrationConfig;->setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->device:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->device:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setDeviceDataChangedListener(Lcom/apptentive/android/sdk/storage/DeviceDataChangedListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->deviceDataChangedListener:Lcom/apptentive/android/sdk/storage/DeviceDataChangedListener;

    return-void
.end method

.method public setIntegrationConfig(Lcom/apptentive/android/sdk/storage/IntegrationConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 398
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->integrationConfig:Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    .line 399
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->integrationConfig:Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    invoke-virtual {p1, p0}, Lcom/apptentive/android/sdk/storage/IntegrationConfig;->setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V

    .line 400
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    return-void

    .line 396
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Integration config is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocaleCountryCode(Ljava/lang/String;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->localeCountryCode:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->localeCountryCode:Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setLocaleLanguageCode(Ljava/lang/String;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->localeLanguageCode:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->localeLanguageCode:Ljava/lang/String;

    .line 353
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setLocaleRaw(Ljava/lang/String;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->localeRaw:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->localeRaw:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->manufacturer:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->manufacturer:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->model:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->model:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->networkType:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->networkType:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setOsApiLevel(I)V
    .locals 1

    .line 165
    iget v0, p0, Lcom/apptentive/android/sdk/storage/Device;->osApiLevel:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lcom/apptentive/android/sdk/storage/Device;->osApiLevel:I

    .line 167
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setOsBuild(Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->osBuild:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->osBuild:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->osName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->osName:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->osVersion:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->osVersion:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->product:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->product:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setRadioVersion(Ljava/lang/String;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->radioVersion:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->radioVersion:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setUtcOffset(Ljava/lang/String;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->utcOffset:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->utcOffset:Ljava/lang/String;

    .line 375
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Device;->uuid:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Device;->uuid:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->notifyDataChanged()V

    :cond_0
    return-void
.end method
