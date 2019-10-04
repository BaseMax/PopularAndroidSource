.class public final Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;
.super Lcom/ebay/common/net/api/search/SearchServiceResponse;
.source "GetSearchAnswersResponse.java"


# instance fields
.field private aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

.field private belowMarketPriceCount:I

.field private categoryHistogram:Lcom/ebay/common/model/search/EbayCategoryHistogram;

.field private clientLoadXtTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private egdCount:I

.field private eligibleFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            ">;"
        }
    .end annotation
.end field

.field private fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

.field private guaranteedDeliveryDays:I

.field private guaranteedDeliveryEnabled:Z

.field private hasEbayPlusToggle:Z

.field private hasSaveSearchMessage:Z

.field private hotnessCount:I

.field private itemConditionHistogram:Lcom/ebay/common/model/search/EbayItemConditionHistogram;

.field private final itemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private itemLocationHistogram:Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

.field private layoutMetaDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;",
            ">;"
        }
    .end annotation
.end field

.field private magEnabled:Z

.field private numberOfRegularItemsSeenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private priceFilterHistogram:Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

.field private qsModIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rewritesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private searchedCategoryId:J

.field private smeCount:I

.field private trackingCorrelationId:Ljava/lang/String;

.field private trackingResponseHeader:Ljava/lang/String;

.field private translatedLayouts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

