.class public Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field negativeReasons:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/a/c;
        value = "negative"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;",
            ">;"
        }
    .end annotation
.end field

.field positiveReasons:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/a/c;
        value = "positive"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getNegativeReasons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;->negativeReasons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPositiveReasons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;->positiveReasons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setNegativeReasons(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;->negativeReasons:Ljava/util/ArrayList;

    return-void
.end method

.method public setPositiveReasons(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;->positiveReasons:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerRatingReasonsResponse{negativeReasons="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;->negativeReasons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", positiveReasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;->positiveReasons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
