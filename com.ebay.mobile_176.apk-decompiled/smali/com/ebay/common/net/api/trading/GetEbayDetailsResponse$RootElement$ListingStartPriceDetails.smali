.class final Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListingStartPriceDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$ListingType;
    }
.end annotation


# instance fields
.field private final priceDetail:Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;

.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 295
    new-instance p1, Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;

    invoke-direct {p1}, Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;->priceDetail:Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$1;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;)Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;->priceDetail:Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;

    return-object p0
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

    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ListingType"

    .line 303
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$ListingType;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$ListingType;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$1;)V

    return-object p1

    :cond_0
    const-string v0, "StartPrice"

    .line 305
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "currencyID"

    .line 307
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 308
    new-instance p2, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$1;

    invoke-direct {p2, p0, p1}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$1;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;Ljava/lang/String;)V

    return-object p2

    .line 318
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
