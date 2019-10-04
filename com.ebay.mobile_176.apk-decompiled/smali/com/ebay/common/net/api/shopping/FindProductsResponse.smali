.class public final Lcom/ebay/common/net/api/shopping/FindProductsResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "FindProductsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;
    }
.end annotation


# instance fields
.field public final domainHistogram:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/EbayProductDomain;",
            ">;"
        }
    .end annotation
.end field

.field public final products:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/EbayProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse;->products:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/shopping/FindProductsResponse;->domainHistogram:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/shopping/FindProductsResponse$RootElement;-><init>(Lcom/ebay/common/net/api/shopping/FindProductsResponse;Lcom/ebay/common/net/api/shopping/FindProductsResponse$1;)V

    .line 27
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
