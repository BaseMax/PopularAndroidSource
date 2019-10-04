.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Payments;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Payments"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

.field private final tx:Lcom/ebay/common/model/ItemTransaction;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Payments;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 420
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Payments;->tx:Lcom/ebay/common/model/ItemTransaction;

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

    const-string v0, "Payment"

    .line 427
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    new-instance p1, Lcom/ebay/common/model/Payment;

    invoke-direct {p1}, Lcom/ebay/common/model/Payment;-><init>()V

    .line 430
    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Payments;->tx:Lcom/ebay/common/model/ItemTransaction;

    iget-object p2, p2, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance p2, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Payments;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p2, p3, p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PaymentElement;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/Payment;)V

    return-object p2

    .line 433
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
