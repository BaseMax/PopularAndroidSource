.class Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$9;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;)V
    .locals 0

    .line 1537
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$9;->this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;

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

    .line 1541
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress$9;->this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$ShippingAddress;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/model/ItemTransaction;->buyerPostalCode:Ljava/lang/String;

    return-void
.end method
