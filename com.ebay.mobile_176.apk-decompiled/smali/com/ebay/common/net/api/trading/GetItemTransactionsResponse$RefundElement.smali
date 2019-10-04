.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RefundElement"
.end annotation


# instance fields
.field private final refund:Lcom/ebay/common/model/Refund;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/Refund;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;->refund:Lcom/ebay/common/model/Refund;

    return-void
.end method

.method static synthetic access$1600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;)Lcom/ebay/common/model/Refund;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;->refund:Lcom/ebay/common/model/Refund;

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

    const-string v0, "RefundStatus"

    .line 372
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;)V

    return-object p1

    :cond_0
    const-string v0, "RefundType"

    .line 381
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;)V

    return-object p1

    :cond_1
    const-string v0, "RefundTo"

    .line 390
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$3;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;)V

    return-object p1

    :cond_2
    const-string v0, "RefundTime"

    .line 399
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$4;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;)V

    return-object p1

    :cond_3
    const-string v0, "RefundAmount"

    .line 408
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 409
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;->refund:Lcom/ebay/common/model/Refund;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/Refund;->refundAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    .line 410
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
