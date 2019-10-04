.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Transaction"
.end annotation


# instance fields
.field final currentTx:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 411
    new-instance p1, Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1}, Lcom/ebay/common/model/OrderItemTransaction;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    .line 412
    iget-object p1, p2, Lcom/ebay/common/model/EbayOrder;->transactions:Ljava/util/List;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 419
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Buyer"

    .line 421
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_0
    const-string v0, "Status"

    .line 423
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Status;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_1
    const-string v0, "ShippingServiceSelected"

    .line 425
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingServiceSelected;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_2
    const-string v0, "ShippingDetails"

    .line 427
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ShippingDetails;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_3
    const-string v0, "ContainingOrder"

    .line 429
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$ContainingOrder;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_4
    const-string v0, "Variation"

    .line 431
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 432
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_5
    const-string v0, "TransactionID"

    .line 433
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 434
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;)V

    return-object p1

    :cond_6
    const-string v0, "QuantityPurchased"

    .line 442
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 443
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;)V

    return-object p1

    :cond_7
    const-string v0, "TransactionPrice"

    .line 451
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 452
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/OrderItemTransaction;->transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_8
    const-string v0, "ConvertedTransactionPrice"

    .line 454
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 455
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/OrderItemTransaction;->convertedTransactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_9
    const-string v0, "AmountPaid"

    .line 457
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 458
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/OrderItemTransaction;->amountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_a
    const-string v0, "ConvertedAmountPaid"

    .line 459
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 460
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/OrderItemTransaction;->convertedAmountPaid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_b
    const-string v0, "CreatedDate"

    .line 462
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 463
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$3;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;)V

    return-object p1

    :cond_c
    const-string v0, "OrderLineItemID"

    .line 471
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 472
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$4;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;)V

    return-object p1

    :cond_d
    const-string v0, "IsMultiLegShipping"

    .line 480
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 481
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction$5;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;)V

    return-object p1

    :cond_e
    const-string v0, "MultiLegShippingDetails"

    .line 489
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 490
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$MultiLegShippingDetails;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$MultiLegShippingDetails;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    :cond_f
    const-string v0, "Item"

    .line 491
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 492
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Transaction;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Item;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V

    return-object p1

    .line 494
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
