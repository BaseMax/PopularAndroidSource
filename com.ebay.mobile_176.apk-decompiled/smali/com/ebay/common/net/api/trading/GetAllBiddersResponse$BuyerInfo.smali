.class final Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BuyerInfo;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BuyerInfo"
.end annotation


# instance fields
.field private final buyerInfo:Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BuyerInfo;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 463
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BuyerInfo;->buyerInfo:Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;

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

    .line 470
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ShippingAddress"

    .line 472
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BuyerInfo;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BuyerInfo;->buyerInfo:Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;

    iget-object p3, p3, Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;->shippingAddress:Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;)V

    return-object p1

    .line 475
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
