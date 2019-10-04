.class final Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetFavoriteSellersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FavoriteSeller"
.end annotation


# instance fields
.field private final seller:Lcom/ebay/common/model/SavedSeller;

.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;)V
    .locals 1

    .line 68
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;->this$1:Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 69
    new-instance v0, Lcom/ebay/common/model/SavedSeller;

    invoke-direct {v0}, Lcom/ebay/common/model/SavedSeller;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;->seller:Lcom/ebay/common/model/SavedSeller;

    .line 70
    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse;->sellerList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;->seller:Lcom/ebay/common/model/SavedSeller;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;-><init>(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;)Lcom/ebay/common/model/SavedSeller;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;->seller:Lcom/ebay/common/model/SavedSeller;

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

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UserID"

    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance p1, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller$1;-><init>(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;)V

    return-object p1

    :cond_0
    const-string v0, "StoreName"

    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    new-instance p1, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller$2;-><init>(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement$FavoriteSeller;)V

    return-object p1

    .line 101
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1

    .line 103
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
