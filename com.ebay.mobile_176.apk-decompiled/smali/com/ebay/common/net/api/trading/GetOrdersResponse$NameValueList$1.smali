.class Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;

.field final synthetic val$nameValue:Lcom/ebay/nautilus/domain/data/NameValue;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;Lcom/ebay/nautilus/domain/data/NameValue;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList$1;->this$1:Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList;

    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList$1;->val$nameValue:Lcom/ebay/nautilus/domain/data/NameValue;

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

    .line 941
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$NameValueList$1;->val$nameValue:Lcom/ebay/nautilus/domain/data/NameValue;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/NameValue;->setName(Ljava/lang/String;)V

    return-void
.end method