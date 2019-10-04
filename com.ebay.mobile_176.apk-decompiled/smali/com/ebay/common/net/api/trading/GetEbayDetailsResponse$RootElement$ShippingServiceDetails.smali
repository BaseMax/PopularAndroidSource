.class final Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingServiceDetails"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 60
    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;->detail:Lcom/ebay/common/model/EbayDetail;

    iget-object p1, p1, Lcom/ebay/common/model/EbayDetail;->shippingServiceDetails:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;

    invoke-direct {v0}, Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 67
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;->detail:Lcom/ebay/common/model/EbayDetail;

    iget-object v0, v0, Lcom/ebay/common/model/EbayDetail;->shippingServiceDetails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    iget-object v1, v1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;->detail:Lcom/ebay/common/model/EbayDetail;

    iget-object v1, v1, Lcom/ebay/common/model/EbayDetail;->shippingServiceDetails:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Description"

    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$1;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$1;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;)V

    return-object p1

    :cond_0
    const-string v1, "ShippingService"

    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$2;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$2;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;)V

    return-object p1

    :cond_1
    const-string v1, "ShippingCarrier"

    .line 89
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$3;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$3;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;)V

    return-object p1

    :cond_2
    const-string v1, "ShippingCategory"

    .line 100
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$4;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails$4;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;)V

    return-object p1

    .line 109
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
