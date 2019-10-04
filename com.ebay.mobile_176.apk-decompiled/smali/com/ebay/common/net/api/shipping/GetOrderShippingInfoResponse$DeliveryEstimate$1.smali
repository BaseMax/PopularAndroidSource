.class Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetOrderShippingInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate$1;->this$1:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;

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

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate$1;->this$1:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;

    iget-object v0, v0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;->this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;->info:Lcom/ebay/common/model/OrderShippingInfo;

    invoke-static {p1}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseDateOnly(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMaxDeliveryDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 181
    :catch_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Error parsing date"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
