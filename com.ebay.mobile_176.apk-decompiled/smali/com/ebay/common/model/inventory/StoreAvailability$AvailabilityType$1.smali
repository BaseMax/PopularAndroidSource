.class final Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType$1;
.super Ljava/lang/Object;
.source "StoreAvailability.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;
    .locals 0

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->valueOf(Ljava/lang/String;)Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;
    .locals 0

    .line 29
    new-array p1, p1, [Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType$1;->newArray(I)[Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    move-result-object p1

    return-object p1
.end method
