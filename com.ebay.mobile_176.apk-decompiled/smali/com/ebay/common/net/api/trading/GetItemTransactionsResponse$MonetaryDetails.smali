.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MonetaryDetails"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

.field private final tx:Lcom/ebay/common/model/ItemTransaction;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 287
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;->tx:Lcom/ebay/common/model/ItemTransaction;

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

    const-string v0, "Refunds"

    .line 294
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;->tx:Lcom/ebay/common/model/ItemTransaction;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/ItemTransaction;->refunds:Ljava/util/ArrayList;

    .line 297
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Refunds;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;->tx:Lcom/ebay/common/model/ItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Refunds;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V

    return-object p1

    :cond_0
    const-string v0, "Payments"

    .line 299
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;->tx:Lcom/ebay/common/model/ItemTransaction;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/ItemTransaction;->payments:Ljava/util/ArrayList;

    .line 302
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Payments;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$MonetaryDetails;->tx:Lcom/ebay/common/model/ItemTransaction;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Payments;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V

    return-object p1

    .line 304
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
