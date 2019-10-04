.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation


# instance fields
.field private final response:Lcom/ebay/nautilus/domain/net/EbayResponse;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

.field private final timestamp:Lcom/ebay/nautilus/domain/net/TimestampElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/nautilus/domain/net/EbayResponse;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    .line 47
    new-instance p1, Lcom/ebay/nautilus/domain/net/TimestampElement;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/TimestampElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;->timestamp:Lcom/ebay/nautilus/domain/net/TimestampElement;

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

    const-string v0, "Ack"

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string v0, "Timestamp"

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;->timestamp:Lcom/ebay/nautilus/domain/net/TimestampElement;

    return-object p1

    :cond_1
    const-string v0, "Errors"

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    const-string/jumbo p3, "urn:ebay:apis:eBLBaseComponents"

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "OrderArray"

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse;->orders:Ljava/util/List;

    .line 63
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$OrderArray;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RootElement;->response:Lcom/ebay/nautilus/domain/net/EbayResponse;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$OrderArray;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    .line 65
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
