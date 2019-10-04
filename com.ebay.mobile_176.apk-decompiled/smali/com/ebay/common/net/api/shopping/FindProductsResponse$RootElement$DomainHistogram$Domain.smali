.class public final Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "FindProductsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Domain"
.end annotation


# instance fields
.field private final domain:Lcom/ebay/common/model/EbayProductDomain;

.field final synthetic this$2:Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram;)V
    .locals 1

    .line 73
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;->this$2:Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 74
    new-instance v0, Lcom/ebay/common/model/EbayProductDomain;

    invoke-direct {v0}, Lcom/ebay/common/model/EbayProductDomain;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;->domain:Lcom/ebay/common/model/EbayProductDomain;

    .line 75
    iget-object p1, p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram;->this$1:Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;

    iget-object p1, p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/shopping/FindProductsResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse;->domainHistogram:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;->domain:Lcom/ebay/common/model/EbayProductDomain;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;)Lcom/ebay/common/model/EbayProductDomain;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;->domain:Lcom/ebay/common/model/EbayProductDomain;

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

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Count"

    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain$1;-><init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;)V

    return-object p1

    :cond_0
    const-string v0, "Name"

    .line 93
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    new-instance p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain$2;-><init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;)V

    return-object p1

    .line 103
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
