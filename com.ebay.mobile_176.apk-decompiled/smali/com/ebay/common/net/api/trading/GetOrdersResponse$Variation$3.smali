.class Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation$3;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation$3;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation;

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

    .line 883
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation$3;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation;->access$800(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Variation;)Lcom/ebay/common/model/OrderItemTransaction;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/model/OrderItemTransaction;->variation:Lcom/ebay/common/model/ItemTransactionVariation;

    iput-object p1, v0, Lcom/ebay/common/model/ItemTransactionVariation;->variationViewItemURL:Ljava/lang/String;

    return-void
.end method
