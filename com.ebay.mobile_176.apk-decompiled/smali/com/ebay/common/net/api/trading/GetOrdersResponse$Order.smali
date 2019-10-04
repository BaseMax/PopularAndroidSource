.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Order"
.end annotation


# instance fields
.field private final order:Lcom/ebay/common/model/EbayOrder;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;)Lcom/ebay/common/model/EbayOrder;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

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

    const-string v0, "OrderID"

    .line 105
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;)V

    return-object p1

    :cond_0
    const-string v0, "OrderStatus"

    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;)V

    return-object p1

    :cond_1
    const-string v0, "AdjustmentAmount"

    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/EbayOrder;->adjustmentAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_2
    const-string v0, "AmountPaid"

    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/EbayOrder;->amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_3
    const-string v0, "AmountSaved"

    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/EbayOrder;->amountSaved:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_4
    const-string v0, "PaymentMethods"

    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$3;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;)V

    return-object p1

    :cond_5
    const-string v0, "SellerEmail"

    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$4;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;)V

    return-object p1

    :cond_6
    const-string v0, "Subtotal"

    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/EbayOrder;->subtotal:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_7
    const-string v0, "Total"

    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/EbayOrder;->total:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_8
    const-string v0, "TransactionArray"

    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 152
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$TransactionArray;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$TransactionArray;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V

    return-object p1

    :cond_9
    const-string v0, "CreatedTime"

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 154
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$5;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;)V

    return-object p1

    :cond_a
    const-string v0, "PickupDetails"

    .line 162
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupDetails;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V

    return-object p1

    :cond_b
    const-string v0, "PickupMethodSelected"

    .line 164
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 165
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupMethodSelected;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupMethodSelected;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V

    return-object p1

    :cond_c
    const-string v0, "PaymentHoldStatus"

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 167
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$6;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;)V

    return-object p1

    :cond_d
    const-string v0, "ShippingServiceSelectedOrder"

    .line 175
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 176
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelectedOrder;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelectedOrder;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V

    return-object p1

    :cond_e
    const-string v0, "CheckoutStatus"

    .line 177
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 178
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V

    return-object p1

    :cond_f
    const-string v0, "MonetaryDetails"

    .line 179
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 180
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$MonetaryDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;->order:Lcom/ebay/common/model/EbayOrder;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$MonetaryDetails;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V

    return-object p1

    :cond_10
    const-string v0, "PaidTime"

    .line 181
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 182
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order$7;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Order;)V

    return-object p1

    .line 190
    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
