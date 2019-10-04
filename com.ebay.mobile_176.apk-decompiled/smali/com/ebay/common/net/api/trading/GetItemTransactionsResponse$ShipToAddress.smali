.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShipToAddress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V
    .locals 0

    .line 658
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

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

    .line 664
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "AddressId"

    .line 666
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_0
    const-string v0, "AddressOwner"

    .line 675
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_1
    const-string v0, "AddressUsage"

    .line 684
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$3;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_2
    const-string v0, "CityName"

    .line 693
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$4;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_3
    const-string v0, "Country"

    .line 702
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 703
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$5;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_4
    const-string v0, "CountryName"

    .line 711
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 712
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$6;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_5
    const-string v0, "ExternalAddressId"

    .line 720
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 721
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$7;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_6
    const-string v0, "Name"

    .line 729
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 730
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$8;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_7
    const-string v0, "Phone"

    .line 738
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 739
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$9;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_8
    const-string v0, "PostalCode"

    .line 747
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 748
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$10;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$10;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_9
    const-string v0, "ReferenceID"

    .line 756
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 757
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$11;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$11;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_a
    const-string v0, "StateOrProvince"

    .line 765
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 766
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$12;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$12;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_b
    const-string v0, "Street1"

    .line 774
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 775
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$13;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$13;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    :cond_c
    const-string v0, "Street2"

    .line 783
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 784
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$14;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress$14;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShipToAddress;)V

    return-object p1

    .line 793
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
