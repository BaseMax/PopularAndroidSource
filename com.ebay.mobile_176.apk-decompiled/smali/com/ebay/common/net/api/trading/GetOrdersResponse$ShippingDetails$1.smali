.class Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails$1;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;

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

    .line 1079
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails$1;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;->access$1200(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;)Lcom/ebay/common/model/OrderItemTransaction;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/model/OrderItemTransaction;->shippingType:Ljava/lang/String;

    return-void
.end method