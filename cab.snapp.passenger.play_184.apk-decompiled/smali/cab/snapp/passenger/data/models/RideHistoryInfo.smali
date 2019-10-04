.class public Lcab/snapp/passenger/data/models/RideHistoryInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/RideHistoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "created_at"
    .end annotation
.end field

.field private destinationDetail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_details"
    .end annotation
.end field

.field private destinationFormattedAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_formatted_address"
    .end annotation
.end field

.field private destinationLat:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_lat"
    .end annotation
.end field

.field private destinationLng:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_lng"
    .end annotation
.end field

.field private driverName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "driver_name"
    .end annotation
.end field

.field private driverPhotoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "driver_photo"
    .end annotation
.end field

.field private estimatedDistance:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "estimated_distance"
    .end annotation
.end field

.field private estimatedDuration:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "estimated_duration"
    .end annotation
.end field

.field private finalPrice:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "final_price"
    .end annotation
.end field

.field private hasRated:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "has_rated"
    .end annotation
.end field

.field private humanReadableID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "human_readable_id"
    .end annotation
.end field

.field private isDelivery:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_delivery"
    .end annotation
.end field

.field private lastestRideStatus:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "latest_ride_status"
    .end annotation
.end field

.field private map_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "map_url"
    .end annotation
.end field

.field private originDetail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_details"
    .end annotation
.end field

.field private originFormattedAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_formatted_address"
    .end annotation
.end field

.field private originLat:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_lat"
    .end annotation
.end field

.field private originLng:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_lng"
    .end annotation
.end field

.field private rate:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "rate"
    .end annotation
.end field

.field private receiptLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "receipt_link"
    .end annotation
.end field

.field private rideOptions:Lcab/snapp/passenger/data/models/Options;
    .annotation runtime Lcom/google/gson/a/c;
        value = "options"
    .end annotation
.end field

.field private rows:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "rows"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideHistoryDetailRow;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "title"
    .end annotation
.end field

.field private updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "updated_at"
    .end annotation
.end field

.field private vehicleModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "vehicle_model"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcab/snapp/passenger/data/models/RideHistoryInfo$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/RideHistoryInfo$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originLat:D

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originLng:D

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originDetail:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originFormattedAddress:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationLat:D

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationLng:D

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationDetail:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationFormattedAddress:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->estimatedDuration:D

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->estimatedDistance:D

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->finalPrice:D

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->humanReadableID:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->lastestRideStatus:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->createdAt:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->updatedAt:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->map_url:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->driverName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->driverPhotoUrl:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->hasRated:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rate:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rows:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rows:Ljava/util/List;

    const-class v3, Lcab/snapp/passenger/data/models/RideHistoryDetailRow;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->title:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->vehicleModel:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->receiptLink:Ljava/lang/String;

    .line 109
    const-class v0, Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/Options;

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rideOptions:Lcab/snapp/passenger/data/models/Options;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->isDelivery:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationDetail()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationFormattedAddress()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationFormattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLat()D
    .locals 2

    .line 155
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationLat:D

    return-wide v0
.end method

.method public getDestinationLng()D
    .locals 2

    .line 165
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationLng:D

    return-wide v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->driverName:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->driverPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEstimatedDistance()D
    .locals 2

    .line 205
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->estimatedDistance:D

    return-wide v0
.end method

.method public getEstimatedDuration()D
    .locals 2

    .line 195
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->estimatedDuration:D

    return-wide v0
.end method

.method public getFinalPrice()D
    .locals 2

    .line 215
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->finalPrice:D

    return-wide v0
.end method

.method public getHasRated()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->hasRated:Z

    return v0
.end method

.method public getHumanReadableID()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->humanReadableID:Ljava/lang/String;

    return-object v0
.end method

.method public getLastestRideStatus()I
    .locals 1

    .line 235
    iget v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->lastestRideStatus:I

    return v0
.end method

.method public getMap_url()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->map_url:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginDetail()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginFormattedAddress()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originFormattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginLat()D
    .locals 2

    .line 115
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originLat:D

    return-wide v0
.end method

.method public getOriginLng()D
    .locals 2

    .line 125
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originLng:D

    return-wide v0
.end method

.method public getRate()I
    .locals 1

    .line 300
    iget v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rate:I

    return v0
.end method

.method public getReceiptLink()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->receiptLink:Ljava/lang/String;

    return-object v0
.end method

.method public getRideOptions()Lcab/snapp/passenger/data/models/Options;
    .locals 1

    .line 360
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rideOptions:Lcab/snapp/passenger/data/models/Options;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideHistoryDetailRow;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rows:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleModel()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->vehicleModel:Ljava/lang/String;

    return-object v0
.end method

.method public isDelivery()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->isDelivery:Z

    return v0
.end method

.method public isHasRated()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->hasRated:Z

    return v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setDelivery(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->isDelivery:Z

    return-void
.end method

.method public setDestinationDetail(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationDetail:Ljava/lang/String;

    return-void
.end method

.method public setDestinationFormattedAddress(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationFormattedAddress:Ljava/lang/String;

    return-void
.end method

.method public setDestinationLat(D)V
    .locals 0

    .line 160
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationLat:D

    return-void
.end method

.method public setDestinationLng(D)V
    .locals 0

    .line 170
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationLng:D

    return-void
.end method

.method public setDriverName(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->driverName:Ljava/lang/String;

    return-void
.end method

.method public setDriverPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->driverPhotoUrl:Ljava/lang/String;

    return-void
.end method

.method public setEstimatedDistance(D)V
    .locals 0

    .line 210
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->estimatedDistance:D

    return-void
.end method

.method public setEstimatedDuration(D)V
    .locals 0

    .line 200
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->estimatedDuration:D

    return-void
.end method

.method public setFinalPrice(D)V
    .locals 0

    .line 220
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->finalPrice:D

    return-void
.end method

.method public setHasRated(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->hasRated:Z

    return-void
.end method

.method public setHumanReadableID(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->humanReadableID:Ljava/lang/String;

    return-void
.end method

.method public setLastestRideStatus(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->lastestRideStatus:I

    return-void
.end method

.method public setMap_url(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->map_url:Ljava/lang/String;

    return-void
.end method

.method public setOriginDetail(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originDetail:Ljava/lang/String;

    return-void
.end method

.method public setOriginFormattedAddress(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originFormattedAddress:Ljava/lang/String;

    return-void
.end method

.method public setOriginLat(D)V
    .locals 0

    .line 120
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originLat:D

    return-void
.end method

.method public setOriginLng(D)V
    .locals 0

    .line 130
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originLng:D

    return-void
.end method

.method public setRate(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rate:I

    return-void
.end method

.method public setReceiptLink(Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->receiptLink:Ljava/lang/String;

    return-void
.end method

.method public setRideOptions(Lcab/snapp/passenger/data/models/Options;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rideOptions:Lcab/snapp/passenger/data/models/Options;

    return-void
.end method

.method public setRows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideHistoryDetailRow;",
            ">;)V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rows:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public setVehicleModel(Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->vehicleModel:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 387
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 388
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originLng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 389
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originDetail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->originFormattedAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 392
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationLng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 393
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationDetail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->destinationFormattedAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->estimatedDuration:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 396
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->estimatedDistance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 397
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->finalPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 398
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->humanReadableID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->lastestRideStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->createdAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->updatedAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->map_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->driverName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->driverPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->hasRated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 406
    iget v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rows:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 408
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->vehicleModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->receiptLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->rideOptions:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 412
    iget-boolean p2, p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;->isDelivery:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
