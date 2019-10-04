.class public Lcab/snapp/passenger/data/models/RideRatingModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private comment:Ljava/lang/String;

.field private driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

.field private rateReasonModel:Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;

.field private rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

.field private selectedNegativeReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPositiveReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private starRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedPositiveReasons:Ljava/util/Set;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedNegativeReasons:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addSelectedReason(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 126
    iget-object p2, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedNegativeReasons:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 130
    :cond_0
    iget-object p2, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedPositiveReasons:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverImageUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/DriverInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/DriverInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;
    .locals 1

    .line 217
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    return-object v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/DriverInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/DriverInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDriverVehicle()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/DriverInfo;->getVehicleModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/DriverInfo;->getVehicleModel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNegativeReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rateReasonModel:Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;->getNegativeReasons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rateReasonModel:Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;->getNegativeReasons()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getNumberOfSelectedReasons(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedNegativeReasons:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    return p1

    .line 171
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedPositiveReasons:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    return p1
.end method

.method public getPositiveReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rateReasonModel:Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;->getPositiveReasons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rateReasonModel:Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;->getPositiveReasons()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRateReasonModel()Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;
    .locals 1

    .line 227
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rateReasonModel:Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;

    return-object v0
.end method

.method public getRideDestination()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRideId()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;
    .locals 1

    .line 222
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    return-object v0
.end method

.method public getRideTitle()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSelectedReasons()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v1, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedNegativeReasons:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object v1, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedPositiveReasons:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    .line 235
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getServiceType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStarRate()I
    .locals 1

    .line 37
    iget v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->starRate:I

    return v0
.end method

.method public hasReasons()Z
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getPositiveReasons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getNegativeReasons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected(I)Z
    .locals 2

    .line 160
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedNegativeReasons:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedPositiveReasons:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeSelectedReason(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 138
    iget-object p2, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedNegativeReasons:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 142
    :cond_0
    iget-object p2, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->selectedPositiveReasons:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->comment:Ljava/lang/String;

    return-void
.end method

.method public setFinishRideModels(Lcab/snapp/passenger/data/models/DriverInfo;Lcab/snapp/passenger/data/models/RideInformation;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 26
    iput-object p2, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    return-void
.end method

.method public setRatingReasonsResponse(Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->rateReasonModel:Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;

    return-void
.end method

.method public setStarRate(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcab/snapp/passenger/data/models/RideRatingModel;->starRate:I

    return-void
.end method

.method public toggleSelectedReason(IZ)V
    .locals 1

    .line 148
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->isSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/data/models/RideRatingModel;->removeSelectedReason(IZ)V

    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/data/models/RideRatingModel;->addSelectedReason(IZ)V

    return-void
.end method
