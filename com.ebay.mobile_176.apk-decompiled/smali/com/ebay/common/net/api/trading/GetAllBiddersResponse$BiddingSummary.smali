.class final Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BiddingSummary"
.end annotation


# instance fields
.field private final biddingSummary:Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 387
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;->biddingSummary:Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;)Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;->biddingSummary:Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;

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

    .line 394
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BidActivityWithSeller"

    .line 396
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$1;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;)V

    return-object p1

    :cond_0
    const-string v0, "BidRetractions"

    .line 405
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$2;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;)V

    return-object p1

    :cond_1
    const-string v0, "BidsToUniqueCategories"

    .line 414
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$3;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;)V

    return-object p1

    :cond_2
    const-string v0, "BidsToUniqueSellers"

    .line 423
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$4;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;)V

    return-object p1

    :cond_3
    const-string v0, "ItemBidDetails"

    .line 432
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 433
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;->biddingSummary:Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;)V

    return-object p1

    :cond_4
    const-string v0, "SummaryDays"

    .line 434
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 435
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$5;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;)V

    return-object p1

    :cond_5
    const-string v0, "TotalBids"

    .line 443
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$6;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;)V

    return-object p1

    .line 453
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
