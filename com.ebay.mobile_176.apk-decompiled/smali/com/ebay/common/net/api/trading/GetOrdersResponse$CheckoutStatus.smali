.class final Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetOrdersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetOrdersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckoutStatus"
.end annotation


# instance fields
.field private final order:Lcom/ebay/common/model/EbayOrder;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse;Lcom/ebay/common/model/EbayOrder;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;->this$0:Lcom/ebay/common/net/api/trading/GetOrdersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;->order:Lcom/ebay/common/model/EbayOrder;

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;)Lcom/ebay/common/model/EbayOrder;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;->order:Lcom/ebay/common/model/EbayOrder;

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

    const-string v0, "eBayPaymentStatus"

    .line 235
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus$1;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;)V

    return-object p1

    :cond_0
    const-string v0, "LastModifiedTime"

    .line 244
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus$2;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;)V

    return-object p1

    :cond_1
    const-string v0, "PaymentMethod"

    .line 253
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus$3;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;)V

    return-object p1

    :cond_2
    const-string v0, "Status"

    .line 262
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    new-instance p1, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus$4;-><init>(Lcom/ebay/common/net/api/trading/GetOrdersResponse$CheckoutStatus;)V

    return-object p1

    .line 271
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
