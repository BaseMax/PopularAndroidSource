.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$Refunds;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Refunds"
.end annotation


# instance fields
.field private final order:Lcom/ebay/common/model/EbayOrder;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Refunds;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 526
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Refunds;->order:Lcom/ebay/common/model/EbayOrder;

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

    const-string v0, "Refund"

    .line 533
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    new-instance p1, Lcom/ebay/common/model/Refund;

    invoke-direct {p1}, Lcom/ebay/common/model/Refund;-><init>()V

    .line 536
    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Refunds;->order:Lcom/ebay/common/model/EbayOrder;

    iget-object p2, p2, Lcom/ebay/common/model/EbayOrder;->refunds:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance p2, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RefundElement;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Refunds;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p2, p3, p1}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RefundElement;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/Refund;)V

    return-object p2

    .line 539
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
