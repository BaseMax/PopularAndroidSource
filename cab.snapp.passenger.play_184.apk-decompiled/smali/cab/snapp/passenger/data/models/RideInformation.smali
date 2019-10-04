.class public Lcab/snapp/passenger/data/models/RideInformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/RideInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canUseRideVoucher:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "can_use_ride_voucher"
    .end annotation
.end field

.field private currentState:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "current_state"
    .end annotation
.end field

.field private destination:Lcab/snapp/passenger/data/models/FormattedAddress;
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination"
    .end annotation
.end field

.field private finalPrice:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "final_price"
    .end annotation
.end field

.field private isDelivery:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_delivery"
    .end annotation
.end field

.field private origin:Lcab/snapp/passenger/data/models/FormattedAddress;
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin"
    .end annotation
.end field

.field private reallottedRideId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "reallotted"
    .end annotation
.end field

.field private rideId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ride_id"
    .end annotation
.end field

.field private serviceType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "service_type"
    .end annotation
.end field

.field private shareUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "shareurl"
    .end annotation
.end field

.field private startTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "start_time"
    .end annotation
.end field

.field private subServiceType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "sub_service_type"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcab/snapp/passenger/data/models/RideInformation$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/RideInformation$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/RideInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->rideId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->serviceType:I

    .line 64
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
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->isDelivery:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->subServiceType:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcab/snapp/passenger/data/models/RideInformation;->finalPrice:D

    .line 67
    const-class v0, Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/FormattedAddress;

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->origin:Lcab/snapp/passenger/data/models/FormattedAddress;

    .line 68
    const-class v0, Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/FormattedAddress;

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->destination:Lcab/snapp/passenger/data/models/FormattedAddress;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->currentState:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->startTime:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->shareUrl:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcab/snapp/passenger/data/models/RideInformation;->canUseRideVoucher:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 133
    iget v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->currentState:I

    return v0
.end method

.method public getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;
    .locals 1

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->destination:Lcab/snapp/passenger/data/models/FormattedAddress;

    return-object v0
.end method

.method public getFinalPrice()D
    .locals 2

    .line 103
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->finalPrice:D

    return-wide v0
.end method

.method public getOrigin()Lcab/snapp/passenger/data/models/FormattedAddress;
    .locals 1

    .line 113
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->origin:Lcab/snapp/passenger/data/models/FormattedAddress;

    return-object v0
.end method

.method public getReallottedRideId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->reallottedRideId:Ljava/lang/String;

    return-object v0
.end method

.method public getRideId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->rideId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    .line 173
    iget v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->serviceType:I

    return v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSubServiceType()I
    .locals 1

    .line 93
    iget v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->subServiceType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCanUseRideVoucher()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->canUseRideVoucher:Z

    return v0
.end method

.method public isDelivery()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->isDelivery:Z

    return v0
.end method

.method public setCanUseRideVoucher(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->canUseRideVoucher:Z

    return-void
.end method

.method public setCurrentState(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->currentState:I

    return-void
.end method

.method public setDelivery(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->isDelivery:Z

    return-void
.end method

.method public setDestination(Lcab/snapp/passenger/data/models/FormattedAddress;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->destination:Lcab/snapp/passenger/data/models/FormattedAddress;

    return-void
.end method

.method public setFinalPrice(D)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->finalPrice:D

    return-void
.end method

.method public setOrigin(Lcab/snapp/passenger/data/models/FormattedAddress;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->origin:Lcab/snapp/passenger/data/models/FormattedAddress;

    return-void
.end method

.method public setRideId(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->rideId:Ljava/lang/String;

    return-void
.end method

.method public setServiceType(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->serviceType:I

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->shareUrl:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setSubServiceType(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->subServiceType:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RideInformation;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RideInformation{rideId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/RideInformation;->rideId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reallotted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->reallottedRideId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', serviceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->serviceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDelivery="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->isDelivery:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", subServiceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->subServiceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", finalPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->finalPrice:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", origin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->origin:Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", destination="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->destination:Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currentState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->currentState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", startTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", shareUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->shareUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", canUseRideVoucher="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->canUseRideVoucher:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/RideInformation;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->rideId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->reallottedRideId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->serviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->isDelivery:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 214
    iget v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->subServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->finalPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 216
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->origin:Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 217
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RideInformation;->destination:Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 218
    iget p2, p0, Lcab/snapp/passenger/data/models/RideInformation;->currentState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object p2, p0, Lcab/snapp/passenger/data/models/RideInformation;->startTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcab/snapp/passenger/data/models/RideInformation;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-boolean p2, p0, Lcab/snapp/passenger/data/models/RideInformation;->canUseRideVoucher:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget-object p2, p0, Lcab/snapp/passenger/data/models/RideInformation;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
