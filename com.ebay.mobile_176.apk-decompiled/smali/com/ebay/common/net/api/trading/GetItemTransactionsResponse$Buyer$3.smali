.class Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$3;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;)V
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$3;->this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1414
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer$3;->this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$Buyer;->this$0:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;->access$600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/ebay/common/model/ItemTransaction;->buyerFeedbackPrivate:Z

    return-void
.end method
