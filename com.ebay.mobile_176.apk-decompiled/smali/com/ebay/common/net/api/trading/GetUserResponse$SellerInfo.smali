.class final Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetUserResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SellerInfo"
.end annotation


# instance fields
.field private final data:Lcom/ebay/common/model/UserDetail$SellerInfo;


# direct methods
.method constructor <init>(Lcom/ebay/common/model/UserDetail$SellerInfo;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;->data:Lcom/ebay/common/model/UserDetail$SellerInfo;

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;)Lcom/ebay/common/model/UserDetail$SellerInfo;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;->data:Lcom/ebay/common/model/UserDetail$SellerInfo;

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

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SellerBusinessType"

    .line 181
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo$1;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;)V

    return-object p1

    :cond_0
    const-string v0, "PaymentMethod"

    .line 190
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo$2;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;)V

    return-object p1

    :cond_1
    const-string v0, "SellerPaymentAddress"

    .line 199
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;->data:Lcom/ebay/common/model/UserDetail$SellerInfo;

    new-instance p2, Lcom/ebay/common/model/UserDetail$Address;

    invoke-direct {p2}, Lcom/ebay/common/model/UserDetail$Address;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/UserDetail$SellerInfo;->sellerPaymentAddress:Lcom/ebay/common/model/UserDetail$Address;

    .line 202
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;->data:Lcom/ebay/common/model/UserDetail$SellerInfo;

    iget-object p2, p2, Lcom/ebay/common/model/UserDetail$SellerInfo;->sellerPaymentAddress:Lcom/ebay/common/model/UserDetail$Address;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address;-><init>(Lcom/ebay/common/model/UserDetail$Address;)V

    return-object p1

    .line 205
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
