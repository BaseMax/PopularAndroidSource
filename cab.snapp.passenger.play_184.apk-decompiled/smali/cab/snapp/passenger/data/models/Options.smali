.class public Lcab/snapp/passenger/data/models/Options;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extraDestination:Lcab/snapp/passenger/data/models/FormattedAddress;
    .annotation runtime Lcom/google/gson/a/c;
        value = "extra_destination"
    .end annotation
.end field

.field private roundTripPrice:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "round_trip_price"
    .end annotation
.end field

.field private servicePrice:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "handling_services"
    .end annotation
.end field

.field private snappWaiting:Lcab/snapp/passenger/data/models/RideWaiting;
    .annotation runtime Lcom/google/gson/a/c;
        value = "waiting"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcab/snapp/passenger/data/models/Options$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/Options$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/Options;->servicePrice:D

    .line 44
    const-class v0, Lcab/snapp/passenger/data/models/RideWaiting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/RideWaiting;

    iput-object v0, p0, Lcab/snapp/passenger/data/models/Options;->snappWaiting:Lcab/snapp/passenger/data/models/RideWaiting;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/Options;->roundTripPrice:D

    .line 46
    const-class v0, Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/FormattedAddress;

    iput-object p1, p0, Lcab/snapp/passenger/data/models/Options;->extraDestination:Lcab/snapp/passenger/data/models/FormattedAddress;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;
    .locals 1

    .line 51
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Options;->extraDestination:Lcab/snapp/passenger/data/models/FormattedAddress;

    return-object v0
.end method

.method public getRoundTripPrice()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Options;->roundTripPrice:D

    return-wide v0
.end method

.method public getServicePrice()D
    .locals 2

    .line 81
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Options;->servicePrice:D

    return-wide v0
.end method

.method public getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;
    .locals 1

    .line 71
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Options;->snappWaiting:Lcab/snapp/passenger/data/models/RideWaiting;

    return-object v0
.end method

.method public setExtraDestination(Lcab/snapp/passenger/data/models/FormattedAddress;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Options;->extraDestination:Lcab/snapp/passenger/data/models/FormattedAddress;

    return-void
.end method

.method public setRoundTripPrice(D)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/Options;->roundTripPrice:D

    return-void
.end method

.method public setServicePrice(D)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/Options;->servicePrice:D

    return-void
.end method

.method public setSnappWaiting(Lcab/snapp/passenger/data/models/RideWaiting;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Options;->snappWaiting:Lcab/snapp/passenger/data/models/RideWaiting;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Options{servicePrice="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/Options;->servicePrice:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", snappWaiting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/Options;->snappWaiting:Lcab/snapp/passenger/data/models/RideWaiting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roundTripPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/Options;->roundTripPrice:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", extraDestination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/Options;->extraDestination:Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 98
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Options;->servicePrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 99
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Options;->snappWaiting:Lcab/snapp/passenger/data/models/RideWaiting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Options;->roundTripPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 101
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Options;->extraDestination:Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
