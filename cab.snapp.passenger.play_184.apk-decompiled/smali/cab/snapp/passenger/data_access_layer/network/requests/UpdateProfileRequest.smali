.class public Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private fullName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "fullname"
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "phone"
    .end annotation
.end field

.field private snappPAssengerProfileMeta:Lcab/snapp/passenger/data/models/ProfileMeta;
    .annotation runtime Lcom/google/gson/a/c;
        value = "meta"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;
    .locals 1

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->snappPAssengerProfileMeta:Lcab/snapp/passenger/data/models/ProfileMeta;

    return-object v0
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->phone:Ljava/lang/String;

    return-void
.end method

.method public setProfileMeta(Lcab/snapp/passenger/data/models/ProfileMeta;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->snappPAssengerProfileMeta:Lcab/snapp/passenger/data/models/ProfileMeta;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateProfileRequest{fullName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", snappPAssengerProfileMeta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->snappPAssengerProfileMeta:Lcab/snapp/passenger/data/models/ProfileMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
