.class public final Lcom/ebay/common/model/inventory/LocationAddress;
.super Lcom/ebay/common/model/ParcelableHelper;
.source "LocationAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/inventory/LocationAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address1:Ljava/lang/String;

.field public address2:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field public postalCode:Ljava/lang/String;

.field public region:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/ebay/common/model/inventory/LocationAddress$1;

    invoke-direct {v0}, Lcom/ebay/common/model/inventory/LocationAddress$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/inventory/LocationAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address1:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/ebay/common/model/inventory/LocationAddress;->readOptString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address2:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->city:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->region:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/ebay/common/model/inventory/LocationAddress;->readOptString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->postalCode:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->country:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->latitude:D

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->longitude:D

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/address/Address;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    .line 27
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/address/Address;->addressFields:Lcom/ebay/nautilus/domain/data/address/AddressFields;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/address/AddressFields;->getStreet1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address1:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/address/Address;->addressFields:Lcom/ebay/nautilus/domain/data/address/AddressFields;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/address/AddressFields;->getStreet2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address2:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/address/Address;->addressFields:Lcom/ebay/nautilus/domain/data/address/AddressFields;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/address/AddressFields;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->city:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/address/Address;->addressFields:Lcom/ebay/nautilus/domain/data/address/AddressFields;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/address/AddressFields;->getStateOrProvince()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->region:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/address/Address;->addressFields:Lcom/ebay/nautilus/domain/data/address/AddressFields;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/address/AddressFields;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->postalCode:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/address/Address;->addressFields:Lcom/ebay/nautilus/domain/data/address/AddressFields;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/address/AddressFields;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->country:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/address/Address;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->latitude:D

    .line 34
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/address/Address;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->longitude:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInStorePickupAddress()Ljava/lang/String;
    .locals 10

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    iget-object v4, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address2:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address2:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    const-string v1, "\n"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/ebay/common/model/inventory/LocationAddress;->city:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 107
    iget-object v5, p0, Lcom/ebay/common/model/inventory/LocationAddress;->region:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 108
    iget-object v6, p0, Lcom/ebay/common/model/inventory/LocationAddress;->postalCode:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v6, :cond_12

    :cond_3
    if-eqz v1, :cond_4

    const-string v1, "\n"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->country:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 118
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->country:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x833

    if-eq v8, v9, :cond_7

    const/16 v3, 0x865

    if-eq v8, v3, :cond_6

    const/16 v3, 0x881

    if-eq v8, v3, :cond_5

    goto :goto_1

    :cond_5
    const-string v3, "DE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_6
    const-string v2, "CH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v2, 0x2

    goto :goto_2

    :cond_7
    const-string v2, "AT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    if-eqz v4, :cond_d

    .line 141
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_0
    if-eqz v6, :cond_9

    .line 124
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->postalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v4, :cond_b

    if-eqz v6, :cond_a

    const-string v1, " "

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_a
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    if-eqz v5, :cond_12

    if-eqz v4, :cond_c

    const-string v1, ", "

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_c
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    :goto_3
    if-eqz v5, :cond_f

    if-eqz v4, :cond_e

    const-string v1, ", "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_e
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-eqz v6, :cond_12

    if-nez v4, :cond_10

    if-eqz v5, :cond_11

    :cond_10
    const-string v1, " "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_11
    iget-object v1, p0, Lcom/ebay/common/model/inventory/LocationAddress;->postalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_12
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 58
    iget-object p2, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/ebay/common/model/inventory/LocationAddress;->address2:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ebay/common/model/inventory/LocationAddress;->writeOptString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/ebay/common/model/inventory/LocationAddress;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/ebay/common/model/inventory/LocationAddress;->region:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/ebay/common/model/inventory/LocationAddress;->postalCode:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ebay/common/model/inventory/LocationAddress;->writeOptString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/ebay/common/model/inventory/LocationAddress;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 65
    iget-wide v0, p0, Lcom/ebay/common/model/inventory/LocationAddress;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
