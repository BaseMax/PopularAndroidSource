.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$TransactionArray;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransactionArray"
.end annotation


# instance fields
.field private final order:Lcom/ebay/common/model/EbayOrder;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$TransactionArray;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 388
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$TransactionArray;->order:Lcom/ebay/common/model/EbayOrder;

    .line 389
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$TransactionArray;->order:Lcom/ebay/common/model/EbayOrder;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

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

    .line 396
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Transaction"

    .line 398
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$TransactionArray;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$TransactionArray;->order:Lcom/ebay/common/model/EbayOrder;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V

    return-object p1

    .line 401
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
