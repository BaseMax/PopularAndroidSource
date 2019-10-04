.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingServiceSelected"
.end annotation


# instance fields
.field private final currentTx:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V
    .locals 0

    .line 1200
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1201
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    return-void
.end method

.method static synthetic access$1400(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;)Lcom/ebay/common/model/OrderItemTransaction;
    .locals 0

    .line 1195
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

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

    .line 1208
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ShippingService"

    .line 1210
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;)V

    return-object p1

    :cond_0
    const-string v0, "ShippingServiceCost"

    .line 1219
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object p2, p2, Lcom/ebay/common/model/OrderItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_1
    const-string v0, "ShippingServiceAdditionalCost"

    .line 1223
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1224
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object p2, p2, Lcom/ebay/common/model/OrderItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceAdditionalCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_2
    const-string v0, "ShippingTimeMin"

    .line 1227
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1228
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;)V

    return-object p1

    :cond_3
    const-string v0, "ShippingTimeMax"

    .line 1236
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1237
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected$3;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;)V

    return-object p1

    :cond_4
    const-string v0, "ImportCharge"

    .line 1245
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1246
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object p2, p2, Lcom/ebay/common/model/OrderItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->importCharge:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    .line 1249
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
