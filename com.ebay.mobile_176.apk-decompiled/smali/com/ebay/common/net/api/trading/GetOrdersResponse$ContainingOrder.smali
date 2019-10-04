.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContainingOrder"
.end annotation


# instance fields
.field private final currentTx:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 964
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    return-void
.end method

.method static synthetic access$900(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;)Lcom/ebay/common/model/OrderItemTransaction;
    .locals 0

    .line 958
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

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

    .line 971
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OrderID"

    .line 973
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;)V

    return-object p1

    :cond_0
    const-string v0, "OrderStatus"

    .line 982
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 983
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;)V

    return-object p1

    :cond_1
    const-string v0, "PaymentHoldDetails"

    .line 991
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PaymentHoldDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PaymentHoldDetails;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    .line 994
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
