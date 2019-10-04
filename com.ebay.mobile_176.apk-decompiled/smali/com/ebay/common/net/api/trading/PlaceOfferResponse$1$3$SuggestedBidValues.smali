.class Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$SuggestedBidValues;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "PlaceOfferResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestedBidValues"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$SuggestedBidValues;->this$2:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;

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

    const-string v0, "BidValue"

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$SuggestedBidValues;->this$2:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;->this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    iget-object p1, p1, Lcom/ebay/common/model/PlaceOfferResult;->suggestedBidValues:Ljava/util/List;

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$SuggestedBidValues;->this$2:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;->this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/PlaceOfferResult;->suggestedBidValues:Ljava/util/List;

    .line 180
    :cond_0
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    new-instance p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    const-string p3, "currencyID"

    invoke-direct {p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 182
    iget-object p3, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$SuggestedBidValues;->this$2:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;

    iget-object p3, p3, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;->this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

    iget-object p3, p3, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    iget-object p3, p3, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    iget-object p3, p3, Lcom/ebay/common/model/PlaceOfferResult;->suggestedBidValues:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 186
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
