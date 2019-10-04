.class public Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "RewriteSrpListItem.java"


# instance fields
.field public final isKeywordConstraint:Z

.field public final isRecoursable:Z

.field public final isSiteConstraint:Z

.field public rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;Lcom/ebay/common/model/search/EbayCategoryHistogram;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram;",
            "Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-static {p1, p2}, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->instanceFrom(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;Lcom/ebay/common/model/search/EbayCategoryHistogram;)Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;",
            "Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;)V"
        }
    .end annotation

    .line 32
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->REWRITE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    .line 34
    sget-object p2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object p3, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->rewriteType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->isSiteConstraint:Z

    .line 35
    sget-object p2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->KEYWORD:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object p3, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->rewriteType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    if-ne p2, p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->isKeywordConstraint:Z

    .line 36
    iget-boolean p1, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->isRecoursable:Z

    iput-boolean p1, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->isRecoursable:Z

    return-void
.end method


# virtual methods
.method public buildSiteConstraintParams(Lcom/ebay/common/net/api/search/SearchParameters;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    invoke-virtual {p1}, Lcom/ebay/common/net/api/search/SearchParameters;->clone()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 42
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v0, 0x2

    iput v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    return-void
.end method

.method public getRewriteMessage()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->rewriteMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setSearchParameters(Lcom/ebay/common/net/api/search/SearchParameters;)V
    .locals 2

    .line 48
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SPELL_CHECK:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->rewriteType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-boolean v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->isAutoRun:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    .line 50
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iput-object p1, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    return-void
.end method

.method public updatePagination(ILcom/ebay/common/net/api/search/SearchParameters$SearchPagination;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iput p1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    .line 58
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object p2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    :cond_0
    return-void
.end method
