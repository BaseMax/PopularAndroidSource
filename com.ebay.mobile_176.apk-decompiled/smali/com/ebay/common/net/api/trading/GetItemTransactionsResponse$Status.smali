.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Status"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V
    .locals 0

    .line 1303
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$1;)V
    .locals 0

    .line 1303
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)V

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

    .line 1309
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "CompleteStatus"

    .line 1311
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;)V

    return-object p1

    :cond_0
    const-string v0, "eBayPaymentStatus"

    .line 1320
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1321
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;)V

    return-object p1

    :cond_1
    const-string v0, "PaymentHoldStatus"

    .line 1329
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$3;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;)V

    return-object p1

    :cond_2
    const-string v0, "PaymentMethodUsed"

    .line 1338
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1339
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$4;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;)V

    return-object p1

    :cond_3
    const-string v0, "CheckoutStatus"

    .line 1347
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1348
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$5;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;)V

    return-object p1

    :cond_4
    const-string v0, "InquiryStatus"

    .line 1356
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1357
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$6;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;)V

    return-object p1

    :cond_5
    const-string v0, "ReturnStatus"

    .line 1365
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1366
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status$7;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Status;)V

    return-object p1

    .line 1375
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
