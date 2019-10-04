.class Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item$2;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item;

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

    .line 628
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item$2;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item;->access$600(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item;)Lcom/ebay/common/model/OrderItemTransaction;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/model/OrderItemTransaction;->site:Ljava/lang/String;

    return-void
.end method
