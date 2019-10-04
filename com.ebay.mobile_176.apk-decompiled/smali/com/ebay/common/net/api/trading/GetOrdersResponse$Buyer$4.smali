.class Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$4;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$FloatElement;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$4;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$FloatElement;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1446
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer$4;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;->access$1600(Lcom/ebay/common/net/api/trading/GetOrdersResponse$Buyer;)Lcom/ebay/common/model/OrderItemTransaction;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/model/OrderItemTransaction;->buyerPositiveFeedbackPercent:Ljava/lang/Float;

    return-void
.end method
