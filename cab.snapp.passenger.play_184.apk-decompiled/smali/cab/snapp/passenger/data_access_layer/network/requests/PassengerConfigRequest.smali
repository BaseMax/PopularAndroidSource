.class public Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private androidSecureId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "android_secure_id"
    .end annotation
.end field

.field private androidVersionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "os_version"
    .end annotation
.end field

.field private carrierName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "carrier_name"
    .end annotation
.end field

.field private deviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "device_name"
    .end annotation
.end field

.field private deviceType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "device_type"
    .end annotation
.end field

.field private imei:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "imei"
    .end annotation
.end field

.field private locale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "locale"
    .end annotation
.end field

.field private macAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "mac_address"
    .end annotation
.end field

.field private versionCode:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "version_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->deviceType:I

    return-void
.end method


# virtual methods
.method public getAndroidSecureId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->androidSecureId:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidVersionName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->androidVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 32
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->deviceType:I

    return v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 62
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->versionCode:I

    return v0
.end method

.method public setAndroidSecureId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->androidSecureId:Ljava/lang/String;

    return-void
.end method

.method public setAndroidVersionName(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->androidVersionName:Ljava/lang/String;

    return-void
.end method

.method public setCarrierName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->carrierName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->deviceType:I

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->imei:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->locale:Ljava/lang/String;

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->versionCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PassengerConfigRequest{deviceType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->deviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", macAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", carrierName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->carrierName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->versionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", androidSecureId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->androidSecureId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", androidVersionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->androidVersionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imei=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->imei:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", locale=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->locale:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
