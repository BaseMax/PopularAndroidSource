.class final Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponse;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShipmentTrackingResponse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponse;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponse;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;)V

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

    const-string v0, "ack"

    .line 101
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponse;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string v0, "Timestamp"

    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance p1, Lcom/ebay/nautilus/domain/net/TimestampElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponse;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/TimestampElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_1
    const-string v0, "Errors"

    .line 105
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponse;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    const-string/jumbo p3, "urn:ebay:apis:eBLBaseComponents"

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string/jumbo v0, "shipmentTrackingResponseInfo"

    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponseInfo;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponse;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ShipmentTrackingResponseInfo;-><init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$1;)V

    return-object p1

    .line 109
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
