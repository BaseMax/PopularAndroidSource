.class final Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrderShippingInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransactionInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;->this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "http://www.ebay.com/marketplace/shipping/v1/services"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "selectedShippingDetails"

    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$SelectedShippingDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;->this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$SelectedShippingDetails;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$1;)V

    return-object p1

    :cond_0
    const-string v0, "itemShippingService"

    .line 105
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;->this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;->info:Lcom/ebay/common/model/OrderShippingInfo;

    iget-object v0, v0, Lcom/ebay/common/model/OrderShippingInfo;->estimatedMaxDeliveryDate:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 106
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$itemShippingService;

    iget-object p2, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;->this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$itemShippingService;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$1;)V

    return-object p1

    :cond_1
    const-string/jumbo v0, "shippedDate"

    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo$1;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;)V

    return-object p1

    :cond_2
    const-string v0, "actualDeliveryDate"

    .line 116
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    new-instance p1, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo$2;-><init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;)V

    return-object p1

    .line 126
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
