.class Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category$4;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetSuggestedCategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category$4;->this$4:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category$4;->this$4:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$Category;->this$3:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;->access$300(Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;)Lcom/ebay/common/model/EbaySuggestedCategory;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/model/EbaySuggestedCategory;->parentNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
