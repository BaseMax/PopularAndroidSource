.class final Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$SelectedShippingDetails;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrderShippingInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectedShippingDetails"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$SelectedShippingDetails;->this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$1;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$SelectedShippingDetails;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;)V

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

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "deliveryEstimate"

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$SelectedShippingDetails;->this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$DeliveryEstimate;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$1;)V

    return-object p1

    .line 156
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method