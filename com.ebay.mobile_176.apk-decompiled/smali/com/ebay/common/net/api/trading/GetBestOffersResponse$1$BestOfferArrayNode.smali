.class Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferArrayNode;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetBestOffersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BestOfferArrayNode"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferArrayNode;->this$1:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "BestOffer"

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferArrayNode;->this$1:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;)V

    return-object p1

    .line 58
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method