.class public Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private confirmRideMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "confirm_before_ride_message"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field

.field private needConfirmRide:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "confirm_before_ride"
    .end annotation
.end field

.field private priceModels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "prices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceModel;",
            ">;"
        }
    .end annotation
.end field

.field private rideWaitingList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "waiting"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "tag"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfirmRideMessage()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->confirmRideMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceModel;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->priceModels:Ljava/util/List;

    return-object v0
.end method

.method public getRideWaitingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->rideWaitingList:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedConfirmRide()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->needConfirmRide:Z

    return v0
.end method

.method public setConfirmRideMessage(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->confirmRideMessage:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setNeedConfirmRide(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->needConfirmRide:Z

    return-void
.end method

.method public setPriceModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceModel;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->priceModels:Ljava/util/List;

    return-void
.end method

.method public setRideWaitingList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->rideWaitingList:Ljava/util/List;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->tag:Ljava/lang/String;

    return-void
.end method
