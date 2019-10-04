.class final Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetLocationDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation


# instance fields
.field private final response:Lcom/ebay/nautilus/domain/net/EbayResponse;

.field final synthetic this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;Lcom/ebay/nautilus/domain/net/EbayResponse;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "Ack"

    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string v0, "Errors"

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    const-string p3, ""

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string v0, "NoLocationFound"

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->access$002(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;Z)Z

    :cond_2
    const-string v0, "LocationID"

    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->access$002(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;Z)Z

    .line 54
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->locationDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    new-instance p2, Lcom/ebay/common/model/inventory/LocationAddress;

    invoke-direct {p2}, Lcom/ebay/common/model/inventory/LocationAddress;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/inventory/LocationDetails;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    .line 55
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$1;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_3
    const-string v0, "Name"

    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$2;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_4
    const-string v0, "Address1"

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$3;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_5
    const-string v0, "Address2"

    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$4;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_6
    const-string v0, "City"

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$5;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_7
    const-string v0, "Region"

    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 101
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$6;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_8
    const-string v0, "PostalCode"

    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$7;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_9
    const-string v0, "Country"

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 119
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$8;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_a
    const-string v0, "PickupInstructions"

    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$9;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_b
    const-string v0, "Hours"

    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 138
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->locationDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    new-instance p2, Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-direct {p2}, Lcom/ebay/common/model/inventory/LocationDetails$Hours;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/inventory/LocationDetails;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    .line 139
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    iget-object p2, p2, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->locationDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object p2, p2, Lcom/ebay/common/model/inventory/LocationDetails;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;-><init>(Lcom/ebay/common/model/inventory/LocationDetails$Hours;)V

    return-object p1

    :cond_c
    const-string v0, "UTCHours"

    .line 141
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->locationDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    new-instance p2, Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-direct {p2}, Lcom/ebay/common/model/inventory/LocationDetails$Hours;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/inventory/LocationDetails;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    .line 144
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    iget-object p2, p2, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->locationDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object p2, p2, Lcom/ebay/common/model/inventory/LocationDetails;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;-><init>(Lcom/ebay/common/model/inventory/LocationDetails$Hours;)V

    return-object p1

    :cond_d
    const-string v0, "Latitude"

    .line 146
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 147
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$10;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$10;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_e
    const-string v0, "Longitude"

    .line 155
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 156
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$11;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$11;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_f
    const-string v0, "Phone"

    .line 164
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 165
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$12;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$12;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_10
    const-string v0, "URL"

    .line 173
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 174
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$13;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$13;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    :cond_11
    const-string v0, "UTCOffset"

    .line 182
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 183
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$14;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$14;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V

    return-object p1

    .line 191
    :cond_12
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
