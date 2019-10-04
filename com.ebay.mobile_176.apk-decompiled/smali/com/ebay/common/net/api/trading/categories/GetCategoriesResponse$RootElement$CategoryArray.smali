.class final Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetCategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CategoryArray"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;->this$1:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;)V

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

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Category"

    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;)V

    return-object p1

    .line 72
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
