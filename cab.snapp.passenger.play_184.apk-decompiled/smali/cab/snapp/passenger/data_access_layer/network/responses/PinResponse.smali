.class public Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private availableServiceTypesList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "service_types"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/AvailableServiceTypes;",
            ">;"
        }
    .end annotation
.end field

.field private snappFormattedAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "formatted_address"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableServiceTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/AvailableServiceTypes;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->availableServiceTypesList:Ljava/util/List;

    return-object v0
.end method

.method public getSnappFormattedAddress()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->snappFormattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public save(Ljava/lang/String;Z)V
    .locals 2

    .line 53
    const-class v0, Lcab/snapp/passenger/d/a;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse$1;

    invoke-direct {v1, p0, p2, p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse$1;-><init>(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;ZLjava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    return-void
.end method

.method public setAvailableServiceTypesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/AvailableServiceTypes;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->availableServiceTypesList:Ljava/util/List;

    return-void
.end method

.method public setSnappFormattedAddress(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->snappFormattedAddress:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PassengerPinResponse{serviceTypes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->availableServiceTypesList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formattedAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->snappFormattedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
