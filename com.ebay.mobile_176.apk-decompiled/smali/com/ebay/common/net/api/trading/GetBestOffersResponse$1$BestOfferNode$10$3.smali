.class Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10$3;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetBestOffersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10$3;->this$3:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;

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

    .line 230
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10$3;->this$3:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;->this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;->access$000(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;)Lcom/ebay/nautilus/domain/data/BestOffer;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->buyerAddress:Lcom/ebay/nautilus/domain/data/address/Address;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/address/Address;->addressFields:Lcom/ebay/nautilus/domain/data/address/AddressFields;

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/address/AddressFields;->postalCode:Ljava/lang/String;

    return-void
.end method
