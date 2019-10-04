.class final Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemBidDetails"
.end annotation


# instance fields
.field private final itemBidDetail:Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 523
    new-instance p1, Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;

    invoke-direct {p1}, Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;->itemBidDetail:Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;

    .line 524
    iget-object p1, p2, Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;->itemBidDetails:Ljava/util/List;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;->itemBidDetail:Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$400(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;)Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;->itemBidDetail:Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;

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

    .line 531
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BidCount"

    .line 533
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$1;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;)V

    return-object p1

    :cond_0
    const-string v0, "CategoryID"

    .line 542
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$2;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;)V

    return-object p1

    :cond_1
    const-string v0, "ItemID"

    .line 551
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$3;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;)V

    return-object p1

    :cond_2
    const-string v0, "LastBidTime"

    .line 560
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$4;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;)V

    return-object p1

    :cond_3
    const-string v0, "SellerID"

    .line 569
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 570
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$5;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;)V

    return-object p1

    .line 579
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
