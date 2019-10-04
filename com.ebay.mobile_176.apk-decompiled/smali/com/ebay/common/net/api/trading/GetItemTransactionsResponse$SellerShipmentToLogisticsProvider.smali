.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$SellerShipmentToLogisticsProvider;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SellerShipmentToLogisticsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

.field private final tx:Lcom/ebay/common/model/ItemTransaction;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$SellerShipmentToLogisticsProvider;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 611
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$SellerShipmentToLogisticsProvider;->tx:Lcom/ebay/common/model/ItemTransaction;

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

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 618
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ShipToAddress"

    .line 620
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$SellerShipmentToLogisticsProvider;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_0
    const-string v0, "ShippingServiceDetails"

    .line 622
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$SellerShipmentToLogisticsProvider;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$SellerShipmentToLogisticsProvider;->tx:Lcom/ebay/common/model/ItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V

    return-object p1

    .line 625
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
