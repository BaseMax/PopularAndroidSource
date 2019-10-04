.class Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin$2;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin;

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

    .line 247
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin$2;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin;->access$400(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin;)Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;->token:Ljava/lang/String;

    return-void
.end method
