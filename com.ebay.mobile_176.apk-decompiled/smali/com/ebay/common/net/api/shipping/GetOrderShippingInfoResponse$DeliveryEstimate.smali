.class final Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrderShippingInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeliveryEstimate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;->this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$1;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;)V

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

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "maxDeliveryDate"

    .line 168
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate$1;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;)V

    return-object p1

    :cond_0
    const-string v0, "minDeliveryDate"

    .line 187
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate$2;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;)V

    return-object p1

    .line 206
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
