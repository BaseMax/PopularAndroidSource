.class Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$4;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetCategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$4;->this$3:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;

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

    .line 124
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category$4;->this$3:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;->access$300(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray$Category;)Lcom/ebay/nautilus/domain/data/EbayCategory;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    return-void
.end method
