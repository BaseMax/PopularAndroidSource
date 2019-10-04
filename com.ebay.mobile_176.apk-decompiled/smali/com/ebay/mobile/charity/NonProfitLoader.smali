.class public Lcom/ebay/mobile/charity/NonProfitLoader;
.super Lcom/ebay/nautilus/shell/content/FwNetLoader;
.source "NonProfitLoader.java"


# instance fields
.field public nonProfit:Lcom/ebay/nautilus/domain/data/Nonprofit;

.field public final nonprofitId:Ljava/lang/String;

.field private final site:Lcom/ebay/nautilus/domain/EbaySite;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/shell/content/FwNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 37
    iput-object p2, p0, Lcom/ebay/mobile/charity/NonProfitLoader;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 38
    iput-object p3, p0, Lcom/ebay/mobile/charity/NonProfitLoader;->nonprofitId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doInBackgroundInternal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitByIdRequest;

    iget-object v1, p0, Lcom/ebay/mobile/charity/NonProfitLoader;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v2, p0, Lcom/ebay/mobile/charity/NonProfitLoader;->nonprofitId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitByIdRequest;-><init>(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/charity/NonProfitLoader;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;

    if-eqz v0, :cond_0

    .line 53
    iget-object v1, v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->nonProfitDataResponse:Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->nonProfitDataResponse:Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;->nonprofits:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->nonProfitDataResponse:Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;->nonprofits:Ljava/util/List;

    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 57
    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->nonProfitDataResponse:Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;->nonprofits:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/Nonprofit;

    .line 58
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/Nonprofit;->nonprofitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/mobile/charity/NonProfitLoader;->nonprofitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iput-object v0, p0, Lcom/ebay/mobile/charity/NonProfitLoader;->nonProfit:Lcom/ebay/nautilus/domain/data/Nonprofit;

    :cond_0
    return-void
.end method
