.class Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$3;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$IntegerElement;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;

.field final synthetic val$so:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$3;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;

    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$3;->val$so:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$IntegerElement;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$3;->val$so:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iput p1, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServicePriority:I

    return-void
.end method
