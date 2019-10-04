.class final Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShippingAddress"
.end annotation


# instance fields
.field private final shippingAddress:Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 485
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress;->shippingAddress:Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;

    return-void
.end method

.method static synthetic access$300(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress;)Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress;->shippingAddress:Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;

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

    .line 492
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Country"

    .line 494
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress$1;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress;)V

    return-object p1

    :cond_0
    const-string v0, "PostalCode"

    .line 503
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress$2;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress;)V

    return-object p1

    .line 513
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
