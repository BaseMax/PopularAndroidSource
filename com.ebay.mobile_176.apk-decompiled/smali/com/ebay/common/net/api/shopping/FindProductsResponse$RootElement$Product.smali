.class final Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "FindProductsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Product"
.end annotation


# instance fields
.field private final product:Lcom/ebay/common/model/EbayProduct;

.field final synthetic this$1:Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;)V
    .locals 1

    .line 113
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product;->this$1:Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 114
    new-instance v0, Lcom/ebay/common/model/EbayProduct;

    invoke-direct {v0}, Lcom/ebay/common/model/EbayProduct;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product;->product:Lcom/ebay/common/model/EbayProduct;

    .line 115
    iget-object p1, p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/shopping/FindProductsResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse;->products:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product;->product:Lcom/ebay/common/model/EbayProduct;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$300(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product;)Lcom/ebay/common/model/EbayProduct;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product;->product:Lcom/ebay/common/model/EbayProduct;

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

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Title"

    .line 124
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product$1;-><init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product;)V

    return-object p1

    :cond_0
    const-string v0, "ProductID"

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    new-instance p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product$2;-><init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product;)V

    return-object p1

    :cond_1
    const-string v0, "StockPhotoURL"

    .line 142
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    new-instance p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product$3;-><init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product;)V

    return-object p1

    :cond_2
    const-string v0, "DetailsURL"

    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    new-instance p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product$4;-><init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$Product;)V

    return-object p1

    .line 161
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
