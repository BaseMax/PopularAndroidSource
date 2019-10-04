.class Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;
.super Ljava/lang/Object;
.source "NonProfitPagedListLoader.java"

# interfaces
.implements Lcom/ebay/common/net/api/finding/PagedList$Query;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/charity/NonProfitPagedListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindNonProfitQuery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/common/net/api/finding/PagedList$Query<",
        "Lcom/ebay/nautilus/domain/data/Nonprofit;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private firstPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;"
        }
    .end annotation
.end field

.field private final keywords:Ljava/lang/String;

.field private final site:Lcom/ebay/nautilus/domain/EbaySite;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->firstPage:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 65
    iput-object p2, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 66
    iput-object p3, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->keywords:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fill(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Lcom/ebay/nautilus/kernel/net/HostErrorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 84
    iget-object p3, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->firstPage:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 86
    iget-object p2, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->firstPage:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    int-to-double p2, p2

    .line 90
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    .line 92
    iget-object p3, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    new-instance v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitRequest;

    iget-object v1, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v2, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->keywords:Ljava/lang/String;

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitRequest;-><init>(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;II)V

    invoke-static {p3, v0}, Lcom/ebay/nautilus/kernel/net/ConnectorLegacy;->sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;

    .line 96
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->hasSuccessResponseCode()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 99
    iget-object p2, p2, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->nonProfitDataResponse:Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;->nonprofits:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 97
    :cond_1
    new-instance p1, Lcom/ebay/nautilus/kernel/net/HostErrorException;

    iget p3, p2, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->responseCode:I

    iget-object p2, p2, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Lcom/ebay/nautilus/kernel/net/HostErrorException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public query()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Lcom/ebay/nautilus/kernel/net/HostErrorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    new-instance v1, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitRequest;

    iget-object v2, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v3, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->keywords:Ljava/lang/String;

    const/16 v4, 0x19

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitRequest;-><init>(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;II)V

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/net/ConnectorLegacy;->sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->nonProfitDataResponse:Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->nonProfitDataResponse:Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;->nonprofits:Ljava/util/List;

    iput-object v1, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;->firstPage:Ljava/util/List;

    .line 121
    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/charity/FindNonProfitResponse;->nonProfitDataResponse:Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse;->paginationOutput:Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse$PaginationOutput;

    iget v0, v0, Lcom/ebay/nautilus/domain/net/api/charity/NonprofitDataResponse$PaginationOutput;->totalEntries:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
