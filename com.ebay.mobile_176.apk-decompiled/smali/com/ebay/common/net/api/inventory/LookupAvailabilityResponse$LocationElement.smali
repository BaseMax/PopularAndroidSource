.class final Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "LookupAvailabilityResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationElement"
.end annotation


# instance fields
.field location:Lcom/ebay/common/model/inventory/StoreAvailability;

.field final synthetic this$0:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;Lcom/ebay/common/model/inventory/StoreAvailability;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;->this$0:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;->location:Lcom/ebay/common/model/inventory/StoreAvailability;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "Distance"

    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$1;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_0
    const-string v0, "Availability"

    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$2;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_1
    const-string v0, "LocationID"

    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$3;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_2
    const-string v0, "Name"

    .line 124
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$4;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_3
    const-string v0, "Address1"

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$5;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_4
    const-string v0, "Address2"

    .line 142
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$6;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_5
    const-string v0, "City"

    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 152
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$7;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_6
    const-string v0, "Region"

    .line 160
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$8;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_7
    const-string v0, "PostalCode"

    .line 169
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 170
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$9;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_8
    const-string v0, "Country"

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 179
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$10;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$10;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_9
    const-string v0, "Latitude"

    .line 187
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 188
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$11;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$11;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_a
    const-string v0, "Longitude"

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 197
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$12;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$12;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_b
    const-string v0, "Phone"

    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 206
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$13;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$13;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_c
    const-string v0, "PickupInstructions"

    .line 214
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 215
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$14;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$14;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_d
    const-string v0, "FulfillmentTime"

    .line 223
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 224
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$15;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$15;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_e
    const-string v0, "URL"

    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 237
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$16;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$16;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_f
    const-string v0, "Quantity"

    .line 245
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 246
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$17;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$17;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_10
    const-string v0, "UTCOffset"

    .line 254
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 255
    new-instance p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$18;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$18;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V

    return-object p1

    :cond_11
    const-string v0, "Hours"

    .line 263
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 265
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;->location:Lcom/ebay/common/model/inventory/StoreAvailability;

    new-instance p2, Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-direct {p2}, Lcom/ebay/common/model/inventory/LocationDetails$Hours;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/inventory/StoreAvailability;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    .line 266
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;->location:Lcom/ebay/common/model/inventory/StoreAvailability;

    iget-object p2, p2, Lcom/ebay/common/model/inventory/StoreAvailability;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;-><init>(Lcom/ebay/common/model/inventory/LocationDetails$Hours;)V

    return-object p1

    :cond_12
    const-string v0, "UTCHours"

    .line 268
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 270
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;->location:Lcom/ebay/common/model/inventory/StoreAvailability;

    new-instance p2, Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-direct {p2}, Lcom/ebay/common/model/inventory/LocationDetails$Hours;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/inventory/StoreAvailability;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    .line 271
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;->location:Lcom/ebay/common/model/inventory/StoreAvailability;

    iget-object p2, p2, Lcom/ebay/common/model/inventory/StoreAvailability;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;-><init>(Lcom/ebay/common/model/inventory/LocationDetails$Hours;)V

    return-object p1

    .line 274
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
