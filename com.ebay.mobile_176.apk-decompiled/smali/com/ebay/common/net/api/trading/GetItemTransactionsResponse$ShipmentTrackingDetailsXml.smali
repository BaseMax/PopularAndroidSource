.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShipmentTrackingDetailsXml"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V
    .locals 2

    .line 1066
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1067
    new-instance v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    invoke-static {p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;-><init>(Lcom/ebay/common/model/ItemTransaction;)V

    .line 1068
    invoke-static {p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 1075
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    .line 1078
    invoke-static {v1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object v1

    iget-object v1, v1, Lcom/ebay/common/model/ItemTransaction;->shipmentTrackingDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;

    const-string v1, "ShipmentTrackingNumber"

    .line 1079
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1080
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml$1;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;)V

    return-object p1

    :cond_0
    const-string v1, "ShippingCarrierUsed"

    .line 1088
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1089
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml$2;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;)V

    return-object p1

    .line 1098
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
