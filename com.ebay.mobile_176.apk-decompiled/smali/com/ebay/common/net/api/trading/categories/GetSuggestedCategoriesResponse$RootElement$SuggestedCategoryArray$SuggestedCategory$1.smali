.class Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$LongElement;
.source "GetSuggestedCategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$1;->this$3:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$LongElement;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory$1;->this$3:Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;->access$300(Lcom/ebay/common/net/api/trading/categories/GetSuggestedCategoriesResponse$RootElement$SuggestedCategoryArray$SuggestedCategory;)Lcom/ebay/common/model/EbaySuggestedCategory;

    move-result-object v0

    iput-wide p1, v0, Lcom/ebay/common/model/EbaySuggestedCategory;->percentItemFound:J

    return-void
.end method
