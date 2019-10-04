.class public final Lcom/ebay/common/net/api/trading/GetAllBiddersRequest;
.super Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;
.source "GetAllBiddersRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/GetAllBiddersRequest$RequestParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest<",
        "Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "GetAllBidders"


# instance fields
.field public final callMode:Ljava/lang/String;

.field public final includeBiddingSummary:Z

.field public final itemId:J


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersRequest$RequestParams;)V
    .locals 2

    .line 29
    iget-object v0, p1, Lcom/ebay/common/net/api/trading/GetAllBiddersRequest$RequestParams;->tradingApi:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    const-string v1, "GetAllBidders"

    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;)V

    const-string v0, "ViewAll"

    .line 24
    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersRequest;->callMode:Ljava/lang/String;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersRequest;->includeBiddingSummary:Z

    .line 30
    iget-wide v0, p1, Lcom/ebay/common/net/api/trading/GetAllBiddersRequest$RequestParams;->itemId:J

    iput-wide v0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersRequest;->itemId:J

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

    .line 63
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->buildXmlRequest(Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;)[B

    move-result-object v0

    return-object v0
.end method

.method public buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 40
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "GetAllBidders"

    .line 41
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 44
    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeErrorLocale(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "CallMode"

    const-string v2, "ViewAll"

    .line 47
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "IncludeBiddingSummary"

    const/4 v2, 0x1

    .line 51
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "ItemID"

    .line 54
    iget-wide v2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersRequest;->itemId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "GetAllBidders"

    .line 57
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getResponse()Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;
    .locals 1

    .line 69
    new-instance v0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersRequest;->getResponse()Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    move-result-object v0

    return-object v0
.end method
