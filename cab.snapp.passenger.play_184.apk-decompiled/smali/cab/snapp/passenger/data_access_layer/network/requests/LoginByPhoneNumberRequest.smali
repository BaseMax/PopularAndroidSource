.class public Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "device_id"
    .end annotation
.end field

.field phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "cellphone"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginByPhoneNumberRequest{phoneNumber=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
