.class final Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "FindProductsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DomainHistogram"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram;->this$1:Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;Lcom/ebay/common/net/api/shopping/FindProductsResponse$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram;-><init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;)V

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

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Domain"

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance p1, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;-><init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram;)V

    return-object p1

    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method