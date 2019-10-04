.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingAddress"
.end annotation


# instance fields
.field private final itemTransaction:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V
    .locals 0

    .line 1481
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1482
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;->itemTransaction:Lcom/ebay/common/model/OrderItemTransaction;

    return-void
.end method

.method static synthetic access$1700(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)Lcom/ebay/common/model/OrderItemTransaction;
    .locals 0

    .line 1476
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;->itemTransaction:Lcom/ebay/common/model/OrderItemTransaction;

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

    .line 1489
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "CityName"

    .line 1491
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)V

    return-object p1

    :cond_0
    const-string v0, "Street"

    .line 1500
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1501
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)V

    return-object p1

    :cond_1
    const-string v0, "Street1"

    .line 1509
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1510
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$3;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)V

    return-object p1

    :cond_2
    const-string v0, "Street2"

    .line 1518
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1519
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$4;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)V

    return-object p1

    :cond_3
    const-string v0, "Country"

    .line 1527
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1528
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$5;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)V

    return-object p1

    :cond_4
    const-string v0, "CountryName"

    .line 1536
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1537
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$6;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)V

    return-object p1

    :cond_5
    const-string v0, "Name"

    .line 1545
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1546
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$7;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)V

    return-object p1

    :cond_6
    const-string v0, "Phone"

    .line 1554
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1555
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$8;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)V

    return-object p1

    :cond_7
    const-string v0, "PostalCode"

    .line 1563
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1564
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$9;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)V

    return-object p1

    :cond_8
    const-string v0, "StateOrProvince"

    .line 1572
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1573
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$10;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress$10;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingAddress;)V

    return-object p1

    .line 1582
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
