.class final Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;
.super Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchAdQuery"
.end annotation


# instance fields
.field public categoryId:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public searchResultCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-direct {p0, v0}, Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;
    .locals 10

    .line 445
    new-instance v9, Lcom/ebay/common/net/api/rtm/GetRtm$GetSearchRtmRequest;

    iget-object v2, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;->keywords:Ljava/lang/String;

    iget v3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;->searchResultCount:I

    iget-object v4, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;->categoryId:Ljava/lang/String;

    iget-object v6, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$SearchAdQuery;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 452
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/NautilusKernel;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/ebay/common/net/api/rtm/GetRtm$GetSearchRtmRequest;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public validateResult(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/util/List;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;",
            "Ljava/util/List<",
            "Lcom/ebay/common/rtm/RtmContent$Ad;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 461
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 463
    new-instance v1, Lcom/ebay/nautilus/kernel/net/LogTrackError;

    invoke-virtual/range {p1 .. p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getOperationName()Ljava/lang/String;

    move-result-object v5

    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getOperationName()Ljava/lang/String;

    move-result-object v6

    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getRequestUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    .line 466
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "rtmAdRequest"

    const-string/jumbo v10, "rtmAdErrTooManyAds"

    move-object v11, v3

    check-cast v11, Ljava/lang/Throwable;

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/ebay/nautilus/kernel/net/LogTrackError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    invoke-static {v1}, Lcom/ebay/nautilus/kernel/net/LogTrackManager;->addLogErrorData(Lcom/ebay/nautilus/kernel/net/LogTrackError;)V

    .line 471
    sget-object v1, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_0

    .line 472
    sget-object v1, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v4, "RTM exceeded absolute max ad instance limit (10)"

    invoke-virtual {v1, v4}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 475
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v1, 0x0

    .line 480
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/rtm/RtmContent$Ad;

    iget-boolean v2, v2, Lcom/ebay/common/rtm/RtmContent$Ad;->isPla:Z

    .line 481
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/rtm/RtmContent$Ad;

    .line 483
    iget-boolean v6, v4, Lcom/ebay/common/rtm/RtmContent$Ad;->isPla:Z

    if-ne v6, v2, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_5

    .line 486
    new-instance v0, Lcom/ebay/nautilus/kernel/net/LogTrackError;

    invoke-virtual/range {p1 .. p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getOperationName()Ljava/lang/String;

    move-result-object v8

    .line 487
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getOperationName()Ljava/lang/String;

    move-result-object v9

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getRequestUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    .line 489
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "rtmAdRequest"

    const-string/jumbo v13, "rtmAdErrMixedModels"

    move-object v14, v3

    check-cast v14, Ljava/lang/Throwable;

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/ebay/nautilus/kernel/net/LogTrackError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 493
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/net/LogTrackManager;->addLogErrorData(Lcom/ebay/nautilus/kernel/net/LogTrackError;)V

    .line 494
    sget-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_4

    .line 495
    sget-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "RTM Ad content contained mixed ad results"

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    if-eqz v2, :cond_7

    .line 501
    iget-object v6, v4, Lcom/ebay/common/rtm/RtmContent$Ad;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v4, Lcom/ebay/common/rtm/RtmContent$Ad;->thumbnailURL:Ljava/net/URL;

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/ebay/common/rtm/RtmContent$Ad;->externalLink:Ljava/net/URL;

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/ebay/common/rtm/RtmContent$Ad;->formattedPriceString:Ljava/lang/String;

    .line 504
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v4, v4, Lcom/ebay/common/rtm/RtmContent$Ad;->retailerName:Ljava/lang/String;

    .line 506
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 510
    :cond_7
    iget-object v6, v4, Lcom/ebay/common/rtm/RtmContent$Ad;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v4, Lcom/ebay/common/rtm/RtmContent$Ad;->subTitle:Ljava/lang/String;

    .line 511
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v4, Lcom/ebay/common/rtm/RtmContent$Ad;->externalLink:Ljava/net/URL;

    if-eqz v6, :cond_6

    iget-object v4, v4, Lcom/ebay/common/rtm/RtmContent$Ad;->externalLinkName:Ljava/lang/String;

    .line 513
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_1
    if-nez v5, :cond_2

    .line 519
    new-instance v0, Lcom/ebay/nautilus/kernel/net/LogTrackError;

    invoke-virtual/range {p1 .. p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getOperationName()Ljava/lang/String;

    move-result-object v7

    .line 520
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getOperationName()Ljava/lang/String;

    move-result-object v8

    .line 521
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getRequestUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    .line 522
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "rtmAdRequest"

    const-string/jumbo v12, "rtmAdErrMissingFields"

    move-object v13, v3

    check-cast v13, Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/ebay/nautilus/kernel/net/LogTrackError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/net/LogTrackManager;->addLogErrorData(Lcom/ebay/nautilus/kernel/net/LogTrackError;)V

    .line 527
    sget-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_8

    .line 528
    sget-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "RTM Ad content is missing one or more required fields"

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_8
    return v1

    :cond_9
    return v5
.end method
