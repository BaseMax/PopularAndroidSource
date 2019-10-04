.class final Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 34
    new-instance v0, Lcom/ebay/common/model/AllBiddersData;

    invoke-direct {v0}, Lcom/ebay/common/model/AllBiddersData;-><init>()V

    iput-object v0, p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;->allBidders:Lcom/ebay/common/model/AllBiddersData;

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

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Ack"

    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string v0, "Timestamp"

    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-instance p1, Lcom/ebay/nautilus/domain/net/TimestampElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/TimestampElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_1
    const-string v0, "Errors"

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    const-string/jumbo p3, "urn:ebay:apis:eBLBaseComponents"

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "Version"

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$1;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;)V

    return-object p1

    :cond_3
    const-string v0, "Build"

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$2;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;)V

    return-object p1

    :cond_4
    const-string v0, "BidArray"

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BidArray;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    iget-object p3, p3, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;->allBidders:Lcom/ebay/common/model/AllBiddersData;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BidArray;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData;)V

    return-object p1

    :cond_5
    const-string v0, "HighBidder"

    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$3;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;)V

    return-object p1

    :cond_6
    const-string v0, "HighestBid "

    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;->allBidders:Lcom/ebay/common/model/AllBiddersData;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/AllBiddersData;->highestBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_7
    const-string v0, "ListingStatus"

    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$4;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;)V

    return-object p1

    .line 91
    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
