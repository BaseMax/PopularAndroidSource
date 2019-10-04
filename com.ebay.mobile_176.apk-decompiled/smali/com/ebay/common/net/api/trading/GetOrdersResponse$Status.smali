.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Status"
.end annotation


# instance fields
.field private final currentTx:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V
    .locals 0

    .line 1336
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1337
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    return-void
.end method

.method static synthetic access$1500(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;)Lcom/ebay/common/model/OrderItemTransaction;
    .locals 0

    .line 1331
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

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

    .line 1344
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CompleteStatus"

    .line 1346
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;)V

    return-object p1

    :cond_0
    const-string v0, "eBayPaymentStatus"

    .line 1355
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1356
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;)V

    return-object p1

    :cond_1
    const-string v0, "PaymentHoldStatus"

    .line 1364
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1365
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status$3;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;)V

    return-object p1

    :cond_2
    const-string v0, "PaymentMethodUsed"

    .line 1373
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1374
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status$4;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;)V

    return-object p1

    :cond_3
    const-string v0, "CheckoutStatus"

    .line 1382
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1383
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status$5;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;)V

    return-object p1

    .line 1392
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
