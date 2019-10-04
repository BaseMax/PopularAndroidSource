.class Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RespondToBestOfferResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$BestOfferNode;,
        Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$RespondToBestOffer;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

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

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Ack"

    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string v0, "Timestamp"

    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance p1, Lcom/ebay/nautilus/domain/net/TimestampElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/TimestampElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_1
    const-string v0, "Errors"

    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    new-instance p2, Lcom/ebay/nautilus/domain/net/ErrorElement;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;

    invoke-direct {p2, p3, p1}, Lcom/ebay/nautilus/domain/net/ErrorElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p2

    :cond_2
    const-string v0, "RespondToBestOffer"

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    new-instance p1, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$RespondToBestOffer;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$RespondToBestOffer;-><init>(Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1;)V

    return-object p1

    .line 50
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
