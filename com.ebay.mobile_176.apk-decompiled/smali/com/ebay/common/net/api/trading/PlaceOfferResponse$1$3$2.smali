.class Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "PlaceOfferResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;->this$2:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;

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

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UserID"

    .line 155
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance p1, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2$1;-><init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;)V

    return-object p1

    .line 165
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
