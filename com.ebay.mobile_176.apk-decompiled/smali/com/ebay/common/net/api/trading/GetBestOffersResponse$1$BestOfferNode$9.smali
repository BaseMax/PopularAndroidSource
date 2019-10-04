.class Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetBestOffersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9;->this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;

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

    const-string v0, "FeedbackScore"

    .line 167
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9$1;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9;)V

    return-object p1

    :cond_0
    const-string v0, "UserID"

    .line 177
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9$2;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9;)V

    return-object p1

    :cond_1
    const-string v0, "ShippingAddress"

    .line 187
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9;->this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;

    invoke-static {p1}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->access$000(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)Lcom/ebay/nautilus/domain/data/BestOffer;

    move-result-object p1

    new-instance p2, Lcom/ebay/nautilus/domain/data/address/Address;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/address/Address;-><init>()V

    iput-object p2, p1, Lcom/ebay/nautilus/domain/data/BestOffer;->buyerAddress:Lcom/ebay/nautilus/domain/data/address/Address;

    .line 190
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$9;->this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->buyerShippingAddress:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    return-object p1

    .line 193
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
