.class Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$1;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;

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

    .line 719
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress$1;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;->access$700(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShipToAddress;)Lcom/ebay/common/model/OrderItemTransaction;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/model/OrderItemTransaction;->multiLegAddressId:Ljava/lang/String;

    return-void
.end method