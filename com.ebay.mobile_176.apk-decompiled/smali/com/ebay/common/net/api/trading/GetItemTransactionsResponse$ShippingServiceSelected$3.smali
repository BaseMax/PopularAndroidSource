.class Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected$3;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$IntegerElement;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected$3;->this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;

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

    .line 1142
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected$3;->this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iput p1, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingTimeMax:I

    return-void
.end method
