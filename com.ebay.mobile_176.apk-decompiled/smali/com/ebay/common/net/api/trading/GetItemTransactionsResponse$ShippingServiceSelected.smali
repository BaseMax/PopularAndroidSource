.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingServiceSelected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V
    .locals 0

    .line 1102
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V
    .locals 0

    .line 1102
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

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

    .line 1108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ShippingService"

    .line 1110
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;)V

    return-object p1

    :cond_0
    const-string v0, "ShippingServiceCost"

    .line 1119
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    .line 1121
    invoke-static {p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p2

    iget-object p2, p2, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_1
    const-string v0, "ShippingServiceAdditionalCost"

    .line 1123
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    .line 1125
    invoke-static {p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p2

    iget-object p2, p2, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceAdditionalCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_2
    const-string v0, "ShippingTimeMin"

    .line 1127
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1128
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;)V

    return-object p1

    :cond_3
    const-string v0, "ShippingTimeMax"

    .line 1136
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1137
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected$3;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;)V

    return-object p1

    :cond_4
    const-string v0, "ImportCharge"

    .line 1145
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1146
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    .line 1147
    invoke-static {p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p2

    iget-object p2, p2, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->importCharge:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_5
    const-string v0, "ShippingPackageInfo"

    .line 1149
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1150
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingPackageInfoElement;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

    return-object p1

    .line 1152
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
