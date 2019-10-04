.class Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$3;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;

.field final synthetic val$ssd:Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$3;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;

    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$3;->val$ssd:Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;

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

    .line 95
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$3;->val$ssd:Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;

    iput-object p1, v0, Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;->shippingCarrier:Ljava/lang/String;

    return-void
.end method
