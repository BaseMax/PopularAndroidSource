.class public Lcom/ebay/common/net/api/search/SearchServiceApi;
.super Ljava/lang/Object;
.source "SearchServiceApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bopisMetroAutoCorrection(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/common/net/api/search/SearchResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 430
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ebay/common/net/api/search/SearchServiceApi;->doBopisFallback(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchResult;->setBopisMetroCorrectedSearch()V

    :cond_0
    return-object p0
.end method

.method private static doBopisFallback(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/common/net/api/search/SearchResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 462
    invoke-static/range {v1 .. v6}, Lcom/ebay/common/net/api/search/SearchServiceApi;->executeSearch(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/common/net/api/search/SearchImageHolder;)Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object p0

    .line 465
    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p0
.end method

.method private static doEbayNowFallback(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/common/net/api/search/SearchResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 444
    invoke-virtual {p1}, Lcom/ebay/common/net/api/search/SearchParameters;->clone()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v1

    const/4 p1, 0x0

    .line 446
    iput-boolean p1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 447
    invoke-static/range {v0 .. v5}, Lcom/ebay/common/net/api/search/SearchServiceApi;->executeSearch(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/common/net/api/search/SearchImageHolder;)Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object p0

    .line 450
    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static doFallback(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Ljava/util/List;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/common/net/api/search/SearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Lcom/ebay/common/net/api/search/SearchParameters;",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            "Lcom/ebay/common/net/api/search/ISearchEventTracker;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            ")",
            "Lcom/ebay/common/net/api/search/SearchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 393
    invoke-static {p1, p4}, Lcom/ebay/common/net/api/search/SearchServiceApi;->isBopisMetroError(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {p0, p1, p2, p3, p5}, Lcom/ebay/common/net/api/search/SearchServiceApi;->bopisMetroAutoCorrection(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object p0

    goto :goto_0

    .line 395
    :cond_0
    invoke-static {p1, p4}, Lcom/ebay/common/net/api/search/SearchServiceApi;->isEbayNowMetroError(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/util/List;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 396
    invoke-static {p0, p1, p2, p3, p5}, Lcom/ebay/common/net/api/search/SearchServiceApi;->eBayNowMetroAutoCorrection(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static eBayNowMetroAutoCorrection(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/common/net/api/search/SearchResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 411
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ebay/common/net/api/search/SearchServiceApi;->doEbayNowFallback(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchResult;->setEbayNowMetroCorrectedSearch()V

    :cond_0
    return-object p0
.end method

.method public static executeSearch(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/common/net/api/search/SearchImageHolder;)Lcom/ebay/common/net/api/search/SearchResult;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    .line 510
    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;->GBH:Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;

    invoke-interface {v9, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    .line 512
    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;->GBH:Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;

    invoke-interface {v9, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->isSite()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 514
    iget-object v0, v8, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    .line 516
    :cond_1
    new-instance v15, Lcom/ebay/common/net/api/search/SearchServiceQuery;

    iget v7, v8, Lcom/ebay/common/net/api/search/SearchParameters;->searchType:I

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/ebay/common/net/api/search/SearchServiceQuery;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/common/net/api/search/SearchImageHolder;I)V

    .line 518
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->startQuery()V

    .line 520
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getSellerOffer()Lcom/ebay/common/model/search/SellerOffer;

    move-result-object v7

    .line 521
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getAspects()Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object v11

    .line 522
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->hasLocalItems()Z

    move-result v5

    .line 523
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->hasSaveSearchMessage()Z

    move-result v6

    .line 525
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getTotalCount()I

    move-result v1

    .line 526
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getTotalCountWithDupes()J

    move-result-wide v2

    long-to-int v2, v2

    .line 528
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getDataList()Ljava/util/List;

    move-result-object v3

    .line 529
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getCategories()Lcom/ebay/common/model/search/EbayCategoryHistogram;

    move-result-object v0

    const/4 v4, 0x0

    .line 535
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getRewrites()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 539
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    move-object/from16 v24, v4

    .line 544
    iget v4, v8, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    move-object/from16 v25, v13

    iget-object v13, v8, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    invoke-virtual {v10, v4, v13}, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->updatePagination(ILcom/ebay/common/net/api/search/SearchParameters$SearchPagination;)V

    .line 548
    sget-object v4, Lcom/ebay/mobile/dcs/DcsBoolean;->SearchServiceUvcc:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v9, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->QUERY_REWRITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object v13, v10, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v13, v13, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->rewriteType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    if-ne v4, v13, :cond_2

    .line 550
    iget-object v4, v10, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    goto :goto_3

    .line 553
    :cond_2
    iget-object v4, v10, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-boolean v4, v4, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->promotedToPrimary:Z

    if-eqz v4, :cond_4

    .line 555
    iget-object v4, v10, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v4, :cond_3

    .line 557
    iget-object v4, v10, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object v4, v15, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 558
    iget-object v4, v15, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v13, v8, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    iput-object v13, v4, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    .line 560
    :cond_3
    invoke-virtual {v10, v8}, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->setSearchParameters(Lcom/ebay/common/net/api/search/SearchParameters;)V

    .line 561
    iget-boolean v14, v10, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->isRecoursable:Z

    goto :goto_2

    .line 563
    :cond_4
    iget-boolean v4, v10, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->isSiteConstraint:Z

    if-eqz v4, :cond_5

    .line 564
    invoke-virtual {v10, v8}, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->buildSiteConstraintParams(Lcom/ebay/common/net/api/search/SearchParameters;)V

    :cond_5
    :goto_2
    move-object/from16 v4, v24

    :goto_3
    move-object/from16 v13, v25

    goto :goto_1

    :cond_6
    move-object/from16 v24, v4

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    :goto_4
    if-eqz v4, :cond_8

    .line 569
    iget-object v9, v15, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v9, :cond_8

    .line 570
    iget-object v9, v15, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object v4, v9, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 572
    :cond_8
    iget-object v4, v8, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v4, :cond_b

    if-nez v0, :cond_9

    .line 578
    iget-object v4, v8, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object v4, v4, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 580
    new-instance v0, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;-><init>()V

    .line 581
    iget-object v4, v8, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-wide v9, v4, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    iput-wide v9, v0, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->id:J

    .line 582
    iget-object v4, v8, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object v4, v4, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    iput-object v4, v0, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->name:Ljava/lang/String;

    .line 583
    iput v1, v0, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->count:I

    .line 584
    new-instance v4, Lcom/ebay/common/model/search/EbayCategoryHistogram;

    invoke-direct {v4}, Lcom/ebay/common/model/search/EbayCategoryHistogram;-><init>()V

    .line 585
    iget-object v9, v4, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v4

    move/from16 v28, v6

    move-object/from16 v27, v7

    move-object/from16 v26, v11

    goto :goto_7

    :cond_9
    if-eqz v0, :cond_b

    .line 593
    iget-object v4, v8, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-wide v9, v4, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    const-wide/16 v16, 0x0

    cmp-long v4, v9, v16

    if-lez v4, :cond_b

    iget-object v4, v8, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object v4, v4, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 595
    iget-object v4, v0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    .line 597
    iget-object v4, v0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    move-object/from16 v26, v11

    .line 599
    iget-wide v10, v9, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    iget-object v13, v8, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    move/from16 v28, v6

    move-object/from16 v27, v7

    iget-wide v6, v13, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    cmp-long v6, v10, v6

    if-nez v6, :cond_a

    .line 601
    iget-object v4, v8, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object v6, v9, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    iput-object v6, v4, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object/from16 v11, v26

    move-object/from16 v7, v27

    move/from16 v6, v28

    goto :goto_5

    :cond_b
    move/from16 v28, v6

    move-object/from16 v27, v7

    move-object/from16 v26, v11

    :goto_6
    move-object v9, v0

    .line 612
    :goto_7
    iget-object v0, v15, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v0, :cond_c

    if-eqz v14, :cond_c

    iget-object v0, v8, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 613
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v8, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    iget-object v4, v15, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v15, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    if-nez v0, :cond_c

    .line 614
    invoke-static/range {p1 .. p1}, Lcom/ebay/common/net/api/search/SearchServiceApi;->isValidMotorAnswerParameter(Lcom/ebay/common/net/api/search/SearchParameters;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 615
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v4, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->useQuotationMarksForRecourseKeywords:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v0, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 620
    :cond_c
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getGuaranteedDeliveryDays()I

    move-result v0

    if-eqz v0, :cond_d

    .line 622
    iput v0, v8, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    .line 624
    :cond_d
    new-instance v24, Lcom/ebay/common/net/api/search/SearchResult;

    .line 625
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getPriceFilters()Lcom/ebay/common/model/search/EbayPriceFilterHistogram;

    move-result-object v10

    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getItemLocations()Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    move-result-object v11

    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getItemConditions()Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    move-result-object v13

    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getEligibleFeatures()Ljava/util/List;

    move-result-object v14

    .line 626
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->isGuaranteedDeliveryEnabled()Z

    move-result v16

    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getFitmentInformation()Lcom/ebay/common/model/search/EbayFitmentInformation;

    move-result-object v17

    const/16 v18, 0x0

    iget-object v7, v15, Lcom/ebay/common/net/api/search/SearchServiceQuery;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 627
    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getFitmentAnswers()Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

    move-result-object v19

    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getPageMeta()Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    move-result-object v20

    invoke-virtual {v15}, Lcom/ebay/common/net/api/search/SearchServiceQuery;->getLayoutMeta()Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    move-result-object v21

    if-eqz v12, :cond_e

    .line 628
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v22, v0

    goto :goto_8

    :cond_e
    const/16 v22, 0x0

    :goto_8
    move-object/from16 v0, v24

    move-object/from16 v4, p1

    move/from16 v6, v28

    move-object/from16 v23, v7

    move-object/from16 v7, v27

    move-object v8, v9

    move-object/from16 v9, v26

    move-object v12, v13

    move-object v13, v14

    move/from16 v14, v16

    move-object/from16 v25, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v25

    move-object/from16 v18, v23

    invoke-direct/range {v0 .. v22}, Lcom/ebay/common/net/api/search/SearchResult;-><init>(IILjava/util/List;Lcom/ebay/common/net/api/search/SearchParameters;ZZLcom/ebay/common/model/search/SellerOffer;Lcom/ebay/common/model/search/EbayCategoryHistogram;Lcom/ebay/common/model/search/EbayAspectHistogram;Lcom/ebay/common/model/search/EbayPriceFilterHistogram;Lcom/ebay/common/model/search/EbayLocationFilterHistogram;Lcom/ebay/common/model/search/EbayItemConditionHistogram;Ljava/util/List;ZLcom/ebay/common/model/search/EbayFitmentInformation;Ljava/lang/String;Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;I)V

    return-object v24
.end method

.method private static isBopisMetroError(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/SearchParameters;",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    .line 498
    iget-boolean p0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "243051"

    .line 502
    invoke-static {p1, p0}, Lcom/ebay/common/util/EbayErrorUtil;->containsError(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isEbayNowMetroError(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/SearchParameters;",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    .line 489
    iget-boolean p0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "243058"

    .line 493
    invoke-static {p1, p0}, Lcom/ebay/common/util/EbayErrorUtil;->containsError(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSaasPostalCodeWarning(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/SearchParameters;",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    .line 478
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 480
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getSeverity()Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;->Warning:Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result p1

    const v0, 0x3b55d

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidMotorAnswerParameter(Lcom/ebay/common/net/api/search/SearchParameters;)Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    iget-object p0, p0, Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;->properties:Ljava/util/Map;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
