.class Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy$1;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy;

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

    .line 276
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy$1;->this$2:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy;->access$500(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy;)Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;->description:Ljava/lang/String;

    return-void
.end method