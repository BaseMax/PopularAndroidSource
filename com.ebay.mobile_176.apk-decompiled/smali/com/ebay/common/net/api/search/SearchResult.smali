.class public Lcom/ebay/common/net/api/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;,
        Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;,
        Lcom/ebay/common/net/api/search/SearchResult$RedLaserCorrectedSearch;
    }
.end annotation


# instance fields
.field public final aspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

.field private bopisCorrectedSearch:Z

.field public final categories:Lcom/ebay/common/model/search/EbayCategoryHistogram;

.field private final correctedSearchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

.field private eBayNowCorrectedSearch:Z

.field public final eligibleFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            ">;"
        }
    .end annotation
.end field

.field public final fitmentAnswers:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

.field public final fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

.field public final guaranteedDeliveryEnabled:Z

.field public final hasEbayPlusToggle:Z

.field public final hasLocalItems:Z

.field public final hasSaveSearchMessage:Z

.field private invalidPostalCodeCorrectedSearch:Z

.field public final isImageSearch:Z

.field public final isSellerItems:Z

.field public final itemConditions:Lcom/ebay/common/model/search/EbayItemConditionHistogram;

.field public final itemLocations:Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

.field public final layoutMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

.field public final list:Lcom/ebay/common/model/ListResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/common/model/ListResult<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;"
        }
    .end annotation
.end field

.field public final magEnabled:Z

.field public final pageMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

.field public final priceFilters:Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

.field private redLaserCorrectedSearch:Lcom/ebay/common/net/api/search/SearchResult$RedLaserCorrectedSearch;

.field public final resultOwner:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;

.field public final resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

.field public final rewriteCount:I

.field private final searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

.field public final searchUrl:Ljava/lang/String;

.field public final sellerOffer:Lcom/ebay/common/model/search/SellerOffer;

.field public final totalItemCount:I

.field public final totalItemCountWithDupes:I


