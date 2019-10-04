.class Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$LongElement;
.source "FindProductsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain$1;->this$3:Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$LongElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected setValue(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain$1;->this$3:Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;

    invoke-static {v0}, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;->access$200(Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement$DomainHistogram$Domain;)Lcom/ebay/common/model/EbayProductDomain;

    move-result-object v0

    iput-wide p1, v0, Lcom/ebay/common/model/EbayProductDomain;->count:J

    return-void
.end method
