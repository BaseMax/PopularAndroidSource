.class Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$6;
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

.field final synthetic val$currencyCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$6;->this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;

    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$6;->val$currencyCode:Ljava/lang/String;

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

    .line 131
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$6;->this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->access$000(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)Lcom/ebay/nautilus/domain/data/BestOffer;

    move-result-object v0

    new-instance v1, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$6;->val$currencyCode:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->currentOffer:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    return-void
.end method
