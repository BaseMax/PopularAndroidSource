.class Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "PlaceOfferResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/PlaceOfferResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$RoverRoiResultElement;,
        Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$BestOfferNode;
    }
.end annotation


# instance fields
.field sellingStatus:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 104
    new-instance p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;-><init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;)V

    iput-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->sellingStatus:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

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

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Ack"

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string v0, "Timestamp"

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance p1, Lcom/ebay/nautilus/domain/net/TimestampElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/TimestampElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_1
    const-string v0, "Errors"

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    new-instance p2, Lcom/ebay/nautilus/domain/net/ErrorElement;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    invoke-direct {p2, p3, p1}, Lcom/ebay/nautilus/domain/net/ErrorElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p2

    :cond_2
    const-string v0, "SellingStatus"

    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->sellingStatus:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    return-object p1

    :cond_3
    const-string v0, "BidTransactionID"

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    new-instance p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$1;-><init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;)V

    return-object p1

    :cond_4
    const-string v0, "TransactionID"

    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    new-instance p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$2;-><init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;)V

    return-object p1

    :cond_5
    const-string v0, "RoverROIResult"

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    new-instance p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$RoverRoiResultElement;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$RoverRoiResultElement;-><init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;)V

    return-object p1

    :cond_6
    const-string v0, "BestOffer"

    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    new-instance p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$BestOfferNode;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$BestOfferNode;-><init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;)V

    return-object p1

    .line 73
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
