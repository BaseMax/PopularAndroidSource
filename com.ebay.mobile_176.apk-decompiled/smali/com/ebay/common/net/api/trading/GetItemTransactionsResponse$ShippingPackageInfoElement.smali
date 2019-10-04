.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingPackageInfoElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V
    .locals 1

    .line 1159
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1160
    invoke-static {p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    new-instance v0, Lcom/ebay/nautilus/domain/data/ShippingPackageInfo;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/ShippingPackageInfo;-><init>()V

    iput-object v0, p1, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingPackageInfo:Lcom/ebay/nautilus/domain/data/ShippingPackageInfo;

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

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 1167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "StoreID"

    .line 1169
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement;)V

    return-object p1

    :cond_0
    const-string v0, "ShippingTrackingEvent"

    .line 1178
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement;)V

    return-object p1

    :cond_1
    const-string v0, "ScheduledDeliveryTimeMin"

    .line 1188
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1189
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement$3;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement;)V

    return-object p1

    :cond_2
    const-string v0, "ScheduledDeliveryTimeMax"

    .line 1205
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1206
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement$4;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement;)V

    return-object p1

    .line 1223
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
