.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PickupMethodSelected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

.field private final tx:Lcom/ebay/common/model/ItemTransaction;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 536
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;->tx:Lcom/ebay/common/model/ItemTransaction;

    return-void
.end method

.method static synthetic access$1900(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;)Lcom/ebay/common/model/ItemTransaction;
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;->tx:Lcom/ebay/common/model/ItemTransaction;

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

    const-string v0, "PickupMethod"

    .line 543
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;)V

    return-object p1

    :cond_0
    const-string v0, "PickupStoreID"

    .line 552
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;)V

    return-object p1

    :cond_1
    const-string v0, "PickupStatus"

    .line 561
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected$3;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;)V

    return-object p1

    :cond_2
    const-string v0, "MerchantPickupCode"

    .line 570
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected$4;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupMethodSelected;)V

    return-object p1

    .line 579
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
