.class final Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetCategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;)V

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

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Ack"

    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;->access$100(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Timestamp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance p1, Lcom/ebay/nautilus/domain/net/TimestampElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/TimestampElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_1
    const-string v0, "CategoryArray"

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    new-instance p1, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement$CategoryArray;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$1;)V

    return-object p1

    .line 58
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
