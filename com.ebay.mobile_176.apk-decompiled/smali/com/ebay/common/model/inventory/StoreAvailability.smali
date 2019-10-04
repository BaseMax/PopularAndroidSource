.class public final Lcom/ebay/common/model/inventory/StoreAvailability;
.super Lcom/ebay/common/model/ParcelableHelper;
.source "StoreAvailability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/inventory/StoreAvailability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Lcom/ebay/common/model/inventory/LocationAddress;

.field public availability:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

.field public distance:D

.field public fulfillmentTime:Ljava/lang/Long;

.field public hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

.field public locationId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public pickupInstructions:Ljava/lang/String;

.field public quantity:Ljava/lang/Integer;

.field public url:Ljava/lang/String;

.field public utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

.field public utcOffset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Lcom/ebay/common/model/inventory/StoreAvailability$1;

    invoke-direct {v0}, Lcom/ebay/common/model/inventory/StoreAvailability$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/inventory/StoreAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->distance:D

    .line 120
    const-class v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->availability:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->locationId:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->name:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/ebay/common/model/inventory/LocationAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/inventory/LocationAddress;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    .line 124
    invoke-static {p1}, Lcom/ebay/common/model/inventory/StoreAvailability;->readOptString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->phone:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/ebay/common/model/inventory/StoreAvailability;->readOptString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->pickupInstructions:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/ebay/common/model/inventory/StoreAvailability;->readOptLong(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->fulfillmentTime:Ljava/lang/Long;

    .line 127
    invoke-static {p1}, Lcom/ebay/common/model/inventory/StoreAvailability;->readOptString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->url:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/ebay/common/model/inventory/StoreAvailability;->readOptInt(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->quantity:Ljava/lang/Integer;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->utcOffset:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lcom/ebay/common/model/inventory/StoreAvailability;->readOptParcelable(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    .line 131
    invoke-static {p1}, Lcom/ebay/common/model/inventory/StoreAvailability;->readOptParcelable(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/model/inventory/LocationDetails;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->distance:D

    .line 76
    sget-object v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->IN_STOCK:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->availability:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    .line 78
    iget-object v0, p1, Lcom/ebay/common/model/inventory/LocationDetails;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->locationId:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/ebay/common/model/inventory/LocationDetails;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->name:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/ebay/common/model/inventory/LocationDetails;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    .line 81
    iget-object v0, p1, Lcom/ebay/common/model/inventory/LocationDetails;->phone:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->phone:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/ebay/common/model/inventory/LocationDetails;->pickupInstructions:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->pickupInstructions:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/ebay/common/model/inventory/LocationDetails;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->url:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/ebay/common/model/inventory/LocationDetails;->utcOffset:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->utcOffset:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/ebay/common/model/inventory/LocationDetails;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    .line 86
    iget-object p1, p1, Lcom/ebay/common/model/inventory/LocationDetails;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/address/Address;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->locationId:Ljava/lang/String;

    .line 100
    new-instance p1, Lcom/ebay/common/model/inventory/LocationAddress;

    invoke-direct {p1, p2}, Lcom/ebay/common/model/inventory/LocationAddress;-><init>(Lcom/ebay/nautilus/domain/data/address/Address;)V

    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    .line 102
    sget-object p1, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->IN_STOCK:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->availability:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    .line 104
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/address/Address;->addressFields:Lcom/ebay/nautilus/domain/data/address/AddressFields;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/address/AddressFields;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->name:Ljava/lang/String;

    .line 105
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/address/Address;->addressFields:Lcom/ebay/nautilus/domain/data/address/AddressFields;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/address/AddressFields;->getPhone()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->phone:Ljava/lang/String;

    .line 106
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/address/Address;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->url:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/address/Address;->getPickupInstructions()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->pickupInstructions:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 109
    iput-wide p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->distance:D

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->utcOffset:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    .line 112
    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    const-wide/16 p1, 0x0

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->fulfillmentTime:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->quantity:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 139
    instance-of v0, p1, Lcom/ebay/common/model/inventory/StoreAvailability;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->locationId:Ljava/lang/String;

    check-cast p1, Lcom/ebay/common/model/inventory/StoreAvailability;

    iget-object p1, p1, Lcom/ebay/common/model/inventory/StoreAvailability;->locationId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->locationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->distance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 164
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->availability:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->locationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/model/inventory/LocationAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->phone:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ebay/common/model/inventory/StoreAvailability;->writeOptString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->pickupInstructions:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ebay/common/model/inventory/StoreAvailability;->writeOptString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->fulfillmentTime:Ljava/lang/Long;

    invoke-static {p1, v0}, Lcom/ebay/common/model/inventory/StoreAvailability;->writeOptLong(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 171
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ebay/common/model/inventory/StoreAvailability;->writeOptString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->quantity:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/ebay/common/model/inventory/StoreAvailability;->writeOptInt(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 173
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->utcOffset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-static {p1, v0, p2}, Lcom/ebay/common/model/inventory/StoreAvailability;->writeOptParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 175
    iget-object v0, p0, Lcom/ebay/common/model/inventory/StoreAvailability;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-static {p1, v0, p2}, Lcom/ebay/common/model/inventory/StoreAvailability;->writeOptParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    return-void
.end method
