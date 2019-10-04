.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Transaction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V
    .locals 1

    .line 145
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 146
    new-instance v0, Lcom/ebay/common/model/ItemTransaction;

    invoke-direct {v0}, Lcom/ebay/common/model/ItemTransaction;-><init>()V

    invoke-static {p1, v0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$602(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)Lcom/ebay/common/model/ItemTransaction;

    .line 147
    invoke-static {p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$700(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Buyer"

    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_0
    const-string v0, "Status"

    .line 158
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_1
    const-string v0, "ShippingServiceSelected"

    .line 160
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingServiceSelected;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_2
    const-string v0, "ShippingDetails"

    .line 162
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingDetails;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_3
    const-string v0, "ContainingOrder"

    .line 164
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ContainingOrder;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ContainingOrder;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_4
    const-string v0, "Variation"

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Variation;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Variation;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_5
    const-string v0, "TransactionID"

    .line 169
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;)V

    return-object p1

    :cond_6
    const-string v0, "QuantityPurchased"

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;)V

    return-object p1

    :cond_7
    const-string v0, "TransactionPrice"

    .line 187
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p2

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/ItemTransaction;->transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_8
    const-string v0, "ConvertedTransactionPrice"

    .line 190
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 191
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p2

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/ItemTransaction;->convertedTransactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_9
    const-string v0, "AmountPaid"

    .line 193
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 194
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p2

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/ItemTransaction;->amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_a
    const-string v0, "ConvertedAmountPaid"

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 197
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {p2}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p2

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/ItemTransaction;->convertedAmountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_b
    const-string v0, "CreatedDate"

    .line 199
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 200
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$3;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;)V

    return-object p1

    :cond_c
    const-string v0, "OrderLineItemID"

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 209
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$4;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;)V

    return-object p1

    :cond_d
    const-string v0, "IsMultiLegShipping"

    .line 218
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 219
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$5;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;)V

    return-object p1

    :cond_e
    const-string v0, "MultiLegShippingDetails"

    .line 227
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 228
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MultiLegShippingDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MultiLegShippingDetails;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V

    return-object p1

    :cond_f
    const-string v0, "ShippedTime"

    .line 229
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 230
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$6;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;)V

    return-object p1

    :cond_10
    const-string v0, "PickupDetails"

    .line 238
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 239
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupDetails;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V

    return-object p1

    :cond_11
    const-string v0, "PickupMethodSelected"

    .line 240
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 241
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V

    return-object p1

    :cond_12
    const-string v0, "PaymentHoldDetails"

    .line 242
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 243
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentHoldDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentHoldDetails;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_13
    const-string v0, "MonetaryDetails"

    .line 244
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 245
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V

    return-object p1

    :cond_14
    const-string v0, "UnpaidItem"

    .line 246
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 248
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object p1

    new-instance p2, Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    invoke-direct {p2}, Lcom/ebay/common/model/ItemTransaction$UnpaidItem;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/ItemTransaction;->unpaidItem:Lcom/ebay/common/model/ItemTransaction$UnpaidItem;

    .line 249
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$UnpaidItem;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$UnpaidItem;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V

    return-object p1

    :cond_15
    const-string v0, "PaidTime"

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 252
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$7;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;)V

    return-object p1

    :cond_16
    const-string v0, "BuyerCheckoutMessage"

    .line 267
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 268
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction$8;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Transaction;)V

    return-object p1

    .line 277
    :cond_17
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
