.class Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$4;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetItemTransactionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$4;->this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;

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

    .line 405
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement$4;->this$1:Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;->access$1600(Lcom/ebay/common/net/api/trading/GetItemTransactionsResponse$RefundElement;)Lcom/ebay/common/model/Refund;

    move-result-object v0

    invoke-static {p1}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseXml(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/model/Refund;->refundTime:Ljava/util/Date;

    return-void
.end method