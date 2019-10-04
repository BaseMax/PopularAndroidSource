.class Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "PlaceOfferResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2$1;->this$3:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;

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

    .line 161
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2$1;->this$3:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3$2;->this$2:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$3;->this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    iput-object p1, v0, Lcom/ebay/common/model/PlaceOfferResult;->highBidder:Ljava/lang/String;

    return-void
.end method
