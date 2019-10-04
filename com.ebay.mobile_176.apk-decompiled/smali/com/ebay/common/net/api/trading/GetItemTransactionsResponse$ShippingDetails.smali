.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingDetails"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V
    .locals 0

    .line 981
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

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

    .line 987
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ShippingType"

    .line 989
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;)V

    return-object p1

    :cond_0
    const-string v0, "ThirdPartyCheckout"

    .line 998
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;)V

    return-object p1

    :cond_1
    const-string v0, "ShipmentTrackingDetails"

    .line 1007
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1008
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipmentTrackingDetailsXml;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

    return-object p1

    :cond_2
    const-string v0, "ShippingServiceOptions"

    .line 1009
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1010
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceOption;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceOption;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

    return-object p1

    :cond_3
    const-string v0, "InternationalShippingServiceOption"

    .line 1011
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1012
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceOption;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceOption;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

    return-object p1

    :cond_4
    const-string v0, "SalesTax"

    .line 1013
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1014
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$SalesTax;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$SalesTax;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    .line 1016
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
