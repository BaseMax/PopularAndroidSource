.class public Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private comment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "comment"
    .end annotation
.end field

.field private rate:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "rate"
    .end annotation
.end field

.field private rateReasons:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "reasons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rideId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ride_id"
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
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    .line 34
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->rate:I

    return v0
.end method

.method public getRateReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->rateReasons:Ljava/util/List;

    return-object v0
.end method

.method public getRideId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->rideId:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->comment:Ljava/lang/String;

    return-void
.end method

.method public setRate(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->rate:I

    return-void
.end method

.method public setRateReasons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->rateReasons:Ljava/util/List;

    return-void
.end method

.method public setRideId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->rideId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerRateRequest{rideId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->rideId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->rate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", comment=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->comment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", rateReasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->rateReasons:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
