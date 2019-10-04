.class Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "PlaceOfferResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$SuggestedBidValues;
    }
.end annotation


# instance fields
.field highBidder:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

.field final synthetic this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;->this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 147
    new-instance p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;-><init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;)V

    iput-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;->highBidder:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

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

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CurrentPrice"

    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;->this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/PlaceOfferResult;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_0
    const-string v0, "ConvertedCurrentPrice"

    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;->this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/PlaceOfferResult;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_1
    const-string v0, "MinimumToBid"

    .line 128
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;->this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/PlaceOfferResult;->minimumToBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_2
    const-string v0, "HighBidder"

    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;->highBidder:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    return-object p1

    :cond_3
    const-string v0, "ReserveMet"

    .line 132
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    new-instance p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$1;-><init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;)V

    return-object p1

    :cond_4
    const-string v0, "SuggestedBidValues"

    .line 141
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    new-instance p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$SuggestedBidValues;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$SuggestedBidValues;-><init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;)V

    return-object p1

    .line 144
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
