.class public Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private detailedAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "detailed_address"
    .end annotation
.end field

.field private lat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "lat"
    .end annotation
.end field

.field private lng:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "lng"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetailedAddress()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->detailedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDetailedAddress(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->detailedAddress:Ljava/lang/String;

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->lat:Ljava/lang/String;

    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->lng:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerSaveFavoriteRequest{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lat=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->lat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lng=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->lng:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", detailedAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->detailedAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
