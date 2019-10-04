.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PaymentElement"
.end annotation


# instance fields
.field private final payment:Lcom/ebay/common/model/Payment;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/Payment;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 443
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;->payment:Lcom/ebay/common/model/Payment;

    return-void
.end method

.method static synthetic access$1700(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;)Lcom/ebay/common/model/Payment;
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;->payment:Lcom/ebay/common/model/Payment;

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

    const-string v0, "PaymentStatus"

    .line 450
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;)V

    return-object p1

    :cond_0
    const-string v0, "PaymentTime"

    .line 459
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;)V

    return-object p1

    :cond_1
    const-string v0, "PaymentAmount"

    .line 468
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;->payment:Lcom/ebay/common/model/Payment;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/Payment;->amount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_2
    const-string v0, "FeeOrCreditAmount"

    .line 470
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;->payment:Lcom/ebay/common/model/Payment;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/Payment;->feeOrCreditAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    .line 472
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
