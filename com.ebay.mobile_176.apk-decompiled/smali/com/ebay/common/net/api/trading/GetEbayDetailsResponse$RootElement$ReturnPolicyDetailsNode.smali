.class final Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReturnPolicyDetailsNode"
.end annotation


# instance fields
.field private final returnPolicy:Lcom/ebay/common/model/EbayDetail$ReturnPolicyDetails;

.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V
    .locals 1

    .line 118
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 115
    new-instance v0, Lcom/ebay/common/model/EbayDetail$ReturnPolicyDetails;

    invoke-direct {v0}, Lcom/ebay/common/model/EbayDetail$ReturnPolicyDetails;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;->returnPolicy:Lcom/ebay/common/model/EbayDetail$ReturnPolicyDetails;

    .line 119
    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;->detail:Lcom/ebay/common/model/EbayDetail;

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;->returnPolicy:Lcom/ebay/common/model/EbayDetail$ReturnPolicyDetails;

    iput-object v0, p1, Lcom/ebay/common/model/EbayDetail;->returnPolicyDetails:Lcom/ebay/common/model/EbayDetail$ReturnPolicyDetails;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Refund"

    .line 128
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V

    return-object p1

    :cond_0
    const-string v0, "ReturnsAccepted"

    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsAccepted;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsAccepted;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V

    return-object p1

    :cond_1
    const-string v0, "ReturnsWithin"

    .line 132
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V

    return-object p1

    :cond_2
    const-string v0, "ShippingCostPaidBy"

    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V

    return-object p1

    .line 137
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
