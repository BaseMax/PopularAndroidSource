.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingAddress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V
    .locals 0

    .line 1455
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V
    .locals 0

    .line 1455
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

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

    .line 1461
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "CityName"

    .line 1463
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V

    return-object p1

    :cond_0
    const-string v0, "Street"

    .line 1472
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1473
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V

    return-object p1

    :cond_1
    const-string v0, "Street1"

    .line 1481
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1482
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$3;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V

    return-object p1

    :cond_2
    const-string v0, "Street2"

    .line 1490
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1491
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$4;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V

    return-object p1

    :cond_3
    const-string v0, "Country"

    .line 1499
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1500
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$5;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V

    return-object p1

    :cond_4
    const-string v0, "CountryName"

    .line 1508
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1509
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$6;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V

    return-object p1

    :cond_5
    const-string v0, "Name"

    .line 1517
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1518
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$7;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V

    return-object p1

    :cond_6
    const-string v0, "Phone"

    .line 1526
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1527
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$8;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V

    return-object p1

    :cond_7
    const-string v0, "PostalCode"

    .line 1535
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1536
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$9;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V

    return-object p1

    :cond_8
    const-string v0, "StateOrProvince"

    .line 1544
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1545
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$10;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$10;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V

    return-object p1

    .line 1554
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
