.class public Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;
.super Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;
.source "RespondToBestOfferRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest<",
        "Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final ACTION_COUNTER:Ljava/lang/String; = "Counter"

.field public static final ACTION_DECLINE:Ljava/lang/String; = "Decline"


# instance fields
.field private final action:Ljava/lang/String;

.field private final bestOfferId:J

.field private final counterOfferCode:Ljava/lang/String;

.field private final counterOfferPrice:Ljava/lang/Double;

.field private final counterOfferQuantity:I

.field private final itemId:J

.field private final sellerResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "RespondToBestOffer"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;)V

    .line 34
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->action:Ljava/lang/String;

    .line 35
    iput-wide p3, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->itemId:J

    .line 36
    iput-wide p5, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->bestOfferId:J

    .line 37
    iput-object p7, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->sellerResponse:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->counterOfferPrice:Ljava/lang/Double;

    .line 39
    iput-object p9, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->counterOfferCode:Ljava/lang/String;

    .line 40
    iput p10, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->counterOfferQuantity:I

    return-void
.end method


# virtual methods
.method public buildRequest()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->buildXmlRequest(Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;)[B

    move-result-object v0

    return-object v0
.end method

.method public buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 55
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "RespondToBestOfferRequest"

    .line 56
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 58
    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeErrorLocale(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "Action"

    .line 59
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->action:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "ItemID"

    .line 60
    iget-wide v2, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->itemId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "BestOfferID"

    .line 63
    iget-wide v2, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->bestOfferId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->counterOfferPrice:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "urn:ebay:apis:eBLBaseComponents"

    const-string v3, "CounterOfferPrice"

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->counterOfferPrice:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "currencyID"

    iget-object v6, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->counterOfferCode:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeTagWithAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    iget v0, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->counterOfferQuantity:I

    if-lez v0, :cond_1

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "CounterOfferQuantity"

    .line 74
    iget v2, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->counterOfferQuantity:I

    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->sellerResponse:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "SellerResponse"

    .line 80
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->sellerResponse:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "RespondToBestOfferRequest"

    .line 83
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getResponse()Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;
    .locals 1

    .line 89
    new-instance v0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/ebay/common/net/api/trading/RespondToBestOfferRequest;->getResponse()Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;

    move-result-object v0

    return-object v0
.end method
