.class public Lcom/ebay/common/net/api/trading/GetBestOffersResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetBestOffersResponse.java"


# instance fields
.field public final offers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/BestOffer;",
            ">;"
        }
    .end annotation
.end field

.field rootElement:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse;->offers:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;

    invoke-direct {v0, p0}, Lcom/ebay/common/net/api/trading/GetBestOffersResponse$1;-><init>(Lcom/ebay/common/net/api/trading/GetBestOffersResponse;)V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse;->rootElement:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetBestOffersResponse;->rootElement:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
