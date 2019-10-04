.class Lcom/ebay/common/net/api/search/SearchServiceQuery;
.super Lcom/ebay/common/net/api/search/SearchPagedListManager;
.source "SearchServiceApi.java"


# instance fields
.field private aspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

.field private categories:Lcom/ebay/common/model/search/EbayCategoryHistogram;

.field private final context:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private final dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

.field private eligibleFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            ">;"
        }
    .end annotation
.end field

.field private fitmentAnswers:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

.field private fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

.field private guaranteedDeliveryDays:I

.field private guaranteedDeliveryEnabled:Z

.field private hasEbayPlusToggle:Z

.field private hasLocalItems:Z

.field private hasSaveSearchMessage:Z

.field private itemConditions:Lcom/ebay/common/model/search/EbayItemConditionHistogram;

.field private itemLocations:Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

.field private layoutMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

.field private layoutMetaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;",
            ">;"
        }
    .end annotation
.end field

.field private layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

.field private magEnabled:Z

.field private numberOfRegularItemsSeen:I

.field private pageMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

.field private pagedResponseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ebay/common/net/api/search/SearchServiceResponse;",
            ">;"
        }
    .end annotation
.end field

.field private priceFilters:Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

.field private rewrites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;",
            ">;"
        }
    .end annotation
.end field

.field private searchImageHolder:Lcom/ebay/common/net/api/search/SearchImageHolder;

.field private searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

.field private sellerOffer:Lcom/ebay/common/model/search/SellerOffer;

.field private semanticSearchType:I

.field private totalNumberOfItemsWithDupes:J


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/common/net/api/search/SearchImageHolder;I)V
    .locals 1

    .line 72
    iget v0, p2, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    invoke-direct {p0, v0, p2}, Lcom/ebay/common/net/api/search/SearchPagedListManager;-><init>(ILcom/ebay/common/net/api/search/SearchParameters;)V

    .line 41
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->pagedResponseMap:Ljava/util/HashMap;

    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->categories:Lcom/ebay/common/model/search/EbayCategoryHistogram;

    .line 43
    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->aspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 44
    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->priceFilters:Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    .line 45
    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->itemLocations:Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    .line 50
    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

    .line 51
    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->sellerOffer:Lcom/ebay/common/model/search/SellerOffer;

    .line 74
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 75
    iput-object p3, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    .line 76
    iput-object p4, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    .line 77
    iput-object p5, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    .line 78
    iput-object p6, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->searchImageHolder:Lcom/ebay/common/net/api/search/SearchImageHolder;

    .line 79
    iput p7, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->semanticSearchType:I

    return-void
.end method

.method private getRequest(I)Lcom/ebay/common/net/api/search/SearchServiceRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ebay/common/net/api/search/SearchServiceRequest<",
            "+",
            "Lcom/ebay/common/net/api/search/SearchServiceResponse;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 267
    iget-object v1, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->isImageSearchByReference:Z

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;

    iget-object v3, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    iget-object v6, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    iget v7, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->numberOfRegularItemsSeen:I

    iget-object v8, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->searchImageHolder:Lcom/ebay/common/net/api/search/SearchImageHolder;

    move-object v2, v1

    move/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;-><init>(Lcom/ebay/common/net/api/search/SearchParameters;ILcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;ILcom/ebay/common/net/api/search/SearchImageHolder;)V

    return-object v1

    .line 271
    :cond_0
    new-instance v1, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;

    iget-object v10, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v12, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    iget-object v13, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    iget v14, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->numberOfRegularItemsSeen:I

    iget v15, v0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->semanticSearchType:I

    move-object v9, v1

    move/from16 v11, p1

    invoke-direct/range {v9 .. v15}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;-><init>(Lcom/ebay/common/net/api/search/SearchParameters;ILcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;II)V

    return-object v1
.end method

