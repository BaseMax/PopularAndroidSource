.class public Lcom/ebay/common/net/api/trading/PlaceOfferRequest;
.super Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;
.source "PlaceOfferRequest.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest<",
        "Lcom/ebay/common/net/api/trading/PlaceOfferResponse;",
        ">;",
        "Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;"
    }
.end annotation


# static fields
.field public static final AVAILABLE_ACTIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final action:Ljava/lang/String;

.field private final bestOfferId:Ljava/lang/String;

.field private final bestOfferTermsToSeller:Ljava/lang/String;

.field private final bid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field private final discount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field private final isUserConsentRequired:Z

.field private final itemId:J

.field private final nameValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private final quantity:I

.field private final requestTrackingPartnerCode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->AVAILABLE_ACTIONS:Ljava/util/ArrayList;

    .line 38
    sget-object v0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->AVAILABLE_ACTIONS:Ljava/util/ArrayList;

    const-string v1, "Bid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->AVAILABLE_ACTIONS:Ljava/util/ArrayList;

    const-string v1, "Purchase"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->AVAILABLE_ACTIONS:Ljava/util/ArrayList;

    const-string v1, "Accept"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->AVAILABLE_ACTIONS:Ljava/util/ArrayList;

    const-string v1, "Counter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->AVAILABLE_ACTIONS:Ljava/util/ArrayList;

    const-string v1, "Decline"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->AVAILABLE_ACTIONS:Ljava/util/ArrayList;

    const-string v1, "Offer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;JLjava/lang/String;Lcom/ebay/nautilus/domain/data/ItemCurrency;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLcom/ebay/nautilus/domain/data/ItemCurrency;)V
    .locals 1
    .param p12    # Lcom/ebay/nautilus/domain/data/ItemCurrency;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;",
            "J",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "I",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            ")V"
        }
    .end annotation

    const-string v0, "PlaceOffer"

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;)V

    .line 51
    iput-wide p2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->itemId:J

    .line 52
    iput-object p4, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->action:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 54
    iput p6, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->quantity:I

    .line 55
    iput-object p7, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->nameValueList:Ljava/util/List;

    .line 56
    iput-boolean p10, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->requestTrackingPartnerCode:Z

    .line 57
    iput-object p8, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bestOfferId:Ljava/lang/String;

    .line 58
    iput-object p9, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bestOfferTermsToSeller:Ljava/lang/String;

    .line 59
    iput-boolean p11, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->isUserConsentRequired:Z

    .line 60
    iput-object p12, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->discount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

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

    .line 66
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->buildXmlRequest(Lcom/ebay/nautilus/domain/net/XmlSerializerHelper$IXmlRequestBuilder;)[B

    move-result-object v0

    return-object v0
.end method

.method public buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 75
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "PlaceOfferRequest"

    .line 76
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 78
    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeErrorLocale(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "ItemID"

    .line 79
    iget-wide v2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->itemId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "Offer"

    .line 83
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "Action"

    .line 85
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->action:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bestOfferId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "BestOfferID"

    .line 88
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bestOfferId:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v2, "urn:ebay:apis:eBLBaseComponents"

    const-string v3, "MaxBid"

    .line 91
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    const-string v5, "currencyID"

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeTagWithAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bestOfferTermsToSeller:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "Message"

    .line 95
    iget-object v2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->bestOfferTermsToSeller:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "Quantity"

    .line 97
    iget v2, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->quantity:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-boolean v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->isUserConsentRequired:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "UserConsent"

    const-string/jumbo v2, "true"

    .line 101
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->discount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->discount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->discount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Discounts"

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 106
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "urn:ebay:apis:eBLBaseComponents"

    const-string v4, "SellerMarketing"

    .line 107
    iget-object v1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->discount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v5, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    const-string v6, "currencyID"

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->discount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v7, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeTagWithAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 109
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "Offer"

    .line 112
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->nameValueList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->nameValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "VariationSpecifics"

    .line 120
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->nameValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/NameValue;

    const-string/jumbo v2, "urn:ebay:apis:eBLBaseComponents"

    const-string v3, "NameValueList"

    .line 124
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "urn:ebay:apis:eBLBaseComponents"

    const-string v3, "Name"

    .line 125
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/NameValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "urn:ebay:apis:eBLBaseComponents"

    const-string v3, "Value"

    .line 126
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/NameValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    const-string v2, "NameValueList"

    .line 127
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "VariationSpecifics"

    .line 130
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "EndUserIP"

    const-string v2, "192.168.0.2"

    .line 135
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->requestTrackingPartnerCode:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "RoverROI"

    .line 140
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "TrackingPartnerCode"

    const-string v2, "eBayTrackingMediaPlex"

    .line 141
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "RoverROI"

    .line 142
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    :cond_7
    invoke-static {}, Lcom/ebay/nautilus/domain/NautilusDomain;->getMachineGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    const-string v2, "MachineGroupValue"

    .line 148
    invoke-static {p1, v1, v2, v0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "MachineTagTypes"

    .line 150
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "TagType"

    const-string v2, "NoTag"

    .line 151
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "MachineTagTypes"

    .line 152
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    const-string v1, "PlaceOfferRequest"

    .line 155
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public getResponse()Lcom/ebay/common/net/api/trading/PlaceOfferResponse;
    .locals 1

    .line 161
    new-instance v0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/ebay/common/net/api/trading/PlaceOfferRequest;->getResponse()Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    move-result-object v0

    return-object v0
.end method
