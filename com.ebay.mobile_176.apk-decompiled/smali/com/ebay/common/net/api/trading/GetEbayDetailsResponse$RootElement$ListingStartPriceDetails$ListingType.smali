.class final Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$ListingType;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListingType"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$ListingType;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$1;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$ListingType;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;)V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "Chinese"

    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$ListingType;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;->detail:Lcom/ebay/common/model/EbayDetail;

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$ListingType;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;->access$700(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;)Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/common/model/EbayDetail;->auctionDetails:Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;

    goto :goto_0

    :cond_0
    const-string v0, "FixedPriceItem"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$ListingType;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;->detail:Lcom/ebay/common/model/EbayDetail;

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails$ListingType;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;->access$700(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;)Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/common/model/EbayDetail;->fixedPriceDetails:Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;

    :cond_1
    :goto_0
    return-void
.end method
