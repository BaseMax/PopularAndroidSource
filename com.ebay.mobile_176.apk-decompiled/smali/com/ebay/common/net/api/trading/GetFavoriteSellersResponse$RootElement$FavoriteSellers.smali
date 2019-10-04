.class final Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSellers;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetFavoriteSellersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FavoriteSellers"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSellers;->this$1:Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSellers;-><init>(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;)V

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

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FavoriteSeller"

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance p1, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSellers;->this$1:Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;-><init>(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$1;)V

    return-object p1

    .line 59
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
