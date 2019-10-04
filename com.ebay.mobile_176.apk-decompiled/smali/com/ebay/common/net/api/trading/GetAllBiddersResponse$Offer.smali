.class final Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Offer"
.end annotation


# instance fields
.field private final offer:Lcom/ebay/common/model/AllBiddersData$Offer;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 124
    new-instance p1, Lcom/ebay/common/model/AllBiddersData$Offer;

    invoke-direct {p1}, Lcom/ebay/common/model/AllBiddersData$Offer;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->offer:Lcom/ebay/common/model/AllBiddersData$Offer;

    .line 125
    iget-object p1, p2, Lcom/ebay/common/model/AllBiddersData;->offers:Ljava/util/List;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->offer:Lcom/ebay/common/model/AllBiddersData$Offer;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;)Lcom/ebay/common/model/AllBiddersData$Offer;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->offer:Lcom/ebay/common/model/AllBiddersData$Offer;

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

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Action"

    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$1;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;)V

    return-object p1

    :cond_0
    const-string v0, "ConvertedPrice"

    .line 143
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->offer:Lcom/ebay/common/model/AllBiddersData$Offer;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/AllBiddersData$Offer;->convertedPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_1
    const-string v0, "Currency"

    .line 145
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$2;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;)V

    return-object p1

    :cond_2
    const-string v0, "HighestBid"

    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->offer:Lcom/ebay/common/model/AllBiddersData$Offer;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/AllBiddersData$Offer;->highestBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_3
    const-string v0, "MaxBid"

    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->offer:Lcom/ebay/common/model/AllBiddersData$Offer;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/AllBiddersData$Offer;->maxBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_4
    const-string v0, "MyMaxBid"

    .line 158
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->offer:Lcom/ebay/common/model/AllBiddersData$Offer;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/AllBiddersData$Offer;->myMaxBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_5
    const-string v0, "Quantity"

    .line 160
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$3;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;)V

    return-object p1

    :cond_6
    const-string v0, "SecondChanceEnabled"

    .line 169
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$4;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;)V

    return-object p1

    :cond_7
    const-string v0, "SiteCurrency"

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 179
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$5;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;)V

    return-object p1

    :cond_8
    const-string v0, "TimeBid"

    .line 187
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 188
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$6;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;)V

    return-object p1

    :cond_9
    const-string v0, "User"

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 197
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->offer:Lcom/ebay/common/model/AllBiddersData$Offer;

    iget-object p3, p3, Lcom/ebay/common/model/AllBiddersData$Offer;->user:Lcom/ebay/common/model/AllBiddersData$Offer$User;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData$Offer$User;)V

    return-object p1

    .line 200
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
