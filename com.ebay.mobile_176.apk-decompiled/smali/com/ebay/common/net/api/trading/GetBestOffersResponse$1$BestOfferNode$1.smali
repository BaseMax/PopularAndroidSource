.class Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetBestOffersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$1;->this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;

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

    .line 80
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$1;->this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->access$000(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)Lcom/ebay/nautilus/domain/data/BestOffer;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    return-void
.end method
