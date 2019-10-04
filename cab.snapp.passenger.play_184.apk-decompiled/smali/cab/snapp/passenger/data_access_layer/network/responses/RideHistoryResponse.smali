.class public Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private passengerPhotoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "passenger_photo_url"
    .end annotation
.end field

.field private ridesList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "rides"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideHistoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private snappDuration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "snapp_duration"
    .end annotation
.end field

.field private snappMileage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "snapp_mileage"
    .end annotation
.end field

.field private successfulRides:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "successful_snapp_rides"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    .line 45
    sget-object v0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->ridesList:Ljava/util/List;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->snappDuration:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->snappMileage:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->successfulRides:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->passengerPhotoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPassengerPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->passengerPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRidesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideHistoryInfo;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->ridesList:Ljava/util/List;

    return-object v0
.end method

.method public getSnappDuration()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->snappDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getSnappMileage()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->snappMileage:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessfulRides()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->successfulRides:Ljava/lang/String;

    return-object v0
.end method

.method public setPassengerPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->passengerPhotoUrl:Ljava/lang/String;

    return-void
.end method

.method public setRidesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideHistoryInfo;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->ridesList:Ljava/util/List;

    return-void
.end method

.method public setSnappDuration(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->snappDuration:Ljava/lang/String;

    return-void
.end method

.method public setSnappMileage(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->snappMileage:Ljava/lang/String;

    return-void
.end method

.method public setSuccessfulRides(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->successfulRides:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerRideHistoryResponse{ridesList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->ridesList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", snappDuration=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->snappDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", snappMileage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->snappMileage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", successfulRides=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->successfulRides:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", passengerPhotoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->passengerPhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 111
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->ridesList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 112
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->snappDuration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->snappMileage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->successfulRides:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->passengerPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
