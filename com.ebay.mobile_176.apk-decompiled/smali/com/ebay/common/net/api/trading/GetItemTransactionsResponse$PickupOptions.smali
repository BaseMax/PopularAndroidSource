.class final Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PickupOptions"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

.field private final tx:Lcom/ebay/common/model/ItemTransaction;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;Lcom/ebay/common/model/ItemTransaction;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 501
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions;->tx:Lcom/ebay/common/model/ItemTransaction;

    return-void
.end method

.method static synthetic access$1800(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions;)Lcom/ebay/common/model/ItemTransaction;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions;->tx:Lcom/ebay/common/model/ItemTransaction;

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

    .line 508
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions$1;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions;)V

    return-object p1

    :cond_0
    const-string v0, "PickupPriority"

    .line 517
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    new-instance p1, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions$2;-><init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$PickupOptions;)V

    return-object p1

    .line 526
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method