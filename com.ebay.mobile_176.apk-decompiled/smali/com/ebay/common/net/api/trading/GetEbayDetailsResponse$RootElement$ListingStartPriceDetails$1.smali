.class Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;

.field final synthetic val$currencyCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$1;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;

    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$1;->val$currencyCode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$1;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;->access$700(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;)Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;

    move-result-object v0

    new-instance v1, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$1;->val$currencyCode:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;->startPrice:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    return-void
.end method
