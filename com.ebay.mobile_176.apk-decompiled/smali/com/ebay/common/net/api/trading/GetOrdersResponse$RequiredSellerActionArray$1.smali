.class Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray;)V
    .locals 0

    .line 1046
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray$1;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray$1;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray;->access$1100(Lcom/ebay/common/net/api/trading/GetOrdersResponse$RequiredSellerActionArray;)Lcom/ebay/common/model/OrderItemTransaction;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/model/OrderItemTransaction;->requiredSellerActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
