.class Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$4;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$4;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;

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

    .line 477
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$4;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iput-object p1, v0, Lcom/ebay/common/model/OrderItemTransaction;->orderLineItemId:Ljava/lang/String;

    return-void
.end method
