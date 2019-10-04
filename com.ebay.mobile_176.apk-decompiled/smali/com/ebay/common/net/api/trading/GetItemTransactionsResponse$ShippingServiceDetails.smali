.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingServiceDetails"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

.field private final tx:Lcom/ebay/common/model/ItemTransaction;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 635
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails;->tx:Lcom/ebay/common/model/ItemTransaction;

    return-void
.end method

.method static synthetic access$2100(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails;)Lcom/ebay/common/model/ItemTransaction;
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails;->tx:Lcom/ebay/common/model/ItemTransaction;

    return-object p0
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

    .line 642
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ShippingService"

    .line 644
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceDetails;)V

    return-object p1

    .line 654
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