.field private xtTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;J)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;JLjava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;JLjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            "J",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    .line 110
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translatedLayouts:Ljava/util/HashMap;

    .line 111
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->rewritesMap:Ljava/util/HashMap;

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->itemIds:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 128
    iput p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->guaranteedDeliveryDays:I

    .line 133
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->numberOfRegularItemsSeenMap:Ljava/util/HashMap;

    .line 134
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->layoutMetaDataMap:Ljava/util/HashMap;

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->qsModIds:Ljava/util/List;

    .line 141
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->xtTags:Ljava/util/HashSet;

    .line 142
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->clientLoadXtTags:Ljava/util/HashSet;

    .line 162
    iput-wide p2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->searchedCategoryId:J

    if-eqz p4, :cond_0

    .line 166
    iget-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->xtTags:Ljava/util/HashSet;

    invoke-virtual {p1, p4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getDefaultMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->mapper:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    return-void
.end method

.method private static addPriceAndConvertedPrice(Lcom/ebay/nautilus/domain/data/search/SearchItem;Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;Z)V
    .locals 1
    .param p0    # Lcom/ebay/nautilus/domain/data/search/SearchItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/search/SearchListing;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1328
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;->priceRange:Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;->priceRange:Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_0

    .line 1330
    iget-object p0, p2, Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;->priceRange:Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;

    .line 1332
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p2

    iput-object p2, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->price:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 1333
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    .line 1334
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p2

    iput-object p2, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->convertedPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 1336
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 1338
    iput-boolean p2, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isMskuPriceRange:Z

    if-eqz p3, :cond_2

    .line 1341
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p2

    iput-object p2, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 1343
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz p2, :cond_2

    .line 1344
    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    .line 1345
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p0

    iput-object p0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_0

    .line 1349
    :cond_0
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    if-eqz p2, :cond_2

    .line 1355
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->currentPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz p2, :cond_1

    .line 1356
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->currentPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p2

    iput-object p2, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->price:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 1357
    :cond_1
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz p2, :cond_2

    .line 1358
    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p0

    iput-object p0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->convertedPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_2
    :goto_0
    return-void
.end method

.method private buildQueryAnswerListItem(Lcom/ebay/common/net/api/search/answers/wire/Position;Lcom/ebay/nautilus/domain/net/api/answers/QueryAnswerWire;Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;)Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;
    .locals 6

    if-eqz p3, :cond_0

    .line 885
    iget-object v0, p3, Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;->pageci:Ljava/lang/String;

    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;->parentrq:Ljava/lang/String;

    invoke-static {p2, v0, p3}, Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;->translate(Lcom/ebay/nautilus/domain/net/api/answers/QueryAnswerWire;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;

    move-result-object p2

    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 887
    :cond_0
    invoke-static {p2}, Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;->translate(Lcom/ebay/nautilus/domain/net/api/answers/QueryAnswerWire;)Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;

    move-result-object p2

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_1

    .line 889
    iget-object p2, p1, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/ebay/common/net/api/search/answers/wire/Position;->uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/ebay/common/net/api/search/answers/wire/Position;->uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    .line 890
    invoke-virtual {v3, p2}, Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;->isValidForDisplay(Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 892
    new-instance p2, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;

    iget-object v1, p1, Lcom/ebay/common/net/api/search/answers/wire/Position;->uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;->trackingList:Ljava/util/List;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;-><init>(Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    :goto_2
    return-object p2
.end method

.method private static conditionallyAddColorSwatches(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchListing;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchItem$Color;",
            ">;",
            "Lcom/ebay/nautilus/domain/data/search/SearchListing;",
            ")V"
        }
    .end annotation

    .line 1364
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->colorSwatches:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    .line 1365
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1367
    new-instance v0, Lcom/ebay/nautilus/domain/data/search/ColorSwatches;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/search/ColorSwatches;-><init>()V

    iput-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->colorSwatches:Lcom/ebay/nautilus/domain/data/search/ColorSwatches;

    .line 1369
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1374
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/search/SearchItem$Color;

    .line 1376
    iget-object v6, v4, Lcom/ebay/nautilus/domain/data/search/SearchItem$Color;->code:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->colorSwatches:Lcom/ebay/nautilus/domain/data/search/ColorSwatches;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/search/ColorSwatches;->shouldShowColorSwatchAtPosition:[Z

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 1380
    :try_start_0
    new-instance v6, Lcom/ebay/nautilus/domain/data/search/ItemColor;

    iget-object v7, v4, Lcom/ebay/nautilus/domain/data/search/SearchItem$Color;->name:Ljava/lang/String;

    iget-object v8, v4, Lcom/ebay/nautilus/domain/data/search/SearchItem$Color;->code:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/ebay/nautilus/domain/data/search/ItemColor;-><init>(Ljava/lang/String;I)V

    .line 1381
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1382
    iget-object v6, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->colorSwatches:Lcom/ebay/nautilus/domain/data/search/ColorSwatches;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/search/ColorSwatches;->shouldShowColorSwatchAtPosition:[Z

    aput-boolean v5, v6, v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "SearchAnswersResponse"

    .line 1387
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown color code sent by the service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchItem$Color;->code:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    if-ne v3, v0, :cond_0

    .line 1395
    :cond_2
    iget-object p0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->colorSwatches:Lcom/ebay/nautilus/domain/data/search/ColorSwatches;

    iput-object v1, p0, Lcom/ebay/nautilus/domain/data/search/ColorSwatches;->colors:Ljava/util/List;

    .line 1396
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_3

    const/4 v2, 0x1

    .line 1397
    :cond_3
    iget-object p0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->colorSwatches:Lcom/ebay/nautilus/domain/data/search/ColorSwatches;

    iput-boolean v2, p0, Lcom/ebay/nautilus/domain/data/search/ColorSwatches;->shouldShowColorSwatches:Z

    .line 1398
    iget-object p0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->colorSwatches:Lcom/ebay/nautilus/domain/data/search/ColorSwatches;

    iput-boolean v2, p0, Lcom/ebay/nautilus/domain/data/search/ColorSwatches;->shouldShowMoreText:Z

    :cond_4
    return-void
.end method

.method private static conditionallyAddDisplayAttributes(Lcom/ebay/nautilus/domain/data/search/SearchItem;Lcom/ebay/nautilus/domain/data/search/SearchListing;)V
    .locals 6
    .param p0    # Lcom/ebay/nautilus/domain/data/search/SearchItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/search/SearchListing;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1295
    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/search/SearchItem;->displayAttributes:Lcom/ebay/nautilus/domain/data/search/SearchItem$DisplayAttributes;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DisplayAttributes;->attributeList:Ljava/util/List;

    if-eqz p0, :cond_3

    .line 1296
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1298
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/ebay/nautilus/domain/data/search/DisplayAttribute;->getMaxNumberOfAttributesOnItemCard()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 1303
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/search/SearchItem$DisplayAttributes$Attribute;

    if-eqz v3, :cond_1

    .line 1305
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/search/SearchItem$DisplayAttributes$Attribute;->displayText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1307
    new-instance v4, Lcom/ebay/nautilus/domain/data/search/DisplayAttribute$Attribute;

    invoke-direct {v4}, Lcom/ebay/nautilus/domain/data/search/DisplayAttribute$Attribute;-><init>()V

    .line 1308
    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/search/SearchItem$DisplayAttributes$Attribute;->displayText:Ljava/lang/String;

    iput-object v5, v4, Lcom/ebay/nautilus/domain/data/search/DisplayAttribute$Attribute;->displayText:Ljava/lang/String;

    .line 1309
    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/search/SearchItem$DisplayAttributes$Attribute;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/ebay/nautilus/domain/data/search/DisplayAttribute$Attribute;->name:Ljava/lang/String;

    .line 1310
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/search/SearchItem$DisplayAttributes$Attribute;->values:Ljava/util/List;

    iput-object v3, v4, Lcom/ebay/nautilus/domain/data/search/DisplayAttribute$Attribute;->values:Ljava/util/List;

    .line 1311
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-ne v2, v0, :cond_0

    .line 1319
    :cond_2
    new-instance p0, Lcom/ebay/nautilus/domain/data/search/DisplayAttribute;

    invoke-direct {p0}, Lcom/ebay/nautilus/domain/data/search/DisplayAttribute;-><init>()V

    iput-object p0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->displayAttribute:Lcom/ebay/nautilus/domain/data/search/DisplayAttribute;

    .line 1320
    iget-object p0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->displayAttribute:Lcom/ebay/nautilus/domain/data/search/DisplayAttribute;

    iput-object v1, p0, Lcom/ebay/nautilus/domain/data/search/DisplayAttribute;->attributeList:Ljava/util/List;

    :cond_3
    return-void
.end method

.method private findAndTranslateQueryAnswer(Lcom/ebay/common/net/api/search/answers/wire/Position;Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$QueryAnswers;Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;)Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;
    .locals 0

    .line 859
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->locateQueryAnswer(Lcom/ebay/common/net/api/search/answers/wire/Position;Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$QueryAnswers;)Lcom/ebay/nautilus/domain/net/api/answers/QueryAnswerWire;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 861
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->buildQueryAnswerListItem(Lcom/ebay/common/net/api/search/answers/wire/Position;Lcom/ebay/nautilus/domain/net/api/answers/QueryAnswerWire;Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;)Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static getGuaranteedDeliveryDaysConstraint(Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1749
    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;->toggle:Lcom/ebay/nautilus/domain/data/answers/Toggle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;->toggle:Lcom/ebay/nautilus/domain/data/answers/Toggle;

    iget-boolean v1, v1, Lcom/ebay/nautilus/domain/data/answers/Toggle;->selected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;->toggle:Lcom/ebay/nautilus/domain/data/answers/Toggle;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/Toggle;->navigationAction:Lcom/ebay/nautilus/domain/data/answers/NavAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;->toggle:Lcom/ebay/nautilus/domain/data/answers/Toggle;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/Toggle;->navigationAction:Lcom/ebay/nautilus/domain/data/answers/NavAction;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/NavAction;->navDestination:Lcom/ebay/nautilus/domain/data/answers/NavDestination;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;->toggle:Lcom/ebay/nautilus/domain/data/answers/Toggle;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/Toggle;->navigationAction:Lcom/ebay/nautilus/domain/data/answers/NavAction;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/NavAction;->navDestination:Lcom/ebay/nautilus/domain/data/answers/NavDestination;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/NavDestination;->queryRequest:Lcom/ebay/nautilus/domain/data/answers/QueryRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;->toggle:Lcom/ebay/nautilus/domain/data/answers/Toggle;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/Toggle;->navigationAction:Lcom/ebay/nautilus/domain/data/answers/NavAction;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/NavAction;->navDestination:Lcom/ebay/nautilus/domain/data/answers/NavDestination;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/NavDestination;->queryRequest:Lcom/ebay/nautilus/domain/data/answers/QueryRequest;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/QueryRequest;->requestDifference:Lcom/ebay/nautilus/domain/data/answers/SearchRequestDifference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;->toggle:Lcom/ebay/nautilus/domain/data/answers/Toggle;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/Toggle;->navigationAction:Lcom/ebay/nautilus/domain/data/answers/NavAction;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/NavAction;->navDestination:Lcom/ebay/nautilus/domain/data/answers/NavDestination;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/NavDestination;->queryRequest:Lcom/ebay/nautilus/domain/data/answers/QueryRequest;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/QueryRequest;->requestDifference:Lcom/ebay/nautilus/domain/data/answers/SearchRequestDifference;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/answers/SearchRequestDifference;->globalAspect:Lcom/ebay/nautilus/domain/data/answers/GlobalAspectDifference;

    if-eqz v1, :cond_0

    .line 1758
    iget-object p0, p0, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;->toggle:Lcom/ebay/nautilus/domain/data/answers/Toggle;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/answers/Toggle;->navigationAction:Lcom/ebay/nautilus/domain/data/answers/NavAction;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/answers/NavAction;->navDestination:Lcom/ebay/nautilus/domain/data/answers/NavDestination;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/answers/NavDestination;->queryRequest:Lcom/ebay/nautilus/domain/data/answers/QueryRequest;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/answers/QueryRequest;->requestDifference:Lcom/ebay/nautilus/domain/data/answers/SearchRequestDifference;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/answers/SearchRequestDifference;->globalAspect:Lcom/ebay/nautilus/domain/data/answers/GlobalAspectDifference;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/answers/GlobalAspectDifference;->remove:Ljava/util/List;

    .line 1760
    invoke-static {p0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1762
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    .line 1763
    invoke-static {p0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1767
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    :catch_0
    :cond_0
    return v0
.end method

.method private getItems(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translatedLayouts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    .line 334
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->getAck()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->pageTemplate:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->pageTemplate:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate;->regions:[Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Region;

    if-eqz v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    invoke-direct {p0, v0, p1}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateWireModelToIdealModelAnswerPlatform(Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private locateQueryAnswer(Lcom/ebay/common/net/api/search/answers/wire/Position;Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$QueryAnswers;)Lcom/ebay/nautilus/domain/net/api/answers/QueryAnswerWire;
    .locals 1

    .line 868
    sget-object v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->QUERY_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 871
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 873
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 874
    iget-object p2, p2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$QueryAnswers;->answer:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/api/answers/QueryAnswerWire;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static setDealMessageForBelowMarketPrice(Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/search/SearchItem;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1574
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->currentPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->comparitivePricingRange:Lcom/ebay/nautilus/domain/data/search/SearchItem$ComparitivePricingRange;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->comparitivePricingRange:Lcom/ebay/nautilus/domain/data/search/SearchItem$ComparitivePricingRange;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ComparitivePricingRange;->fairMarketPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->currentPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->comparitivePricingRange:Lcom/ebay/nautilus/domain/data/search/SearchItem$ComparitivePricingRange;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchItem$ComparitivePricingRange;->fairMarketPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    .line 1580
    invoke-static {v0, v1}, Lcom/ebay/mobile/verticals/ComparitivePriceUtil;->evaluatePriceDifference(Lcom/ebay/nautilus/domain/data/search/Amount;Lcom/ebay/nautilus/domain/data/search/Amount;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    .line 1582
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->compareToZero()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1584
    new-instance v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->comparitivePricingRange:Lcom/ebay/nautilus/domain/data/search/SearchItem$ComparitivePricingRange;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem$ComparitivePricingRange;->fairMarketPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/search/Amount;->currencyId:Ljava/lang/String;

    .line 1586
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->getValueAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->fairMarketPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 1587
    iput-boolean v2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasDealMessageIndicator:Z

    :cond_0
    return-void
.end method

.method private static setGuaranteedDelivery(Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;Lcom/ebay/nautilus/domain/data/search/SearchListing;)V
    .locals 2

    .line 1262
    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;->buyerTimeZoneMaxEstimatedDeliveryDate:Ljava/lang/String;

    .line 1264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1269
    :try_start_0
    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseIso8601DateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->buyerTimeZoneMaxEstimatedDeliveryDate:Ljava/util/Date;

    const/4 v0, 0x1

    .line 1270
    iput-boolean v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->guaranteedDelivery:Z

    .line 1271
    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;->shippingMethodCode:Ljava/lang/String;

    iput-object p0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->shippingMethodCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 1275
    iput-object p0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->buyerTimeZoneMaxEstimatedDeliveryDate:Ljava/util/Date;

    const/4 v0, 0x0

    .line 1276
    iput-boolean v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->guaranteedDelivery:Z

    .line 1277
    iput-object p0, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->shippingMethodCode:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method private static setSearchListingHotnessFields(Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/search/SearchItem;ZZZZ)V
    .locals 7

    if-eqz p1, :cond_b

    if-eqz p0, :cond_b

    .line 1480
    invoke-static {p0, p1}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->setSearchListingSmeFields(Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/search/SearchItem;)V

    .line 1483
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemFeature:Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemFeature;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemFeature:Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemFeature;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemFeature;->charity:Z

    if-eqz v0, :cond_0

    .line 1484
    iput-boolean v1, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasBenefitsCharity:Z

    .line 1487
    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->dealInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DealInfo;

    if-eqz v0, :cond_1

    .line 1489
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->dealInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DealInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DealInfo;->endTime:Ljava/lang/String;

    .line 1490
    invoke-static {v0}, Lcom/ebay/common/util/EbayDateFormat;->parseSaasDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1492
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 1495
    iput-boolean v1, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasDealEndingSoon:Z

    .line 1499
    :cond_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemFeature:Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemFeature;

    if-eqz v0, :cond_7

    .line 1501
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemFeature:Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemFeature;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemFeature;->popularityIndicator:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1504
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$PopularityIndicator;

    const-string v3, "LowQuantityMessage"

    .line 1506
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$PopularityIndicator;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1509
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$PopularityIndicator;->value:Ljava/util/List;

    const-string v4, "LAST_ONE_SIGNAL"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1510
    iput-boolean v1, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasLastOne:Z

    .line 1512
    :cond_3
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$PopularityIndicator;->value:Ljava/util/List;

    const-string v3, "AlmostGone"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1514
    iput-boolean v1, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasAlmostGone:Z

    .line 1515
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->quantityAvailable:I

    iput v2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->almostGoneQuantity:I

    goto :goto_0

    :cond_4
    const-string v3, "PopularityMetric"

    .line 1518
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$PopularityIndicator;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1521
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$PopularityIndicator;->value:Ljava/util/List;

    const-string v4, "QuantitySold"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1523
    iput-boolean v1, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasQuantitySold:Z

    .line 1524
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget v3, v3, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->quantitySold:I

    iput v3, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->quantitySoldQuantity:I

    .line 1525
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget-boolean v3, v3, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->maxQuantitySoldLimitExceeded:Z

    iput-boolean v3, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->maxQuantitySoldLimitExceeded:Z

    .line 1529
    :cond_5
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$PopularityIndicator;->value:Ljava/util/List;

    const-string v3, "WatchCount"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1531
    iput-boolean v1, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasHighlyWatching:Z

    .line 1532
    iget v2, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->watchCount:I

    iput v2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->highlyWatchingQuantity:I

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    .line 1540
    iget-object p3, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemFeature:Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemFeature;

    iget-boolean p3, p3, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemFeature;->itemAuthenticated:Z

    iput-boolean p3, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasAuthenticityVerified:Z

    :cond_7
    if-eqz p2, :cond_8

    .line 1546
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->authorizedBrand:Ljava/lang/String;

    iput-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->authorizedBrand:Ljava/lang/String;

    .line 1547
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->authorizedBrand:Ljava/lang/String;

    invoke-static {p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasAuthorizedBrand:Z

    .line 1548
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->directFromBrand:Ljava/lang/String;

    iput-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->directFromBrand:Ljava/lang/String;

    .line 1549
    iget-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->directFromBrand:Ljava/lang/String;

    invoke-static {p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasDirectFromBrand:Z

    :cond_8
    if-eqz p5, :cond_9

    .line 1554
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->hotnessSignalInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$HotnessSignalInfo;

    if-eqz p2, :cond_a

    .line 1555
    new-instance p2, Lcom/ebay/nautilus/domain/data/search/HotnessSignals;

    iget-object p3, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->hotnessSignalInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$HotnessSignalInfo;

    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/search/SearchItem$HotnessSignalInfo;->hotnessSignalKey:Ljava/util/List;

    invoke-direct {p2, p3}, Lcom/ebay/nautilus/domain/data/search/HotnessSignals;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hotnessSignals:Lcom/ebay/nautilus/domain/data/search/HotnessSignals;

    goto :goto_1

    .line 1558
    :cond_9
    new-instance p2, Lcom/ebay/nautilus/domain/data/search/HotnessSignals;

    invoke-direct {p2, p0}, Lcom/ebay/nautilus/domain/data/search/HotnessSignals;-><init>(Lcom/ebay/nautilus/domain/data/search/SearchListing;)V

    iput-object p2, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hotnessSignals:Lcom/ebay/nautilus/domain/data/search/HotnessSignals;

    :cond_a
    :goto_1
    if-eqz p4, :cond_b

    .line 1561
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->returnPolicyInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ReturnPolicyInfo;

    if-eqz p2, :cond_b

    .line 1562
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->returnPolicyInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ReturnPolicyInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem$ReturnPolicyInfo;->freeReturnNoFee:Z

    iput-boolean p1, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isFreeReturns:Z

    :cond_b
    return-void
.end method

.method private static setSearchListingSmeFields(Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/search/SearchItem;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1462
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->smeInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$SmeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->smeInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$SmeInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$SmeInfo;->smeMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1464
    iput-boolean v0, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasSME:Z

    .line 1465
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem;->smeInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$SmeInfo;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/search/SearchItem$SmeInfo;->smeMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->smeMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static translateCategoryHistogramWireModelToIdealModel(Ljava/util/List;)Lcom/ebay/common/model/search/EbayCategoryHistogram;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;",
            ">;)",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram;"
        }
    .end annotation

    .line 1600
    new-instance v0, Lcom/ebay/common/model/search/EbayCategoryHistogram;

    invoke-static {p0}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateHistogram(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ebay/common/model/search/EbayCategoryHistogram;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private static translateHistogram(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;",
            ">;"
        }
    .end annotation

    .line 1606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 1610
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;

    .line 1612
    iget-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;->category:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

    if-eqz v2, :cond_0

    .line 1614
    iget-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;->categoryHistogram:Ljava/util/List;

    .line 1615
    invoke-static {v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateHistogram(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1616
    new-instance v3, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    invoke-direct {v3}, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;-><init>()V

    .line 1617
    iget-wide v4, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;->matchCount:J

    long-to-int v4, v4

    iput v4, v3, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->count:I

    .line 1618
    iget-object v4, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;->category:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

    iget-wide v4, v4, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->id:J

    iput-wide v4, v3, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->id:J

    .line 1619
    iget-object v4, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;->category:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

    iget-boolean v4, v4, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->leafCategory:Z

    iput-boolean v4, v3, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->isLeaf:Z

    .line 1620
    iget-object v4, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;->category:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

    iget v4, v4, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->level:I

    sget v5, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->UNINITIALIZED_LEVEL:I

    if-eq v4, v5, :cond_1

    .line 1621
    iget-object v4, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;->category:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

    iget v4, v4, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->level:I

    iput v4, v3, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->level:I

    .line 1622
    :cond_1
    iget-object v4, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;->category:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->name:Ljava/lang/String;

    .line 1623
    iget-object v4, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;->category:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->parentCategory:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;->category:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->parentCategory:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

    iget-wide v4, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->id:J

    :goto_1
    iput-wide v4, v3, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->parentId:J

    .line 1626
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static translateItemConditionHistogramWireModelToIdealModel(Ljava/util/List;)Lcom/ebay/common/model/search/EbayItemConditionHistogram;
    .locals 10
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ConditionHistogram;",
            ">;)",
            "Lcom/ebay/common/model/search/EbayItemConditionHistogram;"
        }
    .end annotation

    .line 1690
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1691
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ConditionHistogram;

    .line 1692
    new-instance v9, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;

    iget-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ConditionHistogram;->condition:Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;

    iget v3, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;->id:I

    iget-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ConditionHistogram;->condition:Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;->localizedName:Ljava/lang/String;

    iget-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ConditionHistogram;->condition:Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;

    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;->name:Ljava/lang/String;

    iget-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ConditionHistogram;->condition:Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;

    iget-boolean v6, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;->applied:Z

    iget-wide v7, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ConditionHistogram;->matchCount:J

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;-><init>(ILjava/lang/String;Ljava/lang/String;ZJ)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1696
    :cond_0
    new-instance p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    invoke-direct {p0, v0}, Lcom/ebay/common/model/search/EbayItemConditionHistogram;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static translateItemLocationHistogramWireModelToIdealModel(Ljava/util/List;)Lcom/ebay/common/model/search/EbayLocationFilterHistogram;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocationHistogram;",
            ">;)",
            "Lcom/ebay/common/model/search/EbayLocationFilterHistogram;"
        }
    .end annotation

    .line 1679
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1680
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocationHistogram;

    .line 1681
    new-instance v2, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;

    iget-object v3, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocationHistogram;->itemLocation:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocation;

    iget v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocation;->id:I

    iget-object v4, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocationHistogram;->itemLocation:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocation;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocation;->localizedName:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocationHistogram;->applied:Z

    invoke-direct {v2, v3, v4, v1}, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1683
    :cond_0
    new-instance p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    invoke-direct {p0, v0}, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static translatePriceFilterHistogramWireModelToIdealModel(Ljava/util/List;)Lcom/ebay/common/model/search/EbayPriceFilterHistogram;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$PriceFilterHistogram;",
            ">;)",
            "Lcom/ebay/common/model/search/EbayPriceFilterHistogram;"
        }
    .end annotation

    .line 1643
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1644
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$PriceFilterHistogram;

    .line 1646
    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$PriceFilterHistogram;->priceRange:Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;

    invoke-static {v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateWireModelToIdealModel(Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;)Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;

    move-result-object v1

    .line 1647
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1650
    :cond_0
    new-instance p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/common/model/search/EbayPriceFilterHistogram;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static translateWireModelToIdealModel(Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;)Lcom/ebay/common/model/search/EbayAspectHistogram;
    .locals 7

    .line 1411
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;-><init>()V

    const/4 v1, 0x0

    .line 1412
    iput-object v1, v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainName:Ljava/lang/String;

    .line 1413
    iput-object v1, v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainDisplayName:Ljava/lang/String;

    .line 1414
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    .line 1417
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    .line 1419
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;->aspect:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 1421
    iget-object p0, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;->aspect:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectHistogram;

    .line 1423
    new-instance v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    invoke-direct {v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;-><init>()V

    .line 1424
    iget-object v3, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectHistogram;->aspect:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Aspect;

    if-eqz v3, :cond_2

    .line 1426
    iget-object v3, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectHistogram;->aspect:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Aspect;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Aspect;->localizedName:Ljava/lang/String;

    iput-object v3, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    .line 1427
    iget-object v3, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1428
    iget-object v3, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectHistogram;->aspect:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Aspect;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Aspect;->displayName:Ljava/lang/String;

    iput-object v3, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    .line 1429
    :cond_1
    iget-object v3, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectHistogram;->aspect:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Aspect;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Aspect;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    .line 1432
    :cond_2
    iget-object v3, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectHistogram;->valueHistogram:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 1434
    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectHistogram;->valueHistogram:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValueHistogram;

    .line 1436
    new-instance v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    invoke-direct {v4}, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;-><init>()V

    .line 1437
    iget-wide v5, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValueHistogram;->matchCount:J

    long-to-int v5, v5

    iput v5, v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->count:I

    .line 1438
    iget-object v5, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValueHistogram;->aspectValue:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValue;

    if-eqz v5, :cond_3

    .line 1440
    iget-object v5, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValueHistogram;->aspectValue:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValue;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValue;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    .line 1441
    iget-object v5, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValueHistogram;->aspectValue:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValue;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValue;->localizedName:Ljava/lang/String;

    iput-object v5, v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    .line 1442
    iget-object v5, v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1443
    iget-object v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValueHistogram;->aspectValue:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValue;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValue;->displayName:Ljava/lang/String;

    iput-object v3, v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    .line 1445
    :cond_3
    invoke-virtual {v2, v4}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1448
    :cond_4
    invoke-virtual {v0, v2}, Lcom/ebay/common/model/search/EbayAspectHistogram;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static translateWireModelToIdealModel(Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;)Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;
    .locals 7

    .line 1660
    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->minPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    .line 1661
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    goto :goto_0

    .line 1663
    :goto_1
    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->convertedMinPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    .line 1664
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    :goto_2
    move-object v3, v0

    goto :goto_3

    :cond_1
    new-instance v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    goto :goto_2

    .line 1666
    :goto_3
    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->maxPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    .line 1667
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    :goto_4
    move-object v4, v0

    goto :goto_5

    :cond_2
    new-instance v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    goto :goto_4

    .line 1669
    :goto_5
    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;->convertedMaxPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    .line 1670
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p0

    :goto_6
    move-object v5, p0

    goto :goto_7

    :cond_3
    new-instance p0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    goto :goto_6

    .line 1672
    :goto_7
    new-instance p0, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;

    const/4 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/search/EbayPriceFilterHistogram$PriceRange;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;I)V

    return-object p0
.end method

.method public static translateWireModelToIdealModel(Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SellerOfferDetail;)Lcom/ebay/common/model/search/SellerOffer;
    .locals 3

    .line 1706
    new-instance v0, Lcom/ebay/common/model/search/SellerOffer;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SellerOfferDetail;->offerMessageDetail:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$OfferMessageDetail;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$OfferMessageDetail;->textMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SellerOfferDetail;->subTitle:Ljava/lang/String;

    iget-object p0, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SellerOfferDetail;->offerMessageDetail:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$OfferMessageDetail;

    iget-object p0, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$OfferMessageDetail;->legalTextMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/ebay/common/model/search/SellerOffer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static translateWireModelToIdealModel(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;ZZZ)Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;
    .locals 5

    .line 1724
    new-instance v0, Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;-><init>()V

    .line 1725
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;->label:Ljava/lang/String;

    .line 1726
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->seeAllLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;->seeAllLabel:Ljava/lang/String;

    .line 1727
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->seeAllNavAction:Lcom/ebay/nautilus/domain/data/answers/NavAction;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;->seeAllNavAction:Lcom/ebay/nautilus/domain/data/answers/NavAction;

    .line 1728
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->item:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;->listings:Ljava/util/List;

    .line 1729
    iget-object p0, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->item:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;

    .line 1731
    new-instance v2, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;

    invoke-direct {v2}, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;-><init>()V

    .line 1732
    iget-object v3, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->label:Ljava/lang/String;

    iput-object v3, v2, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;->label:Ljava/lang/String;

    .line 1733
    iget-object v3, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->item:Lcom/ebay/nautilus/domain/data/search/SearchItem;

    iget-object v4, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->themesTracking:Ljava/util/List;

    invoke-static {v3, p1, p2, p3, v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateWireModelToIdealModel(Lcom/ebay/nautilus/domain/data/search/SearchItem;ZZZLjava/util/List;)Lcom/ebay/nautilus/domain/data/search/SearchListing;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;->listingItem:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    .line 1736
    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->trackingList:Ljava/util/List;

    iput-object v1, v2, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;->trackingList:Ljava/util/List;

    .line 1737
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;->listings:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static translateWireModelToIdealModel(Lcom/ebay/nautilus/domain/data/search/SearchItem;ZZZ)Lcom/ebay/nautilus/domain/data/search/SearchListing;
    .locals 1

    const/4 v0, 0x0

    .line 913
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateWireModelToIdealModel(Lcom/ebay/nautilus/domain/data/search/SearchItem;ZZZLjava/util/List;)Lcom/ebay/nautilus/domain/data/search/SearchListing;

    move-result-object p0

    return-object p0
.end method

.method private static translateWireModelToIdealModel(Lcom/ebay/nautilus/domain/data/search/SearchItem;ZZZLjava/util/List;)Lcom/ebay/nautilus/domain/data/search/SearchListing;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/search/SearchItem;",
            "ZZZ",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ThemesTracking;",
            ">;)",
            "Lcom/ebay/nautilus/domain/data/search/SearchListing;"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p3

    .line 920
    new-instance v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;

    invoke-direct {v8}, Lcom/ebay/nautilus/domain/data/search/SearchListing;-><init>()V

    if-nez v6, :cond_0

    return-object v8

    .line 925
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v9

    .line 928
    iget-wide v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemId:J

    iput-wide v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->id:J

    .line 929
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->pageci:Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->pageci:Ljava/lang/String;

    .line 933
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemImageInfo:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemImageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 935
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemImageInfo:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemImageInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemImageInfo;->primaryImageURL:Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->imageUrl:Ljava/lang/String;

    .line 936
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemImageInfo:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemImageInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemImageInfo;->extended:Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemImageInfoExtended;

    .line 940
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemImageInfoExtended;->zoomGuid:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemImageInfoExtended;->zoomGuid:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 941
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemImageInfoExtended;->zoomGuid:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v10

    .line 943
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemImageInfoExtended;->md5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 945
    :cond_2
    new-instance v2, Lcom/ebay/nautilus/domain/data/image/ZoomImage;

    invoke-direct {v2}, Lcom/ebay/nautilus/domain/data/image/ZoomImage;-><init>()V

    .line 946
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ItemImageInfoExtended;->md5:Ljava/lang/String;

    iput-object v0, v2, Lcom/ebay/nautilus/domain/data/image/ZoomImage;->md5Checksum:Ljava/lang/String;

    .line 947
    iput-object v1, v2, Lcom/ebay/nautilus/domain/data/image/ZoomImage;->metaGuid:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v2, v10

    .line 950
    :goto_1
    new-instance v0, Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget-object v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->imageUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/data/image/ImageData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/image/ZoomImage;)V

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    .line 952
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->category:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->category:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->categoryId:Ljava/util/List;

    .line 955
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->category:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/search/SearchItem$Category;

    .line 957
    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v2, v1, Lcom/ebay/nautilus/domain/data/search/SearchItem$Category;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 959
    iget-object v2, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->categoryId:Ljava/util/List;

    iget-wide v3, v1, Lcom/ebay/nautilus/domain/data/search/SearchItem$Category;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v2, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->leafCategoryName:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/search/SearchItem$Category;->localizedName:Ljava/lang/String;

    invoke-static {v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 961
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchItem$Category;->localizedName:Ljava/lang/String;

    iput-object v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->leafCategoryName:Ljava/lang/String;

    goto :goto_2

    .line 966
    :cond_5
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemPivot:Lcom/ebay/nautilus/domain/data/search/ItemPivot;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 967
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemPivot:Lcom/ebay/nautilus/domain/data/search/ItemPivot;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->itemPivot:Lcom/ebay/nautilus/domain/data/search/ItemPivot;

    .line 970
    :cond_6
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->localizedTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    .line 971
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->localizedTitle:Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->title:Ljava/lang/String;

    goto :goto_3

    .line 973
    :cond_7
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->title:Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->title:Ljava/lang/String;

    .line 975
    :goto_3
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->displayAttributes:Lcom/ebay/nautilus/domain/data/search/SearchItem$DisplayAttributes;

    if-eqz v0, :cond_8

    if-eqz v7, :cond_8

    .line 977
    invoke-static {v6, v8}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->conditionallyAddDisplayAttributes(Lcom/ebay/nautilus/domain/data/search/SearchItem;Lcom/ebay/nautilus/domain/data/search/SearchListing;)V

    .line 981
    :cond_8
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->eekStatus:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->eekStatus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 982
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->eekStatus:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->eekRating:Ljava/lang/String;

    .line 985
    :cond_9
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->ebayPlus:Lcom/ebay/nautilus/domain/data/search/SearchItem$EbayPlus;

    if-eqz v0, :cond_a

    .line 986
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->ebayPlus:Lcom/ebay/nautilus/domain/data/search/SearchItem$EbayPlus;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$EbayPlus;->badgeEligible:Z

    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isEbayPlus:Z

    .line 988
    :cond_a
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->multiVariationListingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;

    if-eqz v0, :cond_b

    if-eqz v7, :cond_b

    .line 991
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;->colors:Ljava/util/List;

    invoke-static {v1, v8}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->conditionallyAddColorSwatches(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchListing;)V

    .line 993
    :cond_b
    invoke-static {v6, v8, v0, v7}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->addPriceAndConvertedPrice(Lcom/ebay/nautilus/domain/data/search/SearchItem;Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;Z)V

    .line 996
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_c

    .line 997
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->binPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 998
    :cond_c
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->buyItNowConvertedPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_d

    .line 999
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->buyItNowConvertedPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->convertedBinPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 1002
    :cond_d
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->unitPrice:Lcom/ebay/nautilus/domain/data/search/SearchItem$UnitPriceInfo;

    iget-wide v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$UnitPriceInfo;->quantity:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->unitPriceQuantity:Ljava/lang/String;

    .line 1003
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->unitPrice:Lcom/ebay/nautilus/domain/data/search/SearchItem$UnitPriceInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$UnitPriceInfo;->type:Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->unitPriceType:Ljava/lang/String;

    .line 1006
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->distance:Lcom/ebay/nautilus/domain/data/search/SearchItem$Distance;

    if-eqz v0, :cond_e

    .line 1008
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->distance:Lcom/ebay/nautilus/domain/data/search/SearchItem$Distance;

    iget-wide v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$Distance;->value:D

    iput-wide v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->distanceLength:D

    .line 1009
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->distance:Lcom/ebay/nautilus/domain/data/search/SearchItem$Distance;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$Distance;->unit:Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->distanceUnit:Ljava/lang/String;

    .line 1013
    :cond_e
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 1016
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->convertedShippingCost:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_f

    .line 1017
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->convertedShippingCost:Lcom/ebay/nautilus/domain/data/search/Amount;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->shipping:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_4

    .line 1018
    :cond_f
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->shippingCost:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_10

    .line 1019
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->shippingCost:Lcom/ebay/nautilus/domain/data/search/Amount;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->shipping:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 1022
    :cond_10
    :goto_4
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->shippingType:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingType;->FREE:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingType;

    if-ne v0, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isShippingTypeFree:Z

    .line 1025
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->shippingType:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingType;->LOCAL_DELIVERY:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingType;

    if-ne v0, v2, :cond_12

    const/4 v0, 0x1

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isLocal:Z

    .line 1028
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->deliveryEstimate:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->deliveryEstimate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1030
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->deliveryEstimate:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;

    const-string v2, "GuaranteedDelivery"

    .line 1031
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;->shippingProgram:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "PaidGuaranteedDelivery"

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;->shippingProgram:Ljava/lang/String;

    .line 1032
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_7

    :cond_13
    const-string v2, "FastAndFree"

    .line 1034
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;->shippingProgram:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1035
    iput-boolean v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->fastAndFree:Z

    goto :goto_8

    :cond_14
    const-string v2, "FreeGuaranteedDelivery"

    .line 1036
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;->shippingProgram:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Search$B;->guaranteedDeliveryPlusFastAndFree:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    .line 1037
    invoke-interface {v9, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1039
    invoke-static {v0, v8}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->setGuaranteedDelivery(Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;Lcom/ebay/nautilus/domain/data/search/SearchListing;)V

    .line 1040
    iput-boolean v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->fastAndFree:Z

    goto :goto_8

    .line 1033
    :cond_15
    :goto_7
    invoke-static {v0, v8}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->setGuaranteedDelivery(Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;Lcom/ebay/nautilus/domain/data/search/SearchListing;)V

    .line 1044
    :cond_16
    :goto_8
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->eligibleForIntermediateShipping:Z

    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isGspItem:Z

    .line 1047
    :cond_17
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;->MAP:Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;

    iget-object v2, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;->pricingTreatment:Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;

    .line 1048
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_9

    :cond_18
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isMap:Z

    .line 1052
    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->unitPriceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->unitPriceQuantity:Ljava/lang/String;

    .line 1053
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    iget-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isMap:Z

    if-nez v0, :cond_1b

    .line 1055
    :cond_1a
    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;->CLASSIFIED:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;

    iget-object v2, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->listingType:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;

    .line 1056
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isClassified:Z

    .line 1060
    :cond_1b
    iget-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isClassified:Z

    if-nez v0, :cond_1c

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->bestOfferEnabled:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_a

    :cond_1c
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isBestOffer:Z

    .line 1064
    iget-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isClassified:Z

    if-nez v0, :cond_1d

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->buyItNowAvailable:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;->AUCTION_WITH_BIN:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;

    iget-object v2, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->listingType:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;

    .line 1065
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_b

    :cond_1d
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isAbin:Z

    .line 1068
    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;->AUCTION:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;

    iget-object v2, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->listingType:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;

    .line 1069
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->buyItNowAvailable:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;->AUCTION_WITH_BIN:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;

    iget-object v2, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->listingType:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;

    .line 1071
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    goto :goto_d

    :cond_1f
    :goto_c
    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasAuction:Z

    .line 1074
    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;->AUCTION:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;

    iget-object v2, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->listingType:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingType;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isAuction:Z

    .line 1077
    iget-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasAuction:Z

    if-eqz v0, :cond_20

    .line 1078
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->bidCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->bidCount:Ljava/lang/Integer;

    .line 1081
    :cond_20
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;->MAP:Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;

    iget-object v2, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;->pricingTreatment:Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;

    .line 1083
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;->STP:Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;

    iget-object v2, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;->pricingTreatment:Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;

    .line 1084
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->bestOfferEnabled:Z

    if-nez v0, :cond_23

    iget-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isAbin:Z

    if-nez v0, :cond_23

    iget-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isClassified:Z

    if-nez v0, :cond_23

    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->unitPriceType:Ljava/lang/String;

    .line 1088
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->unitPriceQuantity:Ljava/lang/String;

    .line 1089
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    const/4 v0, 0x1

    goto :goto_e

    :cond_23
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->showStp:Z

    .line 1093
    iget-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isMap:Z

    if-nez v0, :cond_24

    iget-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->showStp:Z

    if-eqz v0, :cond_25

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    if-eqz v0, :cond_25

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_25

    .line 1095
    :cond_24
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->strikeThruPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 1099
    :cond_25
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    if-eqz v0, :cond_27

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->localMerchantOption:Ljava/util/List;

    if-eqz v0, :cond_27

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->localMerchantOption:Ljava/util/List;

    .line 1100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1103
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->localMerchantOption:Ljava/util/List;

    const-string v2, "StorePickup"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isIspu:Z

    .line 1106
    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->srpPudo:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v9, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->localMerchantOption:Ljava/util/List;

    const-string v2, "LockerPickupOptionAvailable"

    .line 1107
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_f

    :cond_26
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isPudo:Z

    .line 1110
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->localMerchantOption:Ljava/util/List;

    const-string v2, "EbayNow"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isEbn:Z

    .line 1114
    :cond_27
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->multiVariationListingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;

    if-eqz v0, :cond_28

    .line 1116
    iput-boolean v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isMsku:Z

    .line 1117
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->multiVariationListingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;

    iget-wide v2, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$MultiVariationListingInfo;->variationId:J

    iput-wide v2, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->mskuVariationId:J

    .line 1124
    :cond_28
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    if-eqz v0, :cond_29

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->endTime:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 1125
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->listingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ListingInfo;->endTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/common/util/EbayDateFormat;->parseSaasDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->endDate:Ljava/util/Date;

    .line 1128
    :cond_29
    sget-object v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchItem$SellingState:[I

    iget-object v2, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->sellingState:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingState;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_10

    .line 1134
    :pswitch_0
    iput-boolean v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isEndedWithoutSale:Z

    goto :goto_10

    .line 1131
    :pswitch_1
    iput-boolean v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isSold:Z

    .line 1139
    :goto_10
    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->authorizedSeller:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    .line 1140
    invoke-interface {v9, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->authenticityVerified:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    .line 1141
    invoke-interface {v9, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v3

    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->freeReturnsIcd:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    .line 1142
    invoke-interface {v9, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v4

    sget-object v0, Lcom/ebay/mobile/dcs/Dcs$Search$B;->serviceDeliveredHotnessSignals:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    .line 1143
    invoke-interface {v9, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    move-object v0, v8

    move-object/from16 v1, p0

    .line 1139
    invoke-static/range {v0 .. v5}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->setSearchListingHotnessFields(Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/search/SearchItem;ZZZZ)V

    .line 1146
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->fitmentInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$FitmentInfo;

    if-eqz v0, :cond_2a

    .line 1148
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->fitmentInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$FitmentInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$FitmentInfo;->fitmentPropId:Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->fitmentPropId:Ljava/lang/String;

    .line 1149
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->fitmentInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$FitmentInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$FitmentInfo;->fitmentMessage:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 1150
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->fitmentInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$FitmentInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$FitmentInfo;->fitmentMessage:Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->fitmentMessage:Ljava/lang/String;

    .line 1153
    :cond_2a
    invoke-static {v8, v6}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->setDealMessageForBelowMarketPrice(Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/search/SearchItem;)V

    if-eqz v7, :cond_39

    .line 1157
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    if-eqz v0, :cond_2b

    .line 1159
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->buyerTimeZoneEstimatedDeliveryDate:Ljava/lang/String;

    .line 1160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1165
    :try_start_0
    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseIso8601DateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->estimatedDeliveryDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    .line 1169
    :catch_0
    iput-object v10, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->estimatedDeliveryDate:Ljava/util/Date;

    .line 1174
    :cond_2b
    :goto_11
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->productInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;

    if-eqz v0, :cond_31

    .line 1176
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->productInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;

    .line 1177
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->reviews:Lcom/ebay/nautilus/domain/net/api/guidesandreviews/Reviews;

    if-eqz v1, :cond_2c

    .line 1179
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->reviews:Lcom/ebay/nautilus/domain/net/api/guidesandreviews/Reviews;

    iget v1, v1, Lcom/ebay/nautilus/domain/net/api/guidesandreviews/Reviews;->count:I

    iput v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->reviewsCount:I

    .line 1180
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->reviews:Lcom/ebay/nautilus/domain/net/api/guidesandreviews/Reviews;

    iget-wide v1, v1, Lcom/ebay/nautilus/domain/net/api/guidesandreviews/Reviews;->averageRating:D

    double-to-float v1, v1

    iput v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->reviewsAverageRating:F

    .line 1181
    iget-wide v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->autoTagProductRefId:J

    iput-wide v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->productId:J

    .line 1184
    :cond_2c
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->selectedThemeIdentifiers:[Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->selectedThemeIdentifiers:[Ljava/lang/String;

    aget-object v1, v1, v11

    .line 1185
    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->themes:[Lcom/ebay/nautilus/domain/data/search/SearchItem$Theme;

    .line 1186
    invoke-static {v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    move-object v2, v10

    :goto_12
    if-nez v2, :cond_2e

    .line 1189
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->themes:[Lcom/ebay/nautilus/domain/data/search/SearchItem$Theme;

    array-length v3, v3

    if-ge v11, v3, :cond_2e

    .line 1191
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->themes:[Lcom/ebay/nautilus/domain/data/search/SearchItem$Theme;

    aget-object v3, v3, v11

    if-eqz v3, :cond_2d

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->themes:[Lcom/ebay/nautilus/domain/data/search/SearchItem$Theme;

    aget-object v3, v3, v11

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/search/SearchItem$Theme;->themeIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1192
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->themes:[Lcom/ebay/nautilus/domain/data/search/SearchItem$Theme;

    aget-object v2, v2, v11

    :cond_2d
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_2e
    if-eqz v2, :cond_31

    .line 1194
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$Theme;->message:Ljava/lang/String;

    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$Theme;->topPickThemeId:Ljava/lang/String;

    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1197
    invoke-static/range {p4 .. p4}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1199
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ThemesTracking;

    .line 1201
    iget-object v5, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ThemesTracking;->themeIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1203
    iget-object v10, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ThemesTracking;->trackingList:Ljava/util/List;

    :cond_30
    move-object/from16 v16, v10

    .line 1208
    new-instance v1, Lcom/ebay/nautilus/domain/data/search/MoreBuyingOptions;

    iget-object v12, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$Theme;->message:Ljava/lang/String;

    iget-wide v13, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$ProductInfo;->autoTagProductRefId:J

    iget-object v15, v2, Lcom/ebay/nautilus/domain/data/search/SearchItem$Theme;->topPickThemeId:Ljava/lang/String;

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/ebay/nautilus/domain/data/search/MoreBuyingOptions;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    iput-object v1, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->moreBuyingOptions:Lcom/ebay/nautilus/domain/data/search/MoreBuyingOptions;

    .line 1215
    :cond_31
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    if-eqz v0, :cond_32

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;->convertedOriginalRetailPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;->MKP:Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;

    iget-object v1, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;->pricingTreatment:Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;

    .line 1218
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/search/SearchItem$PricingTreatment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1220
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->discountPriceInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$DiscountPriceInfo;->convertedOriginalRetailPrice:Lcom/ebay/nautilus/domain/data/search/Amount;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/Amount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->trendingPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 1223
    :cond_32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1225
    iget-object v1, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->dynamicAspect:Ljava/util/List;

    if-eqz v1, :cond_36

    .line 1227
    iget-object v1, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->dynamicAspect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    .line 1229
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "miles"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    if-eqz p2, :cond_34

    .line 1231
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 1232
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    iput-object v4, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->miles:Ljava/lang/String;

    .line 1234
    :cond_34
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "brand"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    .line 1235
    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "marke"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1237
    :cond_35
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 1238
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    iput-object v2, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->brand:Ljava/lang/String;

    goto :goto_13

    .line 1243
    :cond_36
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->normalizedCondition:Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;

    if-eqz v0, :cond_37

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->normalizedCondition:Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;->localizedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1244
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->normalizedCondition:Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;->localizedName:Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->condition:Ljava/lang/String;

    .line 1246
    :cond_37
    iget-boolean v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->cbtItem:Z

    if-eqz v0, :cond_38

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemLocation:Lcom/ebay/nautilus/domain/data/search/SearchItem$Location;

    if-eqz v0, :cond_38

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemLocation:Lcom/ebay/nautilus/domain/data/search/SearchItem$Location;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$Location;->country:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1248
    iget-boolean v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->cbtItem:Z

    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isCbtItem:Z

    .line 1249
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->itemLocation:Lcom/ebay/nautilus/domain/data/search/SearchItem$Location;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$Location;->country:Ljava/lang/String;

    iput-object v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->itemLocationCountry:Ljava/lang/String;

    .line 1252
    :cond_38
    sget-object v0, Lcom/ebay/mobile/dcs/Dcs$Search$B;->gstIncludedInPrice:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v9, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->appliedTaxRateAsPercentage:Ljava/lang/Double;

    if-eqz v0, :cond_39

    .line 1253
    iget-object v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->sellingStatus:Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchItem$SellingStatus;->appliedTaxRateAsPercentage:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->appliedTaxRate:I

    .line 1255
    :cond_39
    iget-boolean v0, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem;->prefetchEligible:Z

    iput-boolean v0, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->prefetchEligible:Z

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private translateWireModelToIdealModelAnswerPlatform(Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 356
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 360
    iget-object v5, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v6, Lcom/ebay/mobile/dcs/DcsBoolean;->itemTitleTranslationEnabled:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v5, v6}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    .line 361
    iget-object v6, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v7, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->showVehicleMileage:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v6, v7}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v6

    .line 362
    iget-object v7, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v8, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->useItemCardRedesign:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v7, v8}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v7

    .line 363
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v8

    .line 364
    invoke-virtual {v8}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ebay/nautilus/domain/EbayCountry;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v9

    .line 365
    invoke-virtual {v8}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v8

    .line 368
    iget-object v10, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->pageTemplate:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate;

    iget-object v10, v10, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate;->regions:[Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Region;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    const-string v14, "SEARCH_RESULTS_RIVER"

    .line 370
    iget-object v15, v13, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Region;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v2, :cond_2

    .line 374
    iget-object v10, v13, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Region;->layouts:[Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout;

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v12, v11, :cond_1

    aget-object v15, v10, v12

    move-object/from16 v28, v10

    .line 376
    iget-object v10, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->layoutMetaDataMap:Ljava/util/HashMap;

    move/from16 v29, v11

    iget-object v11, v15, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout;->name:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    move-object/from16 v30, v14

    iget-object v14, v15, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    invoke-virtual {v10, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v10, v15, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout;->name:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    invoke-virtual {v2, v10}, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 378
    iget-object v14, v15, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout;->positions:Ljava/util/List;

    goto :goto_2

    :cond_0
    move-object/from16 v14, v30

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v28

    move/from16 v11, v29

    goto :goto_1

    :cond_1
    move-object/from16 v30, v14

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    if-nez v14, :cond_5

    .line 386
    iget-object v10, v13, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Region;->layouts:[Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v14, v10, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout;->positions:Ljava/util/List;

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    :cond_5
    :goto_4
    const/4 v15, 0x1

    if-nez v14, :cond_7

    .line 398
    iget-object v5, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    if-eqz v5, :cond_6

    .line 399
    iget-object v5, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->dedupedMatchCount:J

    :cond_6
    move-object v2, v0

    move-object v7, v1

    move-object v5, v3

    move-object/from16 v32, v4

    const/4 v3, 0x1

    const/16 v17, 0x0

    goto/16 :goto_1c

    .line 405
    :cond_7
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lcom/ebay/common/net/api/search/answers/wire/Position;

    .line 407
    sget-object v10, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$Position$LayoutType:[I

    iget-object v11, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->type:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    invoke-virtual {v11}, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    :cond_8
    :goto_6
    move-object v2, v0

    move-object/from16 v32, v4

    move v0, v6

    move/from16 v52, v8

    move-object/from16 v51, v9

    move v4, v14

    :goto_7
    move v9, v7

    move-object v7, v1

    move v1, v5

    move-object v5, v3

    const/4 v3, 0x1

    goto/16 :goto_1a

    .line 795
    :pswitch_0
    sget-object v10, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->MESSAGE_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v11, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 799
    iget-object v11, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v12, Lcom/ebay/mobile/dcs/Dcs$Search$B;->nullResultsAmplification:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v11, v12}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 801
    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ebay/nautilus/kernel/util/NumberUtil;->safeParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 804
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->messages:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;->answer:Ljava/util/List;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;

    .line 805
    invoke-static {v10}, Lcom/ebay/nautilus/domain/data/answers/SaveSearchAnswer;->translate(Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;)Lcom/ebay/nautilus/domain/data/answers/SaveSearchAnswer;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 806
    invoke-virtual {v10}, Lcom/ebay/nautilus/domain/data/answers/SaveSearchAnswer;->isValidForDisplay()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 808
    new-instance v11, Lcom/ebay/common/net/api/search/idealmodel/SaveSearchAnswerSrpListitem;

    iget-object v12, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iget-object v13, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {v11, v12, v13, v10}, Lcom/ebay/common/net/api/search/idealmodel/SaveSearchAnswerSrpListitem;-><init>(Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/nautilus/domain/data/answers/SaveSearchAnswer;)V

    .line 810
    iput-boolean v15, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->hasSaveSearchMessage:Z

    .line 811
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 772
    :pswitch_1
    sget-object v10, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->MESSAGE_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v11, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 776
    iget-object v11, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v12, Lcom/ebay/mobile/dcs/Dcs$Search$B;->ebayPlusToggle:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v11, v12}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 778
    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ebay/nautilus/kernel/util/NumberUtil;->safeParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 781
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->messages:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;->answer:Ljava/util/List;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;

    .line 782
    invoke-static {v10}, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;->translate(Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;)Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 783
    invoke-virtual {v10}, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;->isValidForDisplay()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v10, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;->icon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    if-eqz v11, :cond_8

    .line 785
    new-instance v11, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;

    iget-object v12, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iget-object v13, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {v11, v12, v13, v10}, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;-><init>(Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;)V

    .line 787
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v10, v10, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;->toggleType:Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer$ToggleType;

    sget-object v11, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer$ToggleType;->EBAY_PLUS_TOGGLE:Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer$ToggleType;

    invoke-virtual {v10, v11}, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer$ToggleType;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->hasEbayPlusToggle:Z

    goto/16 :goto_6

    .line 749
    :pswitch_2
    sget-object v10, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->MESSAGE_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v11, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 753
    iget-object v11, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v12, Lcom/ebay/mobile/dcs/Dcs$App$B;->guaranteedDelivery:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v11, v12}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 755
    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ebay/nautilus/kernel/util/NumberUtil;->safeParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 758
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->messages:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;->answer:Ljava/util/List;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;

    .line 759
    invoke-static {v10}, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;->translate(Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;)Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 760
    invoke-virtual {v11}, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;->isValidForDisplay()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 762
    new-instance v12, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;

    iget-object v15, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iget-object v13, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {v12, v15, v13, v11}, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;-><init>(Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;)V

    .line 764
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-static {v10}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->getGuaranteedDeliveryDaysConstraint(Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;)I

    move-result v10

    iput v10, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->guaranteedDeliveryDays:I

    goto/16 :goto_6

    .line 732
    :pswitch_3
    sget-object v10, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->MESSAGE_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v11, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 736
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    .line 738
    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ebay/nautilus/kernel/util/NumberUtil;->safeParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 741
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->messages:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;->answer:Ljava/util/List;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;

    .line 742
    invoke-static {v10}, Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;->translate(Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;)Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;

    move-result-object v10

    .line 743
    new-instance v11, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;

    invoke-direct {v11, v10}, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;-><init>(Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;)V

    .line 744
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 716
    :pswitch_4
    sget-object v10, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->MOTOR_FINDER_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v11, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 719
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    .line 721
    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 722
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->motorAnswers:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorAnswers;

    iget-object v11, v11, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorAnswers;->answer:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    .line 725
    invoke-static {}, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;->get()Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;

    move-result-object v11

    invoke-virtual {v11, v10, v13}, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;->createMotorFinderSrpListItem(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;Lcom/ebay/common/net/api/search/answers/wire/Position;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 728
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 702
    :pswitch_5
    sget-object v10, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->COMPATIBILITY_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v11, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 706
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    .line 708
    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 709
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->compatibleProduct:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

    iget-object v11, v11, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;->answer:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswer;

    .line 711
    iget-boolean v11, v10, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswer;->showFinderModule:Z

    if-eqz v11, :cond_8

    .line 712
    new-instance v11, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;

    iget-object v12, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {v11, v10, v12}, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;-><init>(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswer;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 666
    :pswitch_6
    sget-object v10, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->REWRITE_START_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v11, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 671
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    .line 673
    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 676
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;->rewrite:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;

    .line 681
    sget-object v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->RECALL_FILTERING:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object v12, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    if-ne v11, v12, :cond_9

    iget-object v11, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v12, Lcom/ebay/mobile/dcs/Dcs$Search$B;->recallFilteringRewrite:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    .line 682
    invoke-interface {v11, v12}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v11

    if-nez v11, :cond_9

    goto/16 :goto_6

    .line 686
    :cond_9
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->searchRefinement:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;

    if-eqz v11, :cond_a

    .line 687
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->searchRefinement:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->categoryHistogram:Ljava/util/List;

    invoke-static {v11}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateCategoryHistogramWireModelToIdealModel(Ljava/util/List;)Lcom/ebay/common/model/search/EbayCategoryHistogram;

    move-result-object v11

    goto :goto_8

    :cond_a
    const/4 v11, 0x0

    .line 689
    :goto_8
    new-instance v12, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    .line 690
    invoke-virtual {v10}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->createRewriteResult()Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;

    move-result-object v15

    move/from16 v31, v14

    iget-object v14, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    iget-object v10, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->trackingList:Ljava/util/List;

    invoke-direct {v12, v15, v11, v14, v10}, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;-><init>(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;Lcom/ebay/common/model/search/EbayCategoryHistogram;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 692
    iget-object v10, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-virtual {v12, v10}, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->withPlacementSize(Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    .line 695
    iget-object v10, v12, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v10, v10, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->rewriteMessage:Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 696
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_b
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :pswitch_7
    move/from16 v31, v14

    .line 637
    sget-object v10, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->LANDING_PAGE_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v11, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 642
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    .line 644
    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 645
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->landingPage:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswers;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswers;->answer:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;

    .line 646
    iget-object v11, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;->action:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;

    .line 648
    iget-object v12, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;->impressionTracking:Ljava/lang/String;

    if-eqz v11, :cond_c

    .line 651
    new-instance v14, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v15, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->clickTracking:Ljava/lang/String;

    iget-object v2, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    iget-object v11, v11, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->trackingList:Ljava/util/List;

    move-object/from16 v18, v14

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move-object/from16 v21, v15

    move-object/from16 v22, v2

    move-object/from16 v23, v11

    invoke-direct/range {v18 .. v23}, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;-><init>(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    iget-object v2, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 653
    invoke-virtual {v14, v2}, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->withPlacementSize(Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-result-object v2

    .line 652
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 657
    :cond_c
    new-instance v2, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    const/16 v21, 0x0

    iget-object v11, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move-object/from16 v22, v11

    invoke-direct/range {v18 .. v23}, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;-><init>(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    iget-object v10, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 659
    invoke-virtual {v2, v10}, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->withPlacementSize(Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-result-object v2

    .line 658
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :pswitch_8
    move/from16 v31, v14

    .line 620
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v10, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->imageSearch:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v2, v10}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 622
    sget-object v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->ICON_MESSAGES_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v10, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    .line 623
    invoke-virtual {v2, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 627
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    .line 629
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 630
    iget-object v10, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v10, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->iconMessages:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$IconMessages;

    .line 631
    new-instance v11, Lcom/ebay/common/net/api/search/idealmodel/ImageSearchListItem;

    iget-object v10, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$IconMessages;->answer:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/answers/IconMessageAnswer;

    invoke-direct {v11, v2}, Lcom/ebay/common/net/api/search/idealmodel/ImageSearchListItem;-><init>(Lcom/ebay/nautilus/domain/data/answers/IconMessageAnswer;)V

    .line 632
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_9
    move-object v2, v0

    move-object/from16 v32, v4

    move v0, v6

    move/from16 v52, v8

    move-object/from16 v51, v9

    move/from16 v4, v31

    goto/16 :goto_7

    :pswitch_9
    move/from16 v31, v14

    .line 612
    iget-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->searchQuery:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$QueryAnswers;

    iget-object v10, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    invoke-direct {v0, v13, v2, v10}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->findAndTranslateQueryAnswer(Lcom/ebay/common/net/api/search/answers/wire/Position;Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$QueryAnswers;Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;)Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 615
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_e
    sget-object v2, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->NAVIGATION_ANSWER_COLLAPSIBLE_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iget-object v10, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    if-ne v2, v10, :cond_d

    const/4 v2, 0x1

    .line 617
    iput-boolean v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->magEnabled:Z

    goto :goto_9

    :pswitch_a
    move/from16 v31, v14

    .line 588
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v10, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->nullAndLowPhase2:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v2, v10}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ITEMS_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iget-object v10, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    .line 589
    invoke-virtual {v2, v10}, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->ROW:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iget-object v10, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 590
    invoke-virtual {v2, v10}, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 592
    sget-object v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->LABELED_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v10, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 594
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v15, 0x1

    .line 596
    invoke-virtual {v2, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 597
    iget-object v10, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v10, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->labeledItem:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;

    iget-object v10, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;->answer:Ljava/util/List;

    .line 598
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;

    .line 597
    invoke-static {v2, v5, v6, v7}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateWireModelToIdealModel(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;ZZZ)Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;

    move-result-object v11

    .line 600
    new-instance v2, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;

    iget-object v12, v11, Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    iget-object v13, v11, Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;->trackingList:Ljava/util/List;

    move-object v10, v2

    move-object/from16 v32, v4

    move/from16 v4, v31

    move-object v14, v9

    const/4 v0, 0x1

    move v15, v8

    invoke-direct/range {v10 .. v15}, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;-><init>(Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;Ljava/lang/String;Z)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    move-object/from16 v32, v4

    move/from16 v4, v31

    :goto_a
    move v0, v6

    move/from16 v52, v8

    move-object/from16 v51, v9

    move-object/from16 v2, p0

    goto/16 :goto_7

    :pswitch_b
    move-object/from16 v32, v4

    move v4, v14

    const/4 v0, 0x1

    .line 440
    sget-object v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->LABELED_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v10, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 441
    sget-object v10, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->RERWITE_ITEM_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v11, v13, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 445
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 447
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 448
    iget-object v10, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v10, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->labeledItem:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;

    iget-object v10, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;->answer:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;

    .line 449
    iget-object v10, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->impression:Ljava/lang/String;

    if-nez v16, :cond_10

    .line 452
    invoke-static {}, Lcom/ebay/mobile/verticals/search/DragAndDropConfig;->newInstance()Lcom/ebay/mobile/verticals/search/DragAndDropConfig;

    move-result-object v11

    move-object/from16 v26, v11

    goto :goto_b

    :cond_10
    move-object/from16 v26, v16

    .line 453
    :goto_b
    iget-object v11, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->item:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move v14, v4

    move-object v12, v10

    move/from16 v4, v17

    :goto_c
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;

    if-eqz v1, :cond_11

    .line 455
    iget-object v11, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    if-eqz v11, :cond_11

    .line 456
    iget-object v11, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->item:Lcom/ebay/nautilus/domain/data/search/SearchItem;

    iget-object v0, v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;->pageci:Ljava/lang/String;

    iput-object v0, v11, Lcom/ebay/nautilus/domain/data/search/SearchItem;->pageci:Ljava/lang/String;

    .line 458
    :cond_11
    iget-object v0, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->item:Lcom/ebay/nautilus/domain/data/search/SearchItem;

    iget-object v11, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->themesTracking:Ljava/util/List;

    .line 459
    invoke-static {v0, v5, v6, v7, v11}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateWireModelToIdealModel(Lcom/ebay/nautilus/domain/data/search/SearchItem;ZZZLjava/util/List;)Lcom/ebay/nautilus/domain/data/search/SearchListing;

    move-result-object v11

    .line 464
    iget-object v0, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->itemPivot:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;

    if-eqz v0, :cond_20

    move-object/from16 v33, v13

    .line 465
    iget-object v13, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;->optionList:Ljava/util/List;

    invoke-static {v13}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_1f

    .line 467
    iget-object v13, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;->trackingList:Ljava/util/List;

    invoke-static {v13}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 469
    new-instance v13, Lcom/ebay/nautilus/domain/data/search/ItemPivot;

    invoke-direct {v13}, Lcom/ebay/nautilus/domain/data/search/ItemPivot;-><init>()V

    move/from16 v34, v14

    .line 470
    iget-object v14, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;->trackingList:Ljava/util/List;

    iput-object v14, v13, Lcom/ebay/nautilus/domain/data/search/ItemPivot;->trackingList:Ljava/util/List;

    goto :goto_d

    :cond_12
    move/from16 v34, v14

    const/4 v13, 0x0

    .line 472
    :goto_d
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v35, v15

    .line 473
    iget-object v15, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;->optionList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v36, v15

    move-object/from16 v15, v16

    check-cast v15, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionMeta;

    move/from16 v37, v5

    .line 475
    iget-object v5, v15, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionMeta;->optionType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    if-eqz v5, :cond_1c

    iget-object v5, v15, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionMeta;->optionName:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    if-nez v5, :cond_13

    goto/16 :goto_13

    .line 478
    :cond_13
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;->queryOptions:Ljava/util/List;

    invoke-static {v5}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 480
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;->queryOptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v38, v5

    move-object/from16 v5, v16

    check-cast v5, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotQueryOption;

    if-eqz v5, :cond_14

    move/from16 v39, v6

    .line 482
    iget-object v6, v5, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotQueryOption;->optionName:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    if-eqz v6, :cond_15

    iget-object v6, v15, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionMeta;->optionType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    move/from16 v40, v7

    sget-object v7, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->QUERY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    .line 483
    invoke-virtual {v6, v7}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v15, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionMeta;->optionName:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    iget-object v7, v5, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotQueryOption;->optionName:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    .line 485
    invoke-virtual {v6, v7}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 487
    iget-object v6, v5, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotQueryOption;->queries:Ljava/util/List;

    invoke-static {v6}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 489
    iget-object v6, v5, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotQueryOption;->queries:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/net/api/answers/QueryWire;

    if-eqz v6, :cond_16

    .line 490
    iget-object v7, v6, Lcom/ebay/nautilus/domain/net/api/answers/QueryWire;->trackingList:Ljava/util/List;

    invoke-static {v7}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 492
    iget-object v5, v5, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotQueryOption;->optionName:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    invoke-virtual {v5}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v6, Lcom/ebay/nautilus/domain/net/api/answers/QueryWire;->trackingList:Ljava/util/List;

    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_14
    move/from16 v39, v6

    :cond_15
    move/from16 v40, v7

    :cond_16
    :goto_10
    move-object/from16 v5, v38

    move/from16 v6, v39

    move/from16 v7, v40

    goto :goto_f

    :cond_17
    move/from16 v39, v6

    move/from16 v40, v7

    .line 498
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;->statefulLabelOptions:Ljava/util/List;

    invoke-static {v5}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 501
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;->statefulLabelOptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotStatefulLabelOption;

    if-eqz v6, :cond_19

    .line 503
    iget-object v7, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotStatefulLabelOption;->optionName:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    if-eqz v7, :cond_19

    iget-object v7, v15, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionMeta;->optionType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    move-object/from16 v41, v0

    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->STATEFUL_LABEL:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;

    .line 504
    invoke-virtual {v7, v0}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v15, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionMeta;->optionName:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    iget-object v7, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotStatefulLabelOption;->optionName:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

    .line 506
    invoke-virtual {v0, v7}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 509
    iget-object v0, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotStatefulLabelOption;->labels:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 513
    iget-object v0, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotStatefulLabelOption;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$StatefulLabel;

    .line 515
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v42, v0

    .line 516
    iget-object v0, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$StatefulLabel;->trackingList:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$StatefulLabel;->state:Ljava/lang/String;

    .line 517
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 519
    iget-object v0, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$StatefulLabel;->trackingList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 521
    iget-object v0, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$StatefulLabel;->state:Ljava/lang/String;

    invoke-interface {v14, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    move-object/from16 v0, v42

    goto :goto_12

    :cond_19
    move-object/from16 v41, v0

    :cond_1a
    move-object/from16 v0, v41

    goto :goto_11

    :cond_1b
    move-object/from16 v41, v0

    move-object/from16 v15, v36

    move/from16 v5, v37

    move/from16 v6, v39

    move/from16 v7, v40

    move-object/from16 v0, v41

    goto/16 :goto_e

    :cond_1c
    :goto_13
    move-object/from16 v15, v36

    move/from16 v5, v37

    goto/16 :goto_e

    :cond_1d
    move/from16 v37, v5

    move/from16 v39, v6

    move/from16 v40, v7

    if-eqz v13, :cond_1e

    .line 530
    invoke-static {v14}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 531
    iput-object v14, v13, Lcom/ebay/nautilus/domain/data/search/ItemPivot;->trackingMap:Ljava/util/Map;

    :cond_1e
    move-object/from16 v25, v13

    goto :goto_15

    :cond_1f
    move/from16 v37, v5

    move/from16 v39, v6

    move/from16 v40, v7

    goto :goto_14

    :cond_20
    move/from16 v37, v5

    move/from16 v39, v6

    move/from16 v40, v7

    move-object/from16 v33, v13

    :goto_14
    move/from16 v34, v14

    move-object/from16 v35, v15

    const/16 v25, 0x0

    .line 534
    :goto_15
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;

    iget-object v13, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->tracking:Ljava/lang/String;

    iget-object v14, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    iget-object v15, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->trackingList:Ljava/util/List;

    iget-object v5, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->label:Ljava/lang/String;

    iget-wide v6, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->id:J

    move-object/from16 v43, v3

    move/from16 v44, v4

    iget-wide v3, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->id:J

    iget-object v10, v10, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->typeLabel:Ljava/lang/String;

    move-object/from16 v21, v10

    move-object v10, v0

    move-object/from16 v45, v2

    move-object/from16 v2, v33

    move/from16 v1, v34

    move-object/from16 v46, v35

    move-object/from16 v16, v5

    move-wide/from16 v17, v6

    move-wide/from16 v19, v3

    move-object/from16 v22, v26

    move-object/from16 v23, v9

    move/from16 v24, v8

    invoke-direct/range {v10 .. v25}, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;-><init>(Lcom/ebay/nautilus/domain/data/search/SearchListing;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;Ljava/lang/String;JJLjava/lang/String;Lcom/ebay/mobile/verticals/search/DragAndDropConfig;Ljava/lang/String;ZLcom/ebay/nautilus/domain/data/search/ItemPivot;)V

    add-int/lit8 v14, v1, 0x1

    .line 540
    invoke-virtual {v0, v1}, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->withTrackableRank(I)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-result-object v0

    iget-object v1, v2, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 541
    invoke-virtual {v0, v1}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->withPlacementSize(Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-result-object v0

    move-object/from16 v3, v43

    .line 534
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v0, v2, Lcom/ebay/common/net/api/search/answers/wire/Position;->uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ITEM_CARD:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    if-ne v0, v1, :cond_21

    add-int/lit8 v4, v44, 0x1

    goto :goto_16

    :cond_21
    move/from16 v4, v44

    :goto_16
    move-object v13, v2

    move/from16 v5, v37

    move/from16 v6, v39

    move/from16 v7, v40

    move-object/from16 v2, v45

    move-object/from16 v15, v46

    const/4 v0, 0x1

    move-object/from16 v1, p1

    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_22
    move/from16 v44, v4

    move/from16 v37, v5

    move/from16 v39, v6

    move/from16 v40, v7

    move-object v2, v13

    move v1, v14

    move-object/from16 v46, v15

    goto :goto_17

    :cond_23
    move/from16 v37, v5

    move/from16 v39, v6

    move/from16 v40, v7

    move-object v2, v13

    move-object/from16 v46, v15

    move v1, v4

    move-object/from16 v26, v16

    move/from16 v44, v17

    .line 559
    :goto_17
    invoke-virtual/range {v46 .. v46}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_25

    move-object/from16 v0, v46

    const/4 v4, 0x1

    .line 561
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 562
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v5, p1

    .line 563
    iget-object v6, v5, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;->rewrite:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;

    .line 564
    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->items:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$AnswerItems;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$AnswerItems;->answer:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;

    .line 565
    iget-object v4, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->item:Ljava/util/List;

    .line 566
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;

    if-eqz v5, :cond_24

    .line 568
    iget-object v7, v5, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    if-eqz v7, :cond_24

    .line 569
    iget-object v7, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->item:Lcom/ebay/nautilus/domain/data/search/SearchItem;

    iget-object v10, v5, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    iget-object v10, v10, Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;->pageci:Ljava/lang/String;

    iput-object v10, v7, Lcom/ebay/nautilus/domain/data/search/SearchItem;->pageci:Ljava/lang/String;

    .line 571
    :cond_24
    iget-object v7, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->item:Lcom/ebay/nautilus/domain/data/search/SearchItem;

    iget-object v10, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->themesTracking:Ljava/util/List;

    move/from16 v15, v37

    move/from16 v14, v39

    move/from16 v13, v40

    .line 572
    invoke-static {v7, v15, v14, v13, v10}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateWireModelToIdealModel(Lcom/ebay/nautilus/domain/data/search/SearchItem;ZZZLjava/util/List;)Lcom/ebay/nautilus/domain/data/search/SearchListing;

    move-result-object v11

    .line 575
    new-instance v7, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;

    iget-object v12, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->impression:Ljava/lang/String;

    iget-object v10, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->tracking:Ljava/lang/String;

    move-object/from16 v47, v4

    iget-object v4, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move/from16 v48, v15

    iget-object v15, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->trackingList:Ljava/util/List;

    iget-object v5, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->label:Ljava/lang/String;

    move-object/from16 v49, v2

    move-object/from16 v50, v3

    iget-wide v2, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->id:J

    move/from16 v52, v8

    move-object/from16 v51, v9

    iget-wide v8, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->id:J

    iget-object v6, v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->typeLabel:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v10

    move-object v10, v7

    move-object/from16 v53, v0

    move v0, v13

    move-object/from16 v13, v16

    move/from16 v54, v0

    move v0, v14

    move-object v14, v4

    move/from16 v4, v48

    move-object/from16 v16, v5

    move-wide/from16 v17, v2

    move-wide/from16 v19, v8

    move-object/from16 v21, v6

    move-object/from16 v23, v51

    move/from16 v24, v52

    invoke-direct/range {v10 .. v25}, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;-><init>(Lcom/ebay/nautilus/domain/data/search/SearchListing;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;Ljava/lang/String;JJLjava/lang/String;Lcom/ebay/mobile/verticals/search/DragAndDropConfig;Ljava/lang/String;ZLcom/ebay/nautilus/domain/data/search/ItemPivot;)V

    add-int/lit8 v2, v1, 0x1

    .line 580
    invoke-virtual {v7, v1}, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->withTrackableRank(I)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-result-object v1

    move-object/from16 v3, v49

    iget-object v5, v3, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 581
    invoke-virtual {v1, v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->withPlacementSize(Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-result-object v1

    move-object/from16 v5, v50

    .line 575
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v39, v0

    move v1, v2

    move-object v2, v3

    move/from16 v37, v4

    move-object v3, v5

    move-object/from16 v4, v47

    move-object/from16 v9, v51

    move/from16 v8, v52

    move-object/from16 v0, v53

    move/from16 v40, v54

    move-object/from16 v5, p1

    goto/16 :goto_18

    :cond_25
    move-object v5, v3

    move/from16 v52, v8

    move-object/from16 v51, v9

    move/from16 v0, v39

    move v14, v1

    move-object/from16 v16, v26

    move/from16 v1, v37

    move/from16 v9, v40

    move/from16 v17, v44

    move-object/from16 v2, p0

    const/4 v3, 0x1

    move-object/from16 v7, p1

    goto/16 :goto_1b

    :pswitch_c
    move-object/from16 v32, v4

    move v1, v5

    move v0, v6

    move/from16 v54, v7

    move/from16 v52, v8

    move-object/from16 v51, v9

    move v4, v14

    move-object v5, v3

    move-object v3, v13

    .line 413
    sget-object v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->REGULAR_ITEM_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    iget-object v6, v3, Lcom/ebay/common/net/api/search/answers/wire/Position;->locator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 417
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_27

    const/4 v6, 0x1

    .line 419
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v7, p1

    .line 420
    iget-object v8, v7, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v8, v8, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Items;

    iget-object v8, v8, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Items;->item:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/answers/wire/TrackableSearchItem;

    .line 422
    iget-object v8, v2, Lcom/ebay/common/net/api/search/answers/wire/TrackableSearchItem;->item:Lcom/ebay/nautilus/domain/data/search/SearchItem;

    if-eqz v7, :cond_26

    .line 424
    iget-object v9, v7, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    if-eqz v9, :cond_26

    .line 425
    iget-object v9, v7, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    iget-object v9, v9, Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;->pageci:Ljava/lang/String;

    iput-object v9, v8, Lcom/ebay/nautilus/domain/data/search/SearchItem;->pageci:Ljava/lang/String;

    :cond_26
    move/from16 v9, v54

    .line 427
    invoke-static {v8, v1, v0, v9}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateWireModelToIdealModel(Lcom/ebay/nautilus/domain/data/search/SearchItem;ZZZ)Lcom/ebay/nautilus/domain/data/search/SearchListing;

    move-result-object v8

    .line 430
    new-instance v15, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;

    iget-object v12, v2, Lcom/ebay/common/net/api/search/answers/wire/TrackableSearchItem;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    iget-object v13, v2, Lcom/ebay/common/net/api/search/answers/wire/TrackableSearchItem;->trackingList:Ljava/util/List;

    move-object v10, v15

    move-object v11, v8

    move-object/from16 v14, v51

    move-object v2, v15

    move/from16 v15, v52

    invoke-direct/range {v10 .. v15}, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;-><init>(Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;Ljava/lang/String;Z)V

    add-int/lit8 v14, v4, 0x1

    .line 432
    invoke-virtual {v2, v4}, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->withTrackableRank(I)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-result-object v2

    iget-object v3, v3, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 433
    invoke-virtual {v2, v3}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->withPlacementSize(Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-result-object v2

    .line 430
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    const/4 v3, 0x1

    .line 434
    iget-object v4, v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->itemIds:Ljava/util/ArrayList;

    iget-wide v10, v8, Lcom/ebay/nautilus/domain/data/search/SearchListing;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_27
    move/from16 v9, v54

    move-object/from16 v2, p0

    const/4 v3, 0x1

    move-object/from16 v7, p1

    move v14, v4

    :goto_19
    add-int/lit8 v17, v17, 0x1

    goto :goto_1b

    :goto_1a
    move v14, v4

    :goto_1b
    move v6, v0

    move-object v0, v2

    move-object v3, v5

    move-object/from16 v4, v32

    move/from16 v8, v52

    move-object/from16 v2, p2

    const/4 v15, 0x1

    move v5, v1

    move-object v1, v7

    move v7, v9

    move-object/from16 v9, v51

    goto/16 :goto_5

    :cond_28
    move-object v2, v0

    move-object v7, v1

    move-object v5, v3

    move-object/from16 v32, v4

    const/4 v3, 0x1

    .line 820
    :goto_1c
    iget-object v0, v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->SearchServiceUvcc:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    .line 821
    iget-object v1, v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v4, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->fitmentCompatibility:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    invoke-interface {v1, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-nez v0, :cond_2a

    if-eqz v1, :cond_29

    goto :goto_1d

    :cond_29
    move-object/from16 v4, v32

    goto/16 :goto_24

    .line 823
    :cond_2a
    :goto_1d
    iget-object v0, v7, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    if-eqz v0, :cond_29

    iget-object v0, v7, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    if-eqz v0, :cond_29

    iget-object v0, v7, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;->rewrite:Ljava/util/List;

    if-eqz v0, :cond_29

    .line 826
    iget-object v0, v7, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;->rewrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;

    .line 828
    sget-object v6, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->QUERY_REWRITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object v8, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    if-ne v6, v8, :cond_2b

    const/4 v6, 0x1

    goto :goto_1f

    :cond_2b
    const/4 v6, 0x0

    :goto_1f
    if-eqz v1, :cond_2c

    .line 829
    sget-object v8, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->FITMENT:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object v9, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    if-ne v8, v9, :cond_2c

    const/4 v8, 0x1

    goto :goto_20

    :cond_2c
    const/4 v8, 0x0

    :goto_20
    if-nez v6, :cond_2e

    if-eqz v8, :cond_2d

    goto :goto_21

    :cond_2d
    move-object/from16 v4, v32

    const/4 v8, 0x0

    goto :goto_23

    .line 833
    :cond_2e
    :goto_21
    invoke-virtual {v4}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->createRewriteResult()Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;

    move-result-object v4

    .line 836
    iget-object v6, v7, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->searchRefinement:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;

    if-eqz v6, :cond_2f

    .line 837
    iget-object v6, v7, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->searchRefinement:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->categoryHistogram:Ljava/util/List;

    invoke-static {v6}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateCategoryHistogramWireModelToIdealModel(Ljava/util/List;)Lcom/ebay/common/model/search/EbayCategoryHistogram;

    move-result-object v14

    goto :goto_22

    :cond_2f
    const/4 v14, 0x0

    .line 840
    :goto_22
    new-instance v6, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    const/4 v8, 0x0

    invoke-direct {v6, v4, v14, v8, v8}, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;-><init>(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;Lcom/ebay/common/model/search/EbayCategoryHistogram;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 841
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->ROW:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-virtual {v6, v4}, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->withPlacementSize(Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-object/from16 v4, v32

    .line 843
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    move-object/from16 v32, v4

    goto :goto_1e

    .line 848
    :goto_24
    iget-object v0, v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translatedLayouts:Ljava/util/HashMap;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v0, v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->rewritesMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    iget-object v0, v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->numberOfRegularItemsSeenMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fill(Ljava/util/ArrayList;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            ")V"
        }
    .end annotation

    .line 1838
    invoke-direct {p0, p2}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->getItems(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1840
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public getAspects()Lcom/ebay/common/model/search/EbayAspectHistogram;
    .locals 1

    .line 2021
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    return-object v0
.end method

.method public getBelowMarketPriceCount()I
    .locals 1

    .line 2106
    iget v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->belowMarketPriceCount:I

    return v0
.end method

.method public getCategories()Lcom/ebay/common/model/search/EbayCategoryHistogram;
    .locals 1

    .line 2015
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->categoryHistogram:Lcom/ebay/common/model/search/EbayCategoryHistogram;

    return-object v0
.end method

.method public getClientLoadXtTags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1957
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->clientLoadXtTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

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

    .line 1905
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->eligibleFeatures:Ljava/util/List;

    return-object v0
.end method

.method public getFitmentAnswers()Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->compatibleProduct:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFitmentInformation()Lcom/ebay/common/model/search/EbayFitmentInformation;
    .locals 1

    .line 2039
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

    return-object v0
.end method

.method public getGuaranteedDeliveryCount()I
    .locals 1

    .line 1939
    iget v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->egdCount:I

    return v0
.end method

.method public getGuaranteedDeliveryDays()I
    .locals 1

    .line 1899
    iget v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->guaranteedDeliveryDays:I

    return v0
.end method

.method public getHeaderHandler()Lcom/ebay/nautilus/kernel/net/IResponseHeaderHandler;
    .locals 0

    return-object p0
.end method

.method public getHotnessCount()I
    .locals 1

    .line 1933
    iget v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->hotnessCount:I

    return v0
.end method

.method public getItemConditionFilters()Lcom/ebay/common/model/search/EbayItemConditionHistogram;
    .locals 1

    .line 1887
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->itemConditionHistogram:Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    return-object v0
.end method

.method public getItemIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2006
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->itemIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2007
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->getItems(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;

    .line 2009
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->itemIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getItemIds()Ljava/util/List;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->getItemIds()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItemLocationFilters()Lcom/ebay/common/model/search/EbayLocationFilterHistogram;
    .locals 1

    .line 1881
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->itemLocationHistogram:Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    return-object v0
.end method

.method public getLayoutMetadata(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->layoutMetaDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    if-nez v0, :cond_0

    .line 1799
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->getItems(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;

    .line 1800
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->layoutMetaDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    :cond_0
    return-object v0
.end method

.method public getLayoutMetadataMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;",
            ">;"
        }
    .end annotation

    .line 1808
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->layoutMetaDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNumberOfRegularItemsSeen(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)I
    .locals 1

    .line 1816
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->numberOfRegularItemsSeenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1819
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->getItems(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;

    .line 1820
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->numberOfRegularItemsSeenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1822
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getPage(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;"
        }
    .end annotation

    .line 1911
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->getItems(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPageMetadata()Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;
    .locals 1

    .line 2055
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriceFilters()Lcom/ebay/common/model/search/EbayPriceFilterHistogram;
    .locals 1

    .line 1875
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->priceFilterHistogram:Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    return-object v0
.end method

.method public getQuantitySoldModuleIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1945
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->qsModIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCorrelationId()Ljava/lang/String;
    .locals 1

    .line 2033
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->trackingCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getRewrites(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;",
            ">;"
        }
    .end annotation

    .line 1783
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->rewritesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 1786
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->getItems(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;

    .line 1787
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->rewritesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 1789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSellerOffer()Lcom/ebay/common/model/search/SellerOffer;
    .locals 2

    .line 1849
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->sellerOfferDetail:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->sellerOfferDetail:Ljava/util/List;

    .line 1852
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->sellerOfferDetail:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SellerOfferDetail;

    invoke-static {v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateWireModelToIdealModel(Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SellerOfferDetail;)Lcom/ebay/common/model/search/SellerOffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSmeCount()I
    .locals 1

    .line 1927
    iget v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->smeCount:I

    return v0
.end method

.method public getTotalCount()I
    .locals 2

    .line 1919
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-wide v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->dedupedMatchCount:J

    long-to-int v0, v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalCountWithDupes()I
    .locals 2

    .line 1830
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1832
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-wide v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->matchCount:J

    long-to-int v0, v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackingResponseHeader()Ljava/lang/String;
    .locals 1

    .line 2027
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->trackingResponseHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getXtTags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1951
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->xtTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hasEbayPlusToggle()Z
    .locals 1

    .line 1869
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->hasEbayPlusToggle:Z

    return v0
.end method

.method public hasKeywordRewrite()Z
    .locals 3

    .line 1980
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;->rewrite:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1985
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;->rewrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;

    .line 1987
    sget-object v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->KEYWORD:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasSaveSearchMessage()Z
    .locals 1

    .line 1863
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->hasSaveSearchMessage:Z

    return v0
.end method

.method public hasSiteRewrite()Z
    .locals 3

    .line 1963
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;->rewrite:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1968
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;->rewrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;

    .line 1970
    sget-object v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isGuaranteedDeliveryEnabled()Z
    .locals 1

    .line 1893
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->guaranteedDeliveryEnabled:Z

    return v0
.end method

.method public isMagEnabled()Z
    .locals 1

    .line 2063
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->magEnabled:Z

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 177
    iput v1, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->ackCode:I

    .line 178
    const-class v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->readJsonStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iput-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    .line 180
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    invoke-virtual {v2}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->getAck()I

    move-result v2

    iput v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->ackCode:I

    .line 187
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v3, Lcom/ebay/mobile/dcs/DcsBoolean;->SearchServiceUvcc:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;->rewrite:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;

    .line 191
    sget-object v5, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->QUERY_REWRITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object v6, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    if-ne v5, v6, :cond_0

    .line 193
    invoke-virtual {v4}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->createRewriteResult()Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;

    move-result-object v2

    .line 196
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->requestDifference:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;->categoryId:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Differences;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->requestDifference:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;->categoryId:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Differences;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Differences;->add:Ljava/util/List;

    .line 197
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->requestDifference:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;->categoryId:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Differences;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Differences;->add:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 201
    iput-wide v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->searchedCategoryId:J

    .line 208
    :cond_1
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    if-eqz v2, :cond_9

    .line 210
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->eligibleFeature:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$EligibleFeature;

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->eligibleFeature:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$EligibleFeature;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$EligibleFeature;->constraint:Ljava/util/List;

    iput-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->eligibleFeatures:Ljava/util/List;

    .line 213
    :cond_2
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->searchRefinement:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;

    if-eqz v2, :cond_9

    .line 215
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->searchRefinement:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;

    .line 217
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->priceFilterHistogram:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 218
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->priceFilterHistogram:Ljava/util/List;

    invoke-static {v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translatePriceFilterHistogramWireModelToIdealModel(Ljava/util/List;)Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    move-result-object v4

    iput-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->priceFilterHistogram:Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    .line 221
    :cond_3
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->categoryHistogram:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 226
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->categoryHistogram:Ljava/util/List;

    invoke-static {v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateCategoryHistogramWireModelToIdealModel(Ljava/util/List;)Lcom/ebay/common/model/search/EbayCategoryHistogram;

    move-result-object v4

    iput-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->categoryHistogram:Lcom/ebay/common/model/search/EbayCategoryHistogram;

    .line 228
    iget-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->categoryHistogram:Lcom/ebay/common/model/search/EbayCategoryHistogram;

    iget-wide v5, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->searchedCategoryId:J

    invoke-virtual {v4, v5, v6}, Lcom/ebay/common/model/search/EbayCategoryHistogram;->reconstructWithTwoLevels(J)V

    .line 231
    :cond_4
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->scopedAspectHistogram:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->scopedAspectHistogram:Ljava/util/List;

    .line 232
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 233
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->scopedAspectHistogram:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;

    invoke-static {v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateWireModelToIdealModel(Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;)Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object v4

    iput-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 235
    :cond_5
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->itemLocationHistogram:Ljava/util/List;

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->itemLocationHistogram:Ljava/util/List;

    .line 236
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 237
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->itemLocationHistogram:Ljava/util/List;

    .line 238
    invoke-static {v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateItemLocationHistogramWireModelToIdealModel(Ljava/util/List;)Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    move-result-object v4

    iput-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->itemLocationHistogram:Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    .line 240
    :cond_6
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->conditionHistogram:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->conditionHistogram:Ljava/util/List;

    .line 241
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 242
    iget-object v4, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->conditionHistogram:Ljava/util/List;

    .line 243
    invoke-static {v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->translateItemConditionHistogramWireModelToIdealModel(Ljava/util/List;)Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    move-result-object v4

    iput-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->itemConditionHistogram:Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    .line 247
    :cond_7
    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;->guaranteedDeliveryHistogram:Ljava/util/List;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->guaranteedDeliveryEnabled:Z

    .line 249
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->fitmentResponse:Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v4, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->fitmentCompatibility:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    .line 250
    invoke-interface {v2, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 251
    new-instance v2, Lcom/ebay/common/model/search/EbayFitmentInformation;

    iget-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->fitmentResponse:Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse;

    invoke-direct {v2, v4}, Lcom/ebay/common/model/search/EbayFitmentInformation;-><init>(Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse;)V

    iput-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

    .line 256
    :cond_9
    iput v3, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->hotnessCount:I

    .line 257
    iput v3, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->smeCount:I

    .line 258
    iput v3, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->egdCount:I

    .line 259
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->labeledItem:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->labeledItem:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;->answer:Ljava/util/List;

    if-eqz v2, :cond_13

    .line 263
    iget-object v2, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v3, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->authenticityVerified:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    .line 264
    iget-object v3, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v4, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->authorizedSeller:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v3, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v3

    .line 265
    iget-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v5, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->freeReturnsIcd:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v4, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v10

    .line 266
    iget-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v5, Lcom/ebay/mobile/dcs/Dcs$Search$B;->thresholdSignalTest:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v4, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v11

    .line 267
    iget-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v5, Lcom/ebay/mobile/dcs/Dcs$Search$B;->serviceDeliveredHotnessSignals:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v4, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v12

    .line 268
    iget-object v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->universalSearchResponse:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->labeledItem:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;->answer:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;

    .line 270
    iget-object v5, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->item:Ljava/util/List;

    if-eqz v5, :cond_12

    .line 272
    iget-object v14, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    if-nez v11, :cond_a

    if-eqz v12, :cond_b

    :cond_a
    if-eqz v14, :cond_b

    .line 274
    iget-object v5, v14, Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;->xtTag:Ljava/util/List;

    if-eqz v5, :cond_b

    .line 276
    iget-object v5, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->clientLoadXtTags:Ljava/util/HashSet;

    iget-object v6, v14, Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;->xtTag:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 278
    :cond_b
    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;->item:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;

    .line 280
    new-instance v9, Lcom/ebay/nautilus/domain/data/search/SearchListing;

    invoke-direct {v9}, Lcom/ebay/nautilus/domain/data/search/SearchListing;-><init>()V

    .line 281
    iget-object v8, v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;->item:Lcom/ebay/nautilus/domain/data/search/SearchItem;

    move-object v4, v9

    move-object v5, v8

    move v6, v3

    move v7, v2

    move-object/from16 v16, v8

    move v8, v10

    move-object v1, v9

    move v9, v12

    .line 283
    invoke-static/range {v4 .. v9}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->setSearchListingHotnessFields(Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/search/SearchItem;ZZZZ)V

    .line 285
    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hotnessSignals:Lcom/ebay/nautilus/domain/data/search/HotnessSignals;

    if-eqz v4, :cond_e

    if-eqz v14, :cond_c

    if-eqz v11, :cond_c

    .line 288
    sget-object v5, Lcom/ebay/nautilus/domain/data/search/HotnessSignal;->QTY_SOLD_TOTAL_SIGNAL:Lcom/ebay/nautilus/domain/data/search/HotnessSignal;

    .line 289
    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/search/HotnessSignals;->getPrimeHotnessSignal()Lcom/ebay/nautilus/domain/data/search/HotnessSignal;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ebay/nautilus/domain/data/search/HotnessSignal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 290
    iget-object v5, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->qsModIds:Ljava/util/List;

    iget-object v6, v14, Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;->moduleInstance:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_c
    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/search/HotnessSignals;->incrementHotnessCount()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 293
    iget v5, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->hotnessCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->hotnessCount:I

    goto :goto_3

    :cond_d
    const/4 v6, 0x1

    .line 295
    :goto_3
    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/search/HotnessSignals;->incrementSMECount()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 296
    iget v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->smeCount:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->smeCount:I

    :cond_e
    move-object/from16 v4, v16

    if-eqz v4, :cond_10

    .line 299
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    if-eqz v5, :cond_10

    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->deliveryEstimate:Ljava/util/List;

    if-eqz v5, :cond_10

    .line 303
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchItem;->shippingInfo:Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/search/SearchItem$ShippingInfo;->deliveryEstimate:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;

    const-string v7, "GuaranteedDelivery"

    .line 305
    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/search/SearchItem$DeliveryEstimate;->shippingProgram:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 307
    iget v6, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->egdCount:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->egdCount:I

    goto :goto_4

    .line 312
    :cond_10
    invoke-static {v1, v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->setDealMessageForBelowMarketPrice(Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/search/SearchItem;)V

    .line 313
    iget-boolean v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hasDealMessageIndicator:Z

    if-eqz v1, :cond_11

    .line 314
    iget v1, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->belowMarketPriceCount:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->belowMarketPriceCount:I

    goto :goto_5

    :cond_11
    const/4 v4, 0x1

    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_12
    const/4 v4, 0x1

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_13
    return-void
.end method

.method public readHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V
    .locals 5

    .line 2069
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/net/IHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/kernel/net/IHeader;

    .line 2071
    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/net/IHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/net/IHeader;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v3, "x-ebay-svc-tracking-data"

    .line 2073
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2074
    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/net/IHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->trackingResponseHeader:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "x-ebay-c-request-id"

    .line 2075
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2077
    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/net/IHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2079
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    .line 2081
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2083
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2085
    aget-object v3, v1, v2

    const-string/jumbo v4, "rci="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_3

    .line 2087
    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;->trackingCorrelationId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2094
    :cond_4
    invoke-static {}, Lcom/ebay/mobile/viewitem/util/ViewItemRequestUtil;->getInstance()Lcom/ebay/mobile/viewitem/util/ViewItemRequestUtil;

    move-result-object v0

    const-string/jumbo v1, "rlogid"

    invoke-interface {p1, v1}, Lcom/ebay/nautilus/kernel/net/IHeaders;->getLastHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/viewitem/util/ViewItemRequestUtil;->dumpEnabledForSearch(Ljava/lang/String;)V

    return-void
.end method