.method private getResponse(I)Lcom/ebay/common/net/api/search/SearchServiceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->pagedResponseMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->sendAndTrack(I)Lcom/ebay/common/net/api/search/SearchServiceResponse;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->pagedResponseMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->setLastResultStatus(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    :goto_0
    return-object v0
.end method

.method private sendAndTrack(I)Lcom/ebay/common/net/api/search/SearchServiceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getRequest(I)Lcom/ebay/common/net/api/search/SearchServiceRequest;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getConnector()Lcom/ebay/nautilus/kernel/net/Connector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ebay/nautilus/kernel/net/Connector;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;

    .line 157
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/ebay/common/net/api/search/SearchServiceRequest;->getPageNumber()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->trackResponse(Lcom/ebay/common/net/api/search/SearchServiceResponse;I)V

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->setLastResultStatus(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    .line 166
    instance-of p1, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;

    if-eqz p1, :cond_1

    .line 167
    iget p1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->numberOfRegularItemsSeen:I

    move-object v1, v0

    check-cast v1, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    invoke-virtual {v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->getNumberOfRegularItemsSeen(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->numberOfRegularItemsSeen:I

    :cond_1
    return-object v0
.end method

.method private trackResponse(Lcom/ebay/common/net/api/search/SearchServiceResponse;I)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-interface {v0, v1, p2, p1}, Lcom/ebay/common/net/api/search/ISearchEventTracker;->trackResponse(Lcom/ebay/nautilus/kernel/content/EbayContext;ILcom/ebay/common/net/api/search/ISearchTracking;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeLayout(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;
    .locals 1

    .line 362
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    .line 364
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutMetaMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->markDirty()V

    const/4 p1, 0x1

    .line 367
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->load(I)V

    .line 368
    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    return-object p1
.end method

.method public fill(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p2}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getResponse(I)Lcom/ebay/common/net/api/search/SearchServiceResponse;

    move-result-object p2

    .line 114
    invoke-virtual {p2}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->rerankTrackableRows(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    invoke-virtual {p2, p1, v0}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->fill(Ljava/util/ArrayList;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)V

    .line 123
    invoke-virtual {p2}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getTotalCount()I

    move-result p1

    iput p1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->totalNumberOfItems:I

    .line 126
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getPageMetadata()Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->pageMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    return-void
.end method

.method public getAspects()Lcom/ebay/common/model/search/EbayAspectHistogram;
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->aspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-static {v0, v1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->getUpdatedHistogram(Lcom/ebay/common/model/search/EbayAspectHistogram;Lcom/ebay/common/model/search/EbayAspectHistogram;)Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    iget-object v1, v1, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    sget-object v2, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->USE_NEW:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    if-ne v1, v2, :cond_0

    .line 299
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object v0, v1, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    :cond_0
    return-object v0
.end method

.method public getCategories()Lcom/ebay/common/model/search/EbayCategoryHistogram;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->categories:Lcom/ebay/common/model/search/EbayCategoryHistogram;

    return-object v0
.end method

.method public getEligibleFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->eligibleFeatures:Ljava/util/List;

    return-object v0
.end method

.method public getFitmentAnswers()Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->fitmentAnswers:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

    return-object v0
.end method

.method public getFitmentInformation()Lcom/ebay/common/model/search/EbayFitmentInformation;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

    return-object v0
.end method

.method public getGuaranteedDeliveryDays()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->guaranteedDeliveryDays:I

    return v0
.end method

.method public getItemConditions()Lcom/ebay/common/model/search/EbayItemConditionHistogram;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->itemConditions:Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    return-object v0
.end method

.method public getItemLocations()Lcom/ebay/common/model/search/EbayLocationFilterHistogram;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->itemLocations:Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    return-object v0
.end method

.method public getLayoutMeta()Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    return-object v0
.end method

.method public getPageMeta()Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->pageMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    return v0
.end method

.method public getPriceFilters()Lcom/ebay/common/model/search/EbayPriceFilterHistogram;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->priceFilters:Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    return-object v0
.end method

.method public getRewrites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->rewrites:Ljava/util/List;

    return-object v0
.end method

.method public getSellerOffer()Lcom/ebay/common/model/search/SellerOffer;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->sellerOffer:Lcom/ebay/common/model/search/SellerOffer;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->totalNumberOfItems:I

    return v0
.end method

.method public getTotalCountWithDupes()J
    .locals 2

    .line 285
    iget-wide v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->totalNumberOfItemsWithDupes:J

    return-wide v0
.end method

.method public hasEbayPlusToggle()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->hasEbayPlusToggle:Z

    return v0
.end method

.method public hasLocalItems()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->hasLocalItems:Z

    return v0
.end method

.method public hasSaveSearchMessage()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->hasSaveSearchMessage:Z

    return v0
.end method

.method protected isErrorRetriable(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Z
    .locals 1

    .line 94
    instance-of v0, p1, Lcom/ebay/nautilus/kernel/net/HttpError;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/common/net/api/search/SearchPagedListManager;->isErrorRetriable(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Z

    move-result p1

    return p1
.end method

.method public isGuaranteedDeliveryEnabled()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->guaranteedDeliveryEnabled:Z

    return v0
.end method

.method public isMagEnabled()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->magEnabled:Z

    return v0
.end method

.method public query()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 214
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getResponse(I)Lcom/ebay/common/net/api/search/SearchServiceResponse;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getTotalCount()I

    move-result v2

    iput v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->totalNumberOfItems:I

    .line 217
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getTotalCountWithDupes()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->totalNumberOfItemsWithDupes:J

    .line 218
    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    invoke-virtual {v1, v2}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getPage(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->firstPage:Ljava/util/List;

    .line 219
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getCategories()Lcom/ebay/common/model/search/EbayCategoryHistogram;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->categories:Lcom/ebay/common/model/search/EbayCategoryHistogram;

    .line 220
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getAspects()Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->aspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 221
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getPriceFilters()Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->priceFilters:Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    .line 222
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getItemLocationFilters()Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->itemLocations:Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    .line 223
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getItemConditionFilters()Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->itemConditions:Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    .line 224
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getEligibleFeatures()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->eligibleFeatures:Ljava/util/List;

    .line 225
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->isGuaranteedDeliveryEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->guaranteedDeliveryEnabled:Z

    .line 226
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getGuaranteedDeliveryDays()I

    move-result v2

    iput v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->guaranteedDeliveryDays:I

    .line 227
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getFitmentInformation()Lcom/ebay/common/model/search/EbayFitmentInformation;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

    .line 228
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getSellerOffer()Lcom/ebay/common/model/search/SellerOffer;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->sellerOffer:Lcom/ebay/common/model/search/SellerOffer;

    .line 229
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->isMagEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->magEnabled:Z

    .line 230
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->hasEbayPlusToggle()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->hasEbayPlusToggle:Z

    .line 231
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getFitmentAnswers()Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->fitmentAnswers:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

    .line 232
    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    invoke-virtual {v1, v2}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getRewrites(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->rewrites:Ljava/util/List;

    .line 233
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getPageMetadata()Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->pageMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    .line 234
    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    invoke-virtual {v1, v2}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getLayoutMetadata(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    .line 235
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getLayoutMetadataMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->layoutMetaMap:Ljava/util/HashMap;

    .line 236
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->hasSaveSearchMessage()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->hasSaveSearchMessage:Z

    const/16 v1, 0x32

    .line 238
    iput v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->highestPageIndex:I

    .line 240
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->firstPage:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->firstPage:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->rerankTrackableRows(Ljava/util/List;)V

    .line 248
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->firstPage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 251
    iget-object v3, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->firstPage:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    .line 252
    iget-object v4, v3, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->itemType:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    sget-object v5, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->REGULAR:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    invoke-virtual {v4, v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->itemType:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    sget-object v5, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->LABELED_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    invoke-virtual {v4, v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    :cond_0
    check-cast v3, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    iget-boolean v3, v3, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isLocal:Z

    if-eqz v3, :cond_1

    .line 257
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchServiceQuery;->hasLocalItems:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
