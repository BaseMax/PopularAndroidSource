.class final Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Refund"
.end annotation


# instance fields
.field private final option:Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;

.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V
    .locals 1

    .line 146
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;->this$1:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 143
    new-instance v0, Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;

    invoke-direct {v0}, Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;->option:Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;

    .line 147
    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;->detail:Lcom/ebay/common/model/EbayDetail;

    iget-object p1, p1, Lcom/ebay/common/model/EbayDetail;->returnPolicyDetails:Lcom/ebay/common/model/EbayDetail$ReturnPolicyDetails;

    iget-object p1, p1, Lcom/ebay/common/model/EbayDetail$ReturnPolicyDetails;->refund:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;->option:Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;)Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;->option:Lcom/ebay/common/model/EbayDetail$ReturnPolicyOption;

    return-object p0
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

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Description"

    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund$1;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;)V

    return-object p1

    :cond_0
    const-string v0, "RefundOption"

    .line 165
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund$2;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;)V

    return-object p1

    .line 175
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
