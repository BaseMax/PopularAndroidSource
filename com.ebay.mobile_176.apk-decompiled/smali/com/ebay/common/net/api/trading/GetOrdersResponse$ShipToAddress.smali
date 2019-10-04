.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShipToAddress"
.end annotation


# instance fields
.field private final currentTx:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 704
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    return-void
.end method

.method static synthetic access$700(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)Lcom/ebay/common/model/OrderItemTransaction;
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

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

    .line 711
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "AddressId"

    .line 713
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_0
    const-string v0, "AddressOwner"

    .line 722
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_1
    const-string v0, "AddressUsage"

    .line 731
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$3;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_2
    const-string v0, "CityName"

    .line 740
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 741
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$4;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_3
    const-string v0, "Country"

    .line 749
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 750
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$5;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_4
    const-string v0, "CountryName"

    .line 758
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 759
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$6;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_5
    const-string v0, "ExternalAddressId"

    .line 767
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 768
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$7;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_6
    const-string v0, "Name"

    .line 776
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 777
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$8;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_7
    const-string v0, "Phone"

    .line 785
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 786
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$9;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_8
    const-string v0, "PostalCode"

    .line 794
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 795
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$10;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$10;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_9
    const-string v0, "ReferenceID"

    .line 803
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 804
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$11;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$11;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_a
    const-string v0, "StateOrProvince"

    .line 812
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 813
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$12;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$12;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_b
    const-string v0, "Street1"

    .line 821
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 822
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$13;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$13;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    :cond_c
    const-string v0, "Street2"

    .line 830
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 831
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$14;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$14;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V

    return-object p1

    .line 840
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
