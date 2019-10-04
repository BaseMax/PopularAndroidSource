.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Buyer"
.end annotation


# instance fields
.field private final currentTx:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V
    .locals 0

    .line 1401
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1402
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    return-void
.end method

.method static synthetic access$1600(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;)Lcom/ebay/common/model/OrderItemTransaction;
    .locals 0

    .line 1396
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    return-object p0
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

    .line 1409
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BuyerInfo"

    .line 1411
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$BuyerInfo;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$BuyerInfo;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_0
    const-string v0, "UserID"

    .line 1413
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1414
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;)V

    return-object p1

    :cond_1
    const-string v0, "FeedbackRatingStar"

    .line 1422
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1423
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;)V

    return-object p1

    :cond_2
    const-string v0, "FeedbackScore"

    .line 1431
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1432
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$3;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;)V

    return-object p1

    :cond_3
    const-string v0, "PositiveFeedbackPercent"

    .line 1440
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1441
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$4;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;)V

    return-object p1

    .line 1450
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
