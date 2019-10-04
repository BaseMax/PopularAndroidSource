.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NameValueList"
.end annotation


# instance fields
.field final currentTx:Lcom/ebay/common/model/OrderItemTransaction;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/OrderItemTransaction;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 921
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    .line 923
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object p1, p1, Lcom/ebay/common/model/OrderItemTransaction;->variation:Lcom/ebay/common/model/ItemTransactionVariation;

    iget-object p1, p1, Lcom/ebay/common/model/ItemTransactionVariation;->nameValueList:Ljava/util/ArrayList;

    new-instance p2, Lcom/ebay/nautilus/domain/data/NameValue;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/NameValue;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 930
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/OrderItemTransaction;->variation:Lcom/ebay/common/model/ItemTransactionVariation;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransactionVariation;->nameValueList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;->currentTx:Lcom/ebay/common/model/OrderItemTransaction;

    iget-object v1, v1, Lcom/ebay/common/model/OrderItemTransaction;->variation:Lcom/ebay/common/model/ItemTransactionVariation;

    iget-object v1, v1, Lcom/ebay/common/model/ItemTransactionVariation;->nameValueList:Ljava/util/ArrayList;

    .line 934
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 933
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/NameValue;

    const-string v1, "Name"

    .line 935
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList$1;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;Lcom/ebay/nautilus/domain/data/NameValue;)V

    return-object p1

    :cond_0
    const-string v1, "Value"

    .line 944
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList$2;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;Lcom/ebay/nautilus/domain/data/NameValue;)V

    return-object p1

    .line 954
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
