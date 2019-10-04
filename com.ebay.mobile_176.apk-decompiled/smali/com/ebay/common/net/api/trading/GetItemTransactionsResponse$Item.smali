.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Item;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Item"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Item;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Item;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

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

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Seller"

    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Seller;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Item;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Seller;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_0
    const-string v0, "PaymentMethods"

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Item$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Item$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Item;)V

    return-object p1

    .line 101
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
