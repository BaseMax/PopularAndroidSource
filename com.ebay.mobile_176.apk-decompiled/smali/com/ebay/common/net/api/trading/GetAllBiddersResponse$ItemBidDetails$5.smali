.class Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$5;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$5;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

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

    .line 575
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails$5;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;->access$400(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;)Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;->sellerId:Ljava/lang/String;

    return-void
.end method
