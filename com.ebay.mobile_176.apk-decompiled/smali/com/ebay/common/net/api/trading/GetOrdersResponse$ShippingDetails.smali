.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingDetails"
.end annotation


# instance fields
.field private final currentTx:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1064
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    return-void
.end method

.method static synthetic access$1200(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;)Lcom/ebay/common/model/OrderItemTransaction;
    .locals 0

    .line 1058
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 1071
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ShippingType"

    .line 1073
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;)V

    return-object p1

    :cond_0
    const-string v0, "ThirdPartyCheckout"

    .line 1082
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;)V

    return-object p1

    :cond_1
    const-string v0, "ShipmentTrackingDetails"

    .line 1091
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipmentTrackingDetailsXml;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_2
    const-string v0, "ShippingServiceOptions"

    .line 1093
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1094
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_3
    const-string v0, "InternationalShippingServiceOption"

    .line 1095
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1096
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_4
    const-string v0, "SalesTax"

    .line 1097
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1098
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$SalesTax;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$SalesTax;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    .line 1100
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
