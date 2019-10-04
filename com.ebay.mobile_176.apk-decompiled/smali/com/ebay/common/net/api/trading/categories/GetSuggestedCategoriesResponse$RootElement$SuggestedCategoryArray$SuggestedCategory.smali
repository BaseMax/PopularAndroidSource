.class final Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetSuggestedCategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuggestedCategory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category;
    }
.end annotation


# instance fields
.field private final suggestedCategory:Lcom/ebay/common/model/EbaySuggestedCategory;

.field final synthetic this$2:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray;)V
    .locals 1

    .line 69
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;->this$2:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 70
    new-instance v0, Lcom/ebay/common/model/EbaySuggestedCategory;

    invoke-direct {v0}, Lcom/ebay/common/model/EbaySuggestedCategory;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;->suggestedCategory:Lcom/ebay/common/model/EbaySuggestedCategory;

    .line 71
    iget-object p1, p1, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray;->this$1:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse;->suggestions:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;->suggestedCategory:Lcom/ebay/common/model/EbaySuggestedCategory;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$300(Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;)Lcom/ebay/common/model/EbaySuggestedCategory;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;->suggestedCategory:Lcom/ebay/common/model/EbaySuggestedCategory;

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

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Category"

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category;-><init>(Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$1;)V

    return-object p1

    :cond_0
    const-string v0, "PercentItemFound"

    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$1;-><init>(Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;)V

    return-object p1

    .line 92
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
