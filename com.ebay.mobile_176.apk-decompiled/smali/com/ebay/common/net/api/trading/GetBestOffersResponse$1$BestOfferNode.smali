.class Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetBestOffersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BestOfferNode"
.end annotation


# instance fields
.field buyerNode:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

.field buyerShippingAddress:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

.field private final offer:Lcom/ebay/nautilus/domain/data/BestOffer;

.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;)V
    .locals 1

    .line 67
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->this$1:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 64
    new-instance v0, Lcom/ebay/nautilus/domain/data/BestOffer;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/BestOffer;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->offer:Lcom/ebay/nautilus/domain/data/BestOffer;

    .line 160
    new-instance v0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9;

    invoke-direct {v0, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->buyerNode:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    .line 197
    new-instance v0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;

    invoke-direct {v0, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->buyerShippingAddress:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    .line 68
    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;->this$0:Lcom/ebay/common/net/api/trading/GetBestOffersResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse;->offers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->offer:Lcom/ebay/nautilus/domain/data/BestOffer;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)Lcom/ebay/nautilus/domain/data/BestOffer;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->offer:Lcom/ebay/nautilus/domain/data/BestOffer;

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

    const-string v0, "BestOfferCodeType"

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$1;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V

    return-object p1

    :cond_0
    const-string v0, "BestOfferID"

    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$2;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V

    return-object p1

    :cond_1
    const-string v0, "Buyer"

    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->buyerNode:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    return-object p1

    :cond_2
    const-string v0, "BuyerMessage"

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$3;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V

    return-object p1

    :cond_3
    const-string v0, "SellerMessage"

    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$4;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V

    return-object p1

    :cond_4
    const-string v0, "ExpirationTime"

    .line 113
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$5;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V

    return-object p1

    :cond_5
    const-string v0, "Price"

    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "currencyID"

    .line 125
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance p2, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$6;

    invoke-direct {p2, p0, p1}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$6;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;Ljava/lang/String;)V

    return-object p2

    :cond_6
    const-string v0, "Quantity"

    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$7;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V

    return-object p1

    :cond_7
    const-string v0, "Status"

    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 148
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$8;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V

    return-object p1

    .line 157
    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
