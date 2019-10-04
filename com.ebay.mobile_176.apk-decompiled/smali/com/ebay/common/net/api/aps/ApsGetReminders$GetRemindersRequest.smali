.class public final Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;
.super Lcom/ebay/nautilus/domain/net/EbaySoaRequest;
.source "ApsGetReminders.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/aps/ApsGetReminders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetRemindersRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbaySoaRequest<",
        "Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# instance fields
.field private final entriesPerPage:I

.field private final includeSelector:Ljava/lang/String;

.field private final nextPageLocator:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, "IPhoneApplicationProcessService"

    const-string v1, "getReminders"

    const/4 v2, 0x1

    .line 501
    invoke-direct {p0, v0, v2, v1}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 502
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->iafToken:Ljava/lang/String;

    const-string/jumbo p1, "x-ebay-soa-security-appname"

    .line 503
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaAppIdHeaderName:Ljava/lang/String;

    .line 504
    iget-object p1, p2, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaGlobalId:Ljava/lang/String;

    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\"http://www.ebay.com/marketplace/mobileor/v1/services/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->getOperationName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaSoapAction:Ljava/lang/String;

    .line 507
    iput-object p3, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->userId:Ljava/lang/String;

    .line 508
    iput-object p4, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->includeSelector:Ljava/lang/String;

    .line 509
    iput p5, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->entriesPerPage:I

    .line 510
    iput-object p6, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->nextPageLocator:Ljava/lang/String;

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

    .line 582
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->buildXmlRequest(Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;)[B

    move-result-object v0

    return-object v0
.end method

.method public buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "soapenv"

    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    .line 551
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/mobileor/v1/services"

    const/4 v1, 0x0

    .line 552
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Envelope"

    .line 553
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Body"

    .line 554
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/mobileor/v1/services"

    const-string v1, "getRemindersRequest"

    .line 555
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/mobileor/v1/services"

    const-string v1, "includeSelector"

    .line 556
    iget-object v2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->includeSelector:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.ebay.com/marketplace/mobileor/v1/services"

    const-string/jumbo v1, "userID"

    .line 558
    iget-object v2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->userId:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->entriesPerPage:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->nextPageLocator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "http://www.ebay.com/marketplace/mobileor/v1/services"

    const-string v1, "page"

    .line 561
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    iget v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->entriesPerPage:I

    if-lez v0, :cond_1

    const-string v0, "http://www.ebay.com/marketplace/mobileor/v1/services"

    const-string v1, "entriesPerPage"

    .line 564
    iget v2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->entriesPerPage:I

    .line 565
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->nextPageLocator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://www.ebay.com/marketplace/mobileor/v1/services"

    const-string v1, "nextPageLocator"

    .line 569
    iget-object v2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->nextPageLocator:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "http://www.ebay.com/marketplace/mobileor/v1/services"

    const-string v1, "page"

    .line 572
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    const-string v0, "http://www.ebay.com/marketplace/mobileor/v1/services"

    const-string v1, "getRemindersRequest"

    .line 574
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Body"

    .line 575
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Envelope"

    .line 576
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 516
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->applicationProcessSvc:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;
    .locals 1

    .line 522
    new-instance v0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;->getResponse()Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    move-result-object v0

    return-object v0
.end method

.method public onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V
    .locals 2

    .line 528
    invoke-super {p0, p1}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V

    const-string/jumbo v0, "x-ebay-api-version"

    const-string v1, "835"

    .line 529
    invoke-interface {p1, v0, v1}, Lcom/ebay/nautilus/kernel/net/IHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
