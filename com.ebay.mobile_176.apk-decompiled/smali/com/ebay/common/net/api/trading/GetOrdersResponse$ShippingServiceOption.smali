.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingServiceOption"
.end annotation


# instance fields
.field private final currentTx:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V
    .locals 0

    .line 1258
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1259
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    .line 1260
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object p1, p1, Lcom/ebay/common/model/OrderItemTransaction;->shippingOptions:Ljava/util/ArrayList;

    new-instance p2, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 1267
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/OrderItemTransaction;->shippingOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object v1, v1, Lcom/ebay/common/model/OrderItemTransaction;->shippingOptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    const-string/jumbo v1, "urn:ebay:apis:eBLBaseComponents"

    .line 1268
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "ExpeditedService"

    .line 1270
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$1;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;)V

    return-object p1

    :cond_0
    const-string v1, "ShippingInsuranceCost"

    .line 1279
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1280
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    new-instance p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p2, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingInsuranceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p3, "currencyID"

    invoke-direct {p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_1
    const-string v1, "ShippingServiceAdditionalCost"

    .line 1281
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1282
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    new-instance p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p2, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceAdditionalCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p3, "currencyID"

    invoke-direct {p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_2
    const-string v1, "ShippingServiceCost"

    .line 1284
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1285
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    new-instance p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p2, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p3, "currencyID"

    invoke-direct {p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_3
    const-string v1, "ShippingService"

    .line 1286
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1287
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$2;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;)V

    return-object p1

    :cond_4
    const-string v1, "ShippingServicePriority"

    .line 1295
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1296
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$3;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$3;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;)V

    return-object p1

    :cond_5
    const-string v1, "ShippingSurcharge"

    .line 1304
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1305
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    new-instance p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p2, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingSurcharge:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p3, "currencyID"

    invoke-direct {p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_6
    const-string v1, "ShippingTimeMax"

    .line 1306
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1307
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$4;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$4;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;)V

    return-object p1

    :cond_7
    const-string v1, "ShippingTimeMin"

    .line 1315
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1316
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$5;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption$5;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceOption;Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;)V

    return-object p1

    :cond_8
    const-string v1, "ImportCharge"

    .line 1324
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1325
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    new-instance p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p2, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->importCharge:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p3, "currencyID"

    invoke-direct {p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    .line 1327
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
