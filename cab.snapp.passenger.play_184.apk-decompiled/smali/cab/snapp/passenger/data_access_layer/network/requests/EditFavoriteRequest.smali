.class public Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private detailedAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "detailed_address"
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

    .line 26
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;->detailedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDetailedAddress(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;->detailedAddress:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerEditFavRequest{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", detailedAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;->detailedAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
