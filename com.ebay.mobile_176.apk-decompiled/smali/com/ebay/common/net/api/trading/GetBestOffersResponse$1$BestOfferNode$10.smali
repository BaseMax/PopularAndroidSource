.class Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetBestOffersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;
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

    .line 198
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;->this$2:Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode;

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

    const-string v0, "StateOrProvince"

    .line 204
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10$1;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;)V

    return-object p1

    :cond_0
    const-string v0, "CountryName"

    .line 214
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10$2;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;)V

    return-object p1

    :cond_1
    const-string v0, "PostalCode"

    .line 224
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    new-instance p1, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10$3;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1$BestOfferNode$10;)V

    return-object p1

    .line 234
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
