.class Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetOrderShippingInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo$2;->this$1:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;

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

    .line 122
    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo$2;->this$1:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;

    iget-object v0, v0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse$TransactionInfo;->this$0:Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/shipping/GetOrderShippingInfoResponse;->info:Lcom/ebay/common/model/OrderShippingInfo;

    invoke-static {p1}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseXml(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/model/OrderShippingInfo;->actualDeliveryDate:Ljava/util/Date;

    return-void
.end method
