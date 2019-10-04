.class Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "PlaceOfferResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$1;->this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

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

    .line 56
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1$1;->this$1:Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/PlaceOfferResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    iput-object p1, v0, Lcom/ebay/common/model/PlaceOfferResult;->bidTransactionId:Ljava/lang/String;

    return-void
.end method
