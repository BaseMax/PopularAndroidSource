.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PickupOptions"
.end annotation


# instance fields
.field private final order:Lcom/ebay/common/model/EbayOrder;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 300
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions;->order:Lcom/ebay/common/model/EbayOrder;

    return-void
.end method

.method static synthetic access$300(Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions;)Lcom/ebay/common/model/EbayOrder;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions;->order:Lcom/ebay/common/model/EbayOrder;

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

    .line 307
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions;)V

    return-object p1

    :cond_0
    const-string v0, "PickupPriority"

    .line 316
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$PickupOptions;)V

    return-object p1

    .line 325
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method