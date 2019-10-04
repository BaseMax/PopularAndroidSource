.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Buyer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V
    .locals 0

    .line 1379
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

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

    .line 1385
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "BuyerInfo"

    .line 1387
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$BuyerInfo;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$BuyerInfo;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_0
    const-string v0, "UserID"

    .line 1390
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;)V

    return-object p1

    :cond_1
    const-string v0, "FeedbackRatingStar"

    .line 1399
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1400
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;)V

    return-object p1

    :cond_2
    const-string v0, "FeedbackPrivate"

    .line 1408
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1409
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$3;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;)V

    return-object p1

    :cond_3
    const-string v0, "FeedbackScore"

    .line 1417
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1418
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$4;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;)V

    return-object p1

    :cond_4
    const-string v0, "PositiveFeedbackPercent"

    .line 1426
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1427
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$5;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;)V

    return-object p1

    .line 1436
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