# direct methods
.method public constructor <init>(IILjava/util/List;Lcom/ebay/common/net/api/search/SearchParameters;ZZLcom/ebay/common/model/search/SellerOffer;Lcom/ebay/common/model/search/EbayCategoryHistogram;Lcom/ebay/common/model/search/EbayAspectHistogram;Lcom/ebay/common/model/search/EbayPriceFilterHistogram;Lcom/ebay/common/model/search/EbayLocationFilterHistogram;Lcom/ebay/common/model/search/EbayItemConditionHistogram;Ljava/util/List;ZLcom/ebay/common/model/search/EbayFitmentInformation;Ljava/lang/String;Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;",
            "Lcom/ebay/common/net/api/search/SearchParameters;",
            "ZZ",
            "Lcom/ebay/common/model/search/SellerOffer;",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram;",
            "Lcom/ebay/common/model/search/EbayAspectHistogram;",
            "Lcom/ebay/common/model/search/EbayPriceFilterHistogram;",
            "Lcom/ebay/common/model/search/EbayLocationFilterHistogram;",
            "Lcom/ebay/common/model/search/EbayItemConditionHistogram;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            ">;Z",
            "Lcom/ebay/common/model/search/EbayFitmentInformation;",
            "Ljava/lang/String;",
            "Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;",
            "Lcom/ebay/common/net/api/search/SearchParameters;",
            "Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v3, Lcom/ebay/common/model/ListResult;

    new-instance v4, Ljava/util/ArrayList;

    move-object v5, p3

    invoke-direct {v4, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, p1, v4}, Lcom/ebay/common/model/ListResult;-><init>(ILjava/util/List;)V

    iput-object v3, v0, Lcom/ebay/common/net/api/search/SearchResult;->list:Lcom/ebay/common/model/ListResult;

    .line 155
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 156
    iget-object v3, v2, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/ebay/common/net/api/search/SearchResult;->isSellerItems:Z

    .line 157
    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Lcom/ebay/common/net/api/search/SearchResult;->isImageSearch:Z

    move v2, p5

    .line 158
    iput-boolean v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->hasLocalItems:Z

    move v2, p6

    .line 159
    iput-boolean v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->hasSaveSearchMessage:Z

    move-object v2, p7

    .line 160
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->sellerOffer:Lcom/ebay/common/model/search/SellerOffer;

    move-object v2, p8

    .line 161
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->categories:Lcom/ebay/common/model/search/EbayCategoryHistogram;

    move-object v2, p9

    .line 162
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->aspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-object/from16 v2, p10

    .line 163
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->priceFilters:Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    move-object/from16 v2, p11

    .line 164
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->itemLocations:Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    move-object/from16 v2, p12

    .line 165
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->itemConditions:Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    move-object/from16 v2, p13

    .line 166
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->eligibleFeatures:Ljava/util/List;

    move/from16 v2, p14

    .line 167
    iput-boolean v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->guaranteedDeliveryEnabled:Z

    move-object/from16 v2, p15

    .line 168
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

    move-object/from16 v2, p16

    .line 169
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->searchUrl:Ljava/lang/String;

    move-object/from16 v2, p17

    .line 170
    iput-object v2, v0, Lcom/ebay/common/net/api/search/SearchResult;->resultOwner:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;

    move-object/from16 v3, p18

    .line 171
    iput-object v3, v0, Lcom/ebay/common/net/api/search/SearchResult;->correctedSearchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 172
    iput v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->totalItemCount:I

    move v1, p2

    .line 173
    iput v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->totalItemCountWithDupes:I

    move-object/from16 v1, p19

    .line 174
    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->fitmentAnswers:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

    move/from16 v1, p22

    .line 175
    iput v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->rewriteCount:I

    move-object/from16 v1, p20

    .line 176
    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->pageMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    move-object/from16 v1, p21

    .line 177
    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->layoutMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    .line 178
    invoke-interface/range {p17 .. p17}, Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;->isMagEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->magEnabled:Z

    .line 179
    invoke-interface/range {p17 .. p17}, Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;->hasEbayPlusToggle()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->hasEbayPlusToggle:Z

    .line 181
    invoke-interface/range {p17 .. p17}, Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;->getLastResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    goto :goto_1

    .line 185
    :cond_1
    sget-object v1, Lcom/ebay/nautilus/kernel/content/ResultStatus;->SUCCESS:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/ebay/common/model/ListResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/ebay/common/model/ListResult;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lcom/ebay/common/net/api/search/SearchResult;->list:Lcom/ebay/common/model/ListResult;

    .line 108
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 110
    iput-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchResult;->isSellerItems:Z

    .line 111
    iput-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchResult;->isImageSearch:Z

    .line 112
    iput-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchResult;->hasLocalItems:Z

    .line 113
    iput-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchResult;->hasSaveSearchMessage:Z

    .line 114
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->sellerOffer:Lcom/ebay/common/model/search/SellerOffer;

    .line 115
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->categories:Lcom/ebay/common/model/search/EbayCategoryHistogram;

    .line 116
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->aspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 117
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->priceFilters:Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    .line 118
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->itemLocations:Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    .line 119
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->itemConditions:Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    .line 120
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->eligibleFeatures:Ljava/util/List;

    .line 121
    iput-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchResult;->guaranteedDeliveryEnabled:Z

    .line 122
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

    .line 123
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->searchUrl:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->fitmentAnswers:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

    .line 125
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->resultOwner:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;

    .line 126
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->correctedSearchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 127
    iput v2, p0, Lcom/ebay/common/net/api/search/SearchResult;->totalItemCount:I

    .line 128
    iput v2, p0, Lcom/ebay/common/net/api/search/SearchResult;->totalItemCountWithDupes:I

    .line 129
    iput v2, p0, Lcom/ebay/common/net/api/search/SearchResult;->rewriteCount:I

    .line 130
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->pageMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    .line 131
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->layoutMeta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    .line 132
    iput-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchResult;->magEnabled:Z

    .line 133
    iput-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchResult;->hasEbayPlusToggle:Z

    return-void
.end method


# virtual methods
.method public clearBopisCorrectedSearch()V
    .locals 1

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->bopisCorrectedSearch:Z

    return-void
.end method

.method public clearEbayNowMetroCorrectedSearch()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->eBayNowCorrectedSearch:Z

    return-void
.end method

.method public clearPostalCodeCorrectedSearch()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->invalidPostalCodeCorrectedSearch:Z

    return-void
.end method

.method public getBopisMetroCorrectedSearch()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->bopisCorrectedSearch:Z

    return v0
.end method

.method public getEbayNowMetroCorrectedSearch()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->eBayNowCorrectedSearch:Z

    return v0
.end method

.method public getInvalidPostalCodeCorrectedSearch()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->invalidPostalCodeCorrectedSearch:Z

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchResult;->getSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchResult;->getSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchResult;->getSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getRedLaserCorrectedSearch()Lcom/ebay/common/net/api/search/SearchResult$RedLaserCorrectedSearch;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->redLaserCorrectedSearch:Lcom/ebay/common/net/api/search/SearchResult$RedLaserCorrectedSearch;

    return-object v0
.end method

.method public getSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->correctedSearchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->correctedSearchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    return-object v0
.end method

.method public isBarcodeSearch()Z
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchResult;->getSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchResult;->getSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBopisMetroCorrectedSearch()V
    .locals 1

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->bopisCorrectedSearch:Z

    return-void
.end method

.method public setEbayNowMetroCorrectedSearch()V
    .locals 1

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->eBayNowCorrectedSearch:Z

    return-void
.end method

.method public setInvalidPostalCodeCorrectedSearch()V
    .locals 1

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResult;->invalidPostalCodeCorrectedSearch:Z

    return-void
.end method

.method public setRedLaserCorrectedSearch(Lcom/ebay/common/net/api/search/SearchResult$RedLaserCorrectedSearch;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->redLaserCorrectedSearch:Lcom/ebay/common/net/api/search/SearchResult$RedLaserCorrectedSearch;

    return-void
.end method
