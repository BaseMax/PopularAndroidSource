.class final Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;,
        Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingCostPaidBy;,
        Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsWithin;,
        Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnsAccepted;,
        Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$Refund;,
        Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;,
        Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;)V

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

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Ack"

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string v0, "Timestamp"

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    new-instance p1, Lcom/ebay/nautilus/domain/net/TimestampElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/TimestampElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_1
    const-string v0, "Errors"

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;

    const-string/jumbo p3, "urn:ebay:apis:eBLBaseComponents"

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "ListingStartPriceDetails"

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ListingStartPriceDetails;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$1;)V

    return-object p1

    :cond_3
    const-string v0, "ReturnPolicyDetails"

    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ReturnPolicyDetailsNode;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V

    return-object p1

    :cond_4
    const-string v0, "ShippingServiceDetails"

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    new-instance p1, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement$ShippingServiceDetails;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;)V

    return-object p1

    .line 53
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
