.class public Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;
.super Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;
.source "LeaveFeedbackRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest<",
        "Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# instance fields
.field private final parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;)V
    .locals 1

    const-string v0, "LeaveFeedback"

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    return-void
.end method

.method private buildRatingBlock(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p4, :cond_0

    const-string v0, "ItemRatingDetails"

    .line 33
    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "Rating"

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, v0, p4}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "RatingDetail"

    .line 36
    invoke-static {p1, p2, p4, p3}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "ItemRatingDetails"

    .line 38
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
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

    .line 25
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->buildXmlRequest(Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;)[B

    move-result-object v0

    return-object v0
.end method

.method public buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 48
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "LeaveFeedback"

    .line 49
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 51
    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeErrorLocale(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "UserID"

    .line 53
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->originator:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "CommentType"

    .line 54
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->feedbackType:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "ItemID"

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget-wide v3, v3, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->itemId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "CommentText"

    .line 56
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->comment:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "ItemArrivedWithinEDDType"

    .line 57
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->eddType:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget v0, v0, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->communicationRating:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget v0, v0, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->descriptionRating:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget v0, v0, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->shipCostRating:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget v0, v0, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->shipSpeedRating:I

    if-lez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "SellerItemRatingDetailArray"

    .line 64
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "Communication"

    .line 66
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget v2, v2, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->communicationRating:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->buildRatingBlock(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "ItemAsDescribed"

    .line 67
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget v2, v2, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->descriptionRating:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->buildRatingBlock(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "ShippingAndHandlingCharges"

    .line 68
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget v2, v2, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->shipCostRating:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->buildRatingBlock(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "ShippingTime"

    .line 69
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget v2, v2, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->shipSpeedRating:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->buildRatingBlock(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "SellerItemRatingDetailArray"

    .line 71
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "TargetUser"

    .line 73
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->targetUser:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "TransactionID"

    .line 74
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->parameters:Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/trading/LeaveFeedbackParameters;->transactionId:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "LeaveFeedback"

    .line 76
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getResponse()Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse;
    .locals 1

    .line 82
    new-instance v0, Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/ebay/common/net/api/trading/LeaveFeedbackRequest;->getResponse()Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse;

    move-result-object v0

    return-object v0
.end method
