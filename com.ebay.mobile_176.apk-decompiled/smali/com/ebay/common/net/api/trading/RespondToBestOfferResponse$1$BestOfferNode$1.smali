.class Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$BestOfferNode$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "RespondToBestOfferResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$BestOfferNode;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$BestOfferNode;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$BestOfferNode;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$BestOfferNode$1;->this$2:Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$BestOfferNode;

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

    .line 76
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$BestOfferNode$1;->this$2:Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$BestOfferNode;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1$BestOfferNode;->this$1:Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1;->this$0:Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;

    invoke-static {v0, p1}, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;->access$002(Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
