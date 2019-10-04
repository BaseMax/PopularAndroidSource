.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShipmentTrackingDetailsXml"
.end annotation


# instance fields
.field private final currentTx:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1159
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    .line 1160
    new-instance p1, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2}, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;-><init>(Lcom/ebay/common/model/ItemTransaction;)V

    .line 1161
    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object p2, p2, Lcom/ebay/common/model/OrderItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 1168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/OrderItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object v1, v1, Lcom/ebay/common/model/OrderItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    .line 1171
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    const-string v1, "ShipmentTrackingNumber"

    .line 1172
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1173
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml$1;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;)V

    return-object p1

    :cond_0
    const-string v1, "ShippingCarrierUsed"

    .line 1181
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1182
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml$2;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;)V

    return-object p1

    .line 1191
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
