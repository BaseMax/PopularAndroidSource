.class final Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetCategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Category"
.end annotation


# instance fields
.field private final category:Lcom/ebay/nautilus/domain/data/EbayCategory;

.field final synthetic this$2:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;)V
    .locals 1

    .line 80
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;->this$2:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 81
    new-instance v0, Lcom/ebay/nautilus/domain/data/EbayCategory;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/EbayCategory;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 82
    iget-object p1, p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;->this$1:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;->categories:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$300(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)Lcom/ebay/nautilus/domain/data/EbayCategory;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

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

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "CategoryID"

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$1;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_0
    const-string v0, "CategoryParentID"

    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$2;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_1
    const-string v0, "CategoryLevel"

    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$3;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_2
    const-string v0, "CategoryName"

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$4;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_3
    const-string v0, "LeafCategory"

    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$5;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_4
    const-string v0, "AutoPayEnabled"

    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$6;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_5
    const-string v0, "B2BVATEnabled"

    .line 145
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$7;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_6
    const-string v0, "BestOfferEnabled"

    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$8;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_7
    const-string v0, "Expired"

    .line 163
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 164
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$9;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_8
    const-string v0, "IntlAutosFixedCat"

    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$10;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$10;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_9
    const-string v0, "LSD"

    .line 181
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 182
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$11;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$11;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_a
    const-string v0, "ORPA"

    .line 190
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 191
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$12;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$12;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_b
    const-string v0, "ORRA"

    .line 199
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 200
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$13;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$13;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_c
    const-string v0, "SellerGuaranteeEligible"

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 209
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$14;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$14;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    :cond_d
    const-string v0, "Virtual"

    .line 217
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 218
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$15;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$15;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V

    return-object p1

    .line 227
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
