.class public Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;
.super Lcom/ebay/common/net/api/search/SearchServiceRequest;
.source "GetSearchAnswersRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/net/api/search/SearchServiceRequest<",
        "Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

.field private final includeAspectHistogram:Z

.field private final includeBuyingFormatHistogram:Z

.field private final includeCategoryHistogram:Z

.field private final includeConditionHistogram:Z

.field private final includeLocationHistogram:Z

.field private final includePriceHistogram:Z

.field private final pageIndex:I

.field private final params:Lcom/ebay/common/net/api/search/SearchParameters;

.field private final searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

.field private final skipCount:I

.field private final xTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/SearchParameters;ILcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;II)V
    .locals 2

    const-string/jumbo v0, "search"

    .line 87
    invoke-static {p6}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->getSearchOperationName(I)Ljava/lang/String;

    move-result-object p6

    sget-object v1, Lcom/ebay/nautilus/domain/net/CosVersionType;->V3:Lcom/ebay/nautilus/domain/net/CosVersionType;

    invoke-direct {p0, v0, p6, v1}, Lcom/ebay/common/net/api/search/SearchServiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/net/CosVersionType;)V

    const-string p6, "application/json"

    .line 89
    iput-object p6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->requestBodyContentType:Ljava/lang/String;

    const-string p6, "application/json"

    .line 90
    iput-object p6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->responseBodyContentType:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/ebay/nautilus/kernel/identity/EbayIdentity;->generateRequestCorrelationId()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->trackingCorrelationId:Ljava/lang/String;

    .line 95
    iget-object p6, p1, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    if-eqz p6, :cond_0

    .line 96
    iget-object p6, p1, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object p6, p6, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iput-object p6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->marketPlaceId:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_0
    iget-object p6, p1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    if-eqz p6, :cond_1

    .line 98
    iget-object p6, p1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    iget-object p6, p6, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object p6, p6, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iput-object p6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->marketPlaceId:Ljava/lang/String;

    .line 100
    :cond_1
    :goto_0
    iput p2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->pageIndex:I

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 102
    :goto_1
    iput p5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->skipCount:I

    .line 103
    iput-boolean p2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includeAspectHistogram:Z

    .line 104
    iput-boolean p2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includeCategoryHistogram:Z

    if-eqz p2, :cond_3

    .line 105
    sget-object p5, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->priceBuckets:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {p4, p5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p5, 0x1

    goto :goto_2

    :cond_3
    const/4 p5, 0x0

    :goto_2
    iput-boolean p5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includePriceHistogram:Z

    if-eqz p2, :cond_4

    .line 106
    invoke-static {}, Lcom/ebay/mobile/search/refine/types/ItemConditionSearchFilter;->itemConditionHistogramSupported()Z

    move-result p5

    if-eqz p5, :cond_4

    const/4 p5, 0x1

    goto :goto_3

    :cond_4
    const/4 p5, 0x0

    :goto_3
    iput-boolean p5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includeConditionHistogram:Z

    if-eqz p2, :cond_5

    .line 107
    sget-object p5, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->multiAspectGuidance:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {p4, p5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p5

    if-eqz p5, :cond_5

    const/4 p6, 0x1

    :cond_5
    iput-boolean p6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includeBuyingFormatHistogram:Z

    .line 108
    iput-boolean p2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includeLocationHistogram:Z

    .line 109
    iget-object p2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->iafToken:Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 111
    iput-object p3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    .line 112
    iput-object p4, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    .line 113
    iget-object p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    invoke-static {p1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->mergeExperimentTags(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->xTags:Ljava/util/List;

    return-void
.end method

.method private buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;
    .locals 1

    .line 991
    new-instance v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;-><init>()V

    .line 992
    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    .line 993
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    .line 994
    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/util/List;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;"
        }
    .end annotation

    .line 1001
    new-instance v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;-><init>()V

    .line 1002
    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    .line 1003
    iput-object p2, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    return-object v0
.end method

.method private buildConstraintWithMultipleParamValues(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/util/List;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;"
        }
    .end annotation

    .line 1012
    new-instance v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;-><init>()V

    .line 1013
    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    .line 1014
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    .line 1015
    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    .line 1018
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 1020
    new-instance p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;-><init>()V

    .line 1021
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    .line 1022
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    .line 1023
    iget-object p2, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private buildConstraintWithParamValue(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;
    .locals 1

    .line 1032
    new-instance v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;-><init>()V

    .line 1033
    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    .line 1034
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    .line 1035
    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    new-instance p1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    invoke-direct {p1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;-><init>()V

    .line 1038
    iput-object p3, p1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    .line 1039
    iput-object p4, p1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    .line 1040
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    .line 1041
    iget-object p2, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private ensureAnswerRequestConfig(Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;-><init>()V

    iput-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    .line 447
    :cond_0
    iget-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    if-nez v0, :cond_1

    .line 448
    iget-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    new-instance v1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    invoke-direct {v1}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;-><init>()V

    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    .line 450
    :cond_1
    iget-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;->properties:Ljava/util/List;

    if-nez v0, :cond_2

    .line 451
    iget-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;->properties:Ljava/util/List;

    .line 453
    :cond_2
    iget-object p1, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;->properties:Ljava/util/List;

    return-object p1
.end method

.method private ensureUniversalSearchRequestConfig(Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;-><init>()V

    iput-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    .line 436
    :cond_0
    iget-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;->properties:Ljava/util/List;

    if-nez v0, :cond_1

    .line 437
    iget-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;->properties:Ljava/util/List;

    .line 438
    :cond_1
    iget-object p1, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;->properties:Ljava/util/List;

    return-object p1
.end method

.method private static getSearchOperationName(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "searchV2"

    goto :goto_0

    :pswitch_0
    const-string/jumbo p0, "searchV2UserProfile"

    goto :goto_0

    :pswitch_1
    const-string/jumbo p0, "searchV2"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static mergeExperimentTags(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-static {}, Lcom/ebay/mobile/viewitem/util/ViewItemRequestUtil;->getInstance()Lcom/ebay/mobile/viewitem/util/ViewItemRequestUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/util/ViewItemRequestUtil;->getTreatmentForTracking()Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 128
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experimentation/Treatment;->xTags:Ljava/util/List;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 132
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experimentation/Treatment;->xTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/SerializablePair;

    const-string/jumbo v3, "xt"

    .line 134
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/SerializablePair;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/SerializablePair;->value:Ljava/lang/String;

    .line 135
    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    iget-object v1, v2, Lcom/ebay/nautilus/domain/data/SerializablePair;->value:Ljava/lang/String;

    :cond_2
    if-nez v1, :cond_3

    return-object p0

    :cond_3
    if-nez p0, :cond_4

    .line 146
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 149
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method private tryAddFitmentAnswerRequest(Ljava/util/List;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerParameter;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 462
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 463
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "contextType"

    .line 464
    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_1
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;->properties:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 467
    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;->properties:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 469
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->tryAddMotorAnswerRequest(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private tryAddMotorAnswerRequest(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerParameter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 478
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 479
    new-instance v2, Lcom/ebay/nautilus/domain/data/NameValue;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/ebay/nautilus/domain/data/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 484
    new-instance p3, Lcom/ebay/common/net/api/search/answers/wire/AnswerParameter;

    invoke-direct {p3, p2}, Lcom/ebay/common/net/api/search/answers/wire/AnswerParameter;-><init>(Ljava/lang/String;)V

    .line 485
    iget-object p2, p3, Lcom/ebay/common/net/api/search/answers/wire/AnswerParameter;->parameters:Ljava/util/Map;

    const-string/jumbo v1, "value"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected addDynamicPagination(Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;)V
    .locals 2
    .param p1    # Lcom/ebay/common/net/api/search/SearchParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 495
    iget-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->queryIntent:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    sget-object v1, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->CountOnly:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    if-eq v0, v1, :cond_1

    .line 498
    invoke-direct {p0, p2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->ensureUniversalSearchRequestConfig(Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;)Ljava/util/List;

    move-result-object p2

    const-string v0, "UniversalSearchDictionary.enableDynamicPageSizeSupport"

    iget-object p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    iget-boolean p1, p1, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->dynamicPaginationEnabled:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method addLocationConstraints(Ljava/util/List;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;",
            ">;)V"
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    if-eqz v0, :cond_0

    .line 982
    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->PreferredItemLocation:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    .line 983
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-direct {p0, v0, v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 986
    :cond_1
    sget-object v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->AvailableTo:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method addOutputSelectorRewrites(Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;)V
    .locals 4
    .param p1    # Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 946
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;-><init>()V

    .line 947
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 948
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->blacklistRecallFiltering:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    .line 950
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 952
    iget-object v3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v3, v3, Lcom/ebay/common/net/api/search/SearchParameters;->blacklistRecallFiltering:Z

    if-eqz v3, :cond_1

    .line 953
    sget-object v3, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->RECALL_FILTERING:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    .line 956
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 958
    :cond_2
    iput-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;->blackList:Ljava/util/List;

    .line 960
    :cond_3
    iput-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->rewrite:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

    return-void
.end method

.method protected addSaveSearchAnswerProvider(Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;)V
    .locals 2
    .param p1    # Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 506
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Search$B;->nullResultsAmplification:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->ensureUniversalSearchRequestConfig(Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;)Ljava/util/List;

    move-result-object p1

    const-string v0, "SAVE_SEARCH_ANSWER_PROVIDER"

    const-string v1, "[P]ENABLED~TRUE|DATA_TEMPLATE_NAME~MESSAGE_DATA_TEMPLATE|ENDPOINT_URL~http://thisendpointisnotused.ebay.com|LIST_OF_SOJOURNER_MODULE_IDS~44880|ALPHA~1.0|BETA~1.0"

    invoke-virtual {p0, v0, v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public buildRequest()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->defaultRequestMapper:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildUniversalSearchRequest()Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;
    .locals 1

    .line 1048
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;-><init>()V

    .line 1049
    iput-object p1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;->name:Ljava/lang/String;

    .line 1050
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;->value:Ljava/util/List;

    .line 1051
    iget-object p1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;->value:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public buildSearchRequest()Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 519
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;-><init>()V

    .line 520
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$App$B;->guaranteedDelivery:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    .line 521
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v3, Lcom/ebay/mobile/dcs/Dcs$Search$B;->guaranteedDeliveryPlusFastAndFree:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    .line 522
    iget-object v3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v4, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->authorizedSeller:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v3, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v3

    .line 523
    iget-object v4, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v5, Lcom/ebay/mobile/dcs/Dcs$Search$B;->serviceDeliveredHotnessSignals:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v4, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v4

    .line 526
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->pageIndex:I

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 529
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->requestConfig:Ljava/util/List;

    if-nez v5, :cond_1

    .line 531
    iget-object v8, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v8, v8, Lcom/ebay/common/net/api/search/SearchParameters;->newItemsOnly:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v8, v8, Lcom/ebay/common/net/api/search/SearchParameters;->interestId:Ljava/lang/String;

    invoke-static {v8}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 532
    :cond_1
    iget-object v8, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->requestConfig:Ljava/util/List;

    const-string v9, "CASSINI_NULL_LOW_ENABLED"

    const-string v10, "1"

    invoke-virtual {p0, v9, v10}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v5, :cond_4

    .line 535
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v8, Lcom/ebay/mobile/dcs/DcsBoolean;->SearchServiceUvcc:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v5, v8}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 537
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->requestConfig:Ljava/util/List;

    const-string v8, "UserVisibleConstraints.Enabled"

    const-string v9, "1"

    invoke-virtual {p0, v8, v9}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->requestConfig:Ljava/util/List;

    const-string v8, "SearchServiceDictionary.WHOLE_PATH_LN_ENABLED"

    const-string v9, "1"

    invoke-virtual {p0, v8, v9}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_3
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v8, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->spellAutoCorrect:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v5, v8}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 541
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->requestConfig:Ljava/util/List;

    const-string v8, "SearchServiceDictionary.ENABLE_AUTO_SPELLER"

    const-string v9, "1"

    invoke-virtual {p0, v8, v9}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_4
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v8, Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;->PUDO:Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;

    invoke-interface {v5, v8}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v8, Lcom/ebay/mobile/dcs/DcsBoolean;->SearchUsePickupDropOffHack:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v5, v8}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 545
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->requestConfig:Ljava/util/List;

    const-string v8, "SearchServiceDictionary.PUDO_ENABLED"

    const-string/jumbo v9, "true"

    invoke-virtual {p0, v8, v9}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_5
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v8, Lcom/ebay/mobile/dcs/Dcs$App$B;->ebayPlus:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v5, v8}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 548
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->requestConfig:Ljava/util/List;

    const-string v8, "SearchServiceDictionary.EBAY_PLUS"

    const-string/jumbo v9, "true"

    invoke-virtual {p0, v8, v9}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_6
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v5

    .line 558
    invoke-virtual {v5, v6}, Lcom/ebay/common/Preferences;->isDeveloperOptionsEnabled(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v5, v6}, Lcom/ebay/common/Preferences;->isDynoSearchAnswersForced(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 559
    iget-object v8, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->requestConfig:Ljava/util/List;

    const-string v9, "DYNO_ENABLED"

    .line 560
    invoke-virtual {v5, v6}, Lcom/ebay/common/Preferences;->isDynoSearchAnswersEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "TRUE"

    goto :goto_1

    :cond_7
    const-string v5, "FALSE"

    .line 559
    :goto_1
    invoke-virtual {p0, v9, v5}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_8
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v6, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->useSaasForProductSearch:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v5, v6}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 564
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->keyword:Ljava/lang/String;

    goto :goto_2

    .line 566
    :cond_9
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->keyword:Ljava/lang/String;

    .line 569
    :goto_2
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 570
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->sellerName:Ljava/lang/String;

    goto :goto_3

    .line 571
    :cond_a
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    if-eqz v5, :cond_b

    .line 572
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SellerOfferParameters;->sellerName:Ljava/lang/String;

    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->sellerName:Ljava/lang/String;

    .line 574
    :cond_b
    :goto_3
    new-instance v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;

    invoke-direct {v5}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;-><init>()V

    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->paginationInput:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;

    .line 575
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->paginationInput:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;

    iget-object v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-virtual {p0, v6}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->getEntriesPerPage(Lcom/ebay/common/net/api/search/SearchParameters;)I

    move-result v6

    iput v6, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;->entriesPerPage:I

    .line 576
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->paginationInput:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;

    iget v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->skipCount:I

    iput v6, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;->skipCount:I

    .line 577
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->paginationInput:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;

    iget v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->pageIndex:I

    iput v6, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;->pageNumber:I

    .line 578
    new-instance v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;

    invoke-direct {v5}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;-><init>()V

    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;

    .line 579
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;

    iget-object v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    iput-object v6, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;->country:Ljava/lang/String;

    .line 580
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;

    iget-object v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    iput-object v6, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;->postalCode:Ljava/lang/String;

    .line 581
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->BestMatch:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    goto :goto_4

    :cond_c
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    .line 582
    invoke-static {v5}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    move-result-object v5

    :goto_4
    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 584
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-virtual {v5}, Lcom/ebay/common/model/search/EbayCategorySummary;->isDefault()Z

    move-result v5

    if-nez v5, :cond_d

    .line 586
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->categoryId:Ljava/util/List;

    .line 587
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->categoryId:Ljava/util/List;

    iget-object v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-wide v8, v6, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->scope:Ljava/util/List;

    .line 591
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->scope:Ljava/util/List;

    iget-object v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v6, v6, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v6, v6, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    if-eqz v6, :cond_e

    sget-object v6, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;->ITEM_TITLE_AND_DESCRIPTION_SEARCH:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;

    goto :goto_5

    :cond_e
    sget-object v6, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;->ITEM_TITLE_SEARCH:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;

    :goto_5
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {p0, v0, v1, v3}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->setSearchConstraints(Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;ZZ)V

    .line 598
    new-instance v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    invoke-direct {v5}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;-><init>()V

    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    .line 599
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    new-instance v6, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    invoke-direct {v6}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;-><init>()V

    iput-object v6, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    .line 600
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    new-instance v6, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v6}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v6, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->distance:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 602
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    new-instance v6, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;

    invoke-direct {v6}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;-><init>()V

    iput-object v6, v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->shipping:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;

    if-eqz v1, :cond_f

    .line 605
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->shipping:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;

    new-instance v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$DeliveryEstimate;

    invoke-direct {v5}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$DeliveryEstimate;-><init>()V

    iput-object v5, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;->deliveryEstimate:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$DeliveryEstimate;

    .line 606
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->shipping:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;->deliveryEstimate:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$DeliveryEstimate;

    iput-boolean v7, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$DeliveryEstimate;->guaranteedDelivery:Z

    :cond_f
    if-eqz v2, :cond_10

    .line 610
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->shipping:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;

    iput-boolean v7, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;->combineFnFWithGuaranteedDelivery:Z

    .line 612
    :cond_10
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->freeReturnsIcd:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 613
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->returnPolicy:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 615
    :cond_11
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Search$B;->gstIncludedInPrice:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 616
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->tax:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 618
    :cond_12
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->useItemCardRedesign:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 620
    new-instance v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Product;

    invoke-direct {v1}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Product;-><init>()V

    const-string/jumbo v2, "true"

    .line 621
    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Product;->showReviews:Ljava/lang/String;

    .line 622
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v5, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->moreOptionsLink:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v2, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 623
    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Product;->themes:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 624
    :cond_13
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    iput-object v1, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->product:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Product;

    .line 626
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->showDisplayAttributesOnItemCard:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 627
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->displayAttributes:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 631
    :cond_14
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->vehiclePriceTransparency:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 632
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->comparitivePricingRange:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 634
    :cond_15
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->refinement:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;

    .line 635
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includeAspectHistogram:Z

    if-eqz v1, :cond_16

    .line 636
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->refinement:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;->aspectHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 637
    :cond_16
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includeCategoryHistogram:Z

    if-eqz v1, :cond_17

    .line 638
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->refinement:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;->categoryHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 639
    :cond_17
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includePriceHistogram:Z

    if-eqz v1, :cond_18

    .line 640
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->refinement:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;->priceFilterHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 641
    :cond_18
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includeLocationHistogram:Z

    if-eqz v1, :cond_19

    .line 642
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->refinement:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;->locationHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 644
    :cond_19
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->refinement:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;

    invoke-virtual {p0, v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->conditionallyIncludeItemConditionHistogram(Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;)V

    .line 646
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->refinement:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;

    invoke-virtual {p0, v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->conditionallyIncludeBuyingFormatHistogram(Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;)V

    .line 648
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    if-eqz v1, :cond_1a

    .line 650
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SellerOffer;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SellerOffer;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->sellerOffer:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SellerOffer;

    .line 651
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->sellerOffer:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SellerOffer;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SellerOffer;->sellerOffer:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 654
    :cond_1a
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    invoke-virtual {p0, v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->addOutputSelectorRewrites(Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;)V

    if-eqz v3, :cond_1b

    .line 659
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->seller:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    :cond_1b
    if-eqz v4, :cond_1c

    .line 663
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/data/search/HotnessSignal;->getEnabledHotnessSignals(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Ljava/util/List;

    move-result-object v1

    .line 664
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 666
    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$HotnessSignals;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$HotnessSignals;-><init>()V

    .line 667
    iput-object v1, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$HotnessSignals;->supportedSignals:Ljava/util/List;

    .line 668
    iput v7, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$HotnessSignals;->numSignals:I

    .line 669
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->hotnessSignals:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$HotnessSignals;

    .line 673
    :cond_1c
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->isImageSearchByReference:Z

    if-eqz v1, :cond_1e

    .line 675
    new-instance v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ImageSearchOutputSelector;

    invoke-direct {v1}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ImageSearchOutputSelector;-><init>()V

    .line 676
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1d

    .line 677
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ImageSearchOutputSelector;->itemId:Ljava/lang/Long;

    .line 678
    :cond_1d
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->md5:Ljava/lang/String;

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ImageSearchOutputSelector;->md5:Ljava/lang/String;

    .line 679
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->zoomGuid:Ljava/lang/String;

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ImageSearchOutputSelector;->zoomGuid:Ljava/lang/String;

    .line 680
    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->imageSearchOutputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ImageSearchOutputSelector;

    .line 681
    new-instance v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ItemImage;

    invoke-direct {v1}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ItemImage;-><init>()V

    .line 682
    iput-boolean v7, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ItemImage;->useWinningVariantPicture:Z

    .line 683
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->image:Ljava/util/List;

    .line 686
    :cond_1e
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Search$B;->itemOverflowSaas:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 688
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->richDynamicAspect:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    .line 689
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;->pivot:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    :cond_1f
    return-object v0
.end method

.method public buildUniversalSearchRequest()Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;
    .locals 8

    .line 277
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;-><init>()V

    .line 279
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildSearchRequest()Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->searchRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    .line 281
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 283
    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->relatedSearches:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->pageIndex:I

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 285
    :goto_0
    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 287
    new-instance v5, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    invoke-direct {v5}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;-><init>()V

    iput-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    .line 288
    iget-object v5, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    new-instance v6, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;

    invoke-direct {v6}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;-><init>()V

    iput-object v6, v5, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;

    if-eqz v2, :cond_1

    .line 292
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;

    new-instance v5, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$QueryAnswerTemplate;

    invoke-direct {v5}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$QueryAnswerTemplate;-><init>()V

    iput-object v5, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;->queryAnswerTemplate:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$QueryAnswerTemplate;

    .line 294
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;->queryAnswerTemplate:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$QueryAnswerTemplate;

    new-instance v5, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$StatelessElement;

    invoke-direct {v5}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$StatelessElement;-><init>()V

    iput-object v5, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$QueryAnswerTemplate;->relatedSearches:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$StatelessElement;

    .line 300
    :cond_1
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->pageIndex:I

    if-ne v2, v4, :cond_2

    .line 302
    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;-><init>()V

    iput-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    .line 303
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    new-instance v5, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;

    invoke-direct {v5}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;-><init>()V

    iput-object v5, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;

    .line 304
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;

    new-instance v5, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$BrowseAnswerTemplate;

    invoke-direct {v5}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$BrowseAnswerTemplate;-><init>()V

    iput-object v5, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;->browseAnswerTemplate:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$BrowseAnswerTemplate;

    .line 306
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;->browseAnswerTemplate:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$BrowseAnswerTemplate;

    new-instance v5, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$StatelessElement;

    invoke-direct {v5}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$StatelessElement;-><init>()V

    iput-object v5, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$BrowseAnswerTemplate;->browseGuidance:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$StatelessElement;

    .line 311
    :cond_2
    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->multiAspectGuidance:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ebay/common/Preferences;->isSearchMagForced(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->ensureAnswerRequestConfig(Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;)Ljava/util/List;

    move-result-object v2

    const-string v3, "AnswerDictionary.MULTI_ASPECT_GUIDANCE_ENABLED"

    const-string/jumbo v5, "true"

    .line 314
    invoke-virtual {p0, v3, v5}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_3
    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;-><init>()V

    iput-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    .line 318
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    const-string v3, "SEARCH"

    iput-object v3, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;->appName:Ljava/lang/String;

    .line 320
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Search$B;->optimizeResponsePageLayouts:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 322
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;->requestedPageLayoutsForMultiLayoutRegion:Ljava/util/List;

    .line 323
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;->requestedPageLayoutsForMultiLayoutRegion:Ljava/util/List;

    sget-object v3, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->LIST_1_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;->requestedPageLayoutsForMultiLayoutRegion:Ljava/util/List;

    sget-object v3, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->GRID_2_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v3, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;->supportedUXComponentNames:Ljava/util/List;

    .line 332
    sget-object v3, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->nullAndLowPhase1:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 333
    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->BASIC_MESSAGE:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_5
    sget-object v3, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->nullAndLowPhase2:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 335
    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ITEMS_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_6
    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->REWRITE_START:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->REWRITES_ITEMS:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ITEM_CARD:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->QUERY_IMAGE_ANSWER_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->QUERY_ANSWER_PILL_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->QUERY_ANSWER_TEXT_LIST:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->PROMOTED_ITEM_CARD:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->PROMOTION_BANNER:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v3, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->fitmentCompatibility:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    invoke-interface {v1, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 346
    sget-object v5, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->VEHICLE_PARTS_FINDER:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_7
    sget-object v5, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->tireCompatibility:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    invoke-interface {v1, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 350
    sget-object v5, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->MOTORS_TIRE_FINDER:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_8
    sget-object v5, Lcom/ebay/mobile/dcs/Dcs$Browse$B;->feature:Lcom/ebay/mobile/dcs/Dcs$Browse$B;

    invoke-interface {v1, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 354
    sget-object v5, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->BASIC_USER_MESSAGE:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_9
    sget-object v5, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->imageSearch:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 358
    sget-object v5, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ICON_MESSAGE:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_a
    sget-object v5, Lcom/ebay/mobile/dcs/Dcs$App$B;->guaranteedDelivery:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v1, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    if-nez v5, :cond_b

    .line 363
    sget-object v5, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->TOGGLE_MESSAGE:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_b
    sget-object v5, Lcom/ebay/mobile/dcs/Dcs$Search$B;->ebayPlusToggle:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v1, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 366
    sget-object v5, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ICON_TOGGLE_MESSAGE:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_c
    sget-object v5, Lcom/ebay/mobile/dcs/Dcs$Search$B;->nullResultsAmplification:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v1, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 369
    sget-object v5, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->SAVE_CARD:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_d
    sget-object v5, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->multiAspectGuidance:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 373
    sget-object v5, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->NAVIGATION_ANSWER_COLLAPSIBLE_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_f

    const-string v3, "VEHICLE_PARTS_PROVIDER"

    .line 378
    iget-object v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    invoke-direct {p0, v5, v3, v6}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->tryAddFitmentAnswerRequest(Ljava/util/List;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;)V

    .line 380
    :cond_f
    iget-object v3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    if-eqz v3, :cond_11

    .line 382
    iget-object v3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    .line 383
    iget-object v6, v3, Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;->provider:Lcom/ebay/mobile/verticals/motor/MotorAnswerProvider;

    if-eqz v6, :cond_11

    .line 388
    iget-object v7, v6, Lcom/ebay/mobile/verticals/motor/MotorAnswerProvider;->dcsProperty:Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;

    if-eqz v7, :cond_10

    .line 389
    iget-object v4, v3, Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;->provider:Lcom/ebay/mobile/verticals/motor/MotorAnswerProvider;

    iget-object v4, v4, Lcom/ebay/mobile/verticals/motor/MotorAnswerProvider;->dcsProperty:Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;

    invoke-interface {v1, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v4

    :cond_10
    if-eqz v4, :cond_11

    .line 393
    iget-object v4, v6, Lcom/ebay/mobile/verticals/motor/MotorAnswerProvider;->providerName:Ljava/lang/String;

    iget-object v3, v3, Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;->properties:Ljava/util/Map;

    invoke-direct {p0, v5, v4, v3}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->tryAddMotorAnswerRequest(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 399
    :cond_11
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 400
    iget-object v3, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    iput-object v5, v3, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;->answerParameters:Ljava/util/List;

    .line 404
    :cond_12
    sget-object v3, Lcom/ebay/mobile/dcs/Dcs$Search$S;->excludedUxComponentNames:Lcom/ebay/mobile/dcs/Dcs$Search$S;

    invoke-interface {v1, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropString;)Ljava/lang/String;

    move-result-object v1

    .line 405
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 410
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[,;]\\s*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 412
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    .line 413
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 414
    iget-object v4, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    iget-object v4, v4, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;->supportedUXComponentNames:Ljava/util/List;

    .line 415
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 417
    :cond_15
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->searchRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->searchRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->searchRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    .line 419
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 421
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->searchRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    .line 424
    :cond_16
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-virtual {p0, v1, v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->addDynamicPagination(Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;)V

    .line 425
    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->addSaveSearchAnswerProvider(Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;)V

    return-object v0
.end method

.method conditionallyIncludeBuyingFormatHistogram(Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;)V
    .locals 1
    .param p1    # Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 973
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includeBuyingFormatHistogram:Z

    if-eqz v0, :cond_0

    .line 974
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;->buyingFormatHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    :cond_0
    return-void
.end method

.method conditionallyIncludeItemConditionHistogram(Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;)V
    .locals 1
    .param p1    # Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 966
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->includeConditionHistogram:Z

    if-eqz v0, :cond_0

    .line 967
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;-><init>()V

    iput-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;->conditionHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

    :cond_0
    return-void
.end method

.method protected getEntriesPerPage(Lcom/ebay/common/net/api/search/SearchParameters;)I
    .locals 3
    .param p1    # Lcom/ebay/common/net/api/search/SearchParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 926
    iget v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    .line 929
    iget-object v1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->queryIntent:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    sget-object v2, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->CountOnly:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 931
    :cond_0
    iget-object v1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->dynamicPaginationEnabled:Z

    if-eqz v1, :cond_2

    .line 934
    iget v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->pageIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 935
    iget-object p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    iget v0, p1, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page1Size:I

    goto :goto_0

    .line 936
    :cond_1
    iget v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->pageIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 937
    iget-object p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    iget v0, p1, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page2Size:I

    :cond_2
    :goto_0
    return v0
.end method

.method public getLocaleList()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "searchV2"

    .line 249
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->getOperationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lcom/ebay/nautilus/domain/net/api/experience/search/SearchRequestAcceptLanguageMapper;->getInstance()Lcom/ebay/nautilus/domain/net/api/experience/search/SearchRequestAcceptLanguageMapper;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/net/api/experience/search/SearchRequestAcceptLanguageMapper;->getAcceptLanguageLocaleOverride(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 253
    invoke-super {p0}, Lcom/ebay/common/net/api/search/SearchServiceRequest;->getLocaleList()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->pageIndex:I

    return v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 261
    sget-object v0, Lcom/ebay/nautilus/domain/net/ApiSettings;->searchServiceAnswersPlatformApi:Lcom/ebay/nautilus/domain/net/ApiSettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-wide v0, v0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 219
    :goto_0
    new-instance v2, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    iget-object v4, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->xTags:Ljava/util/List;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;JLjava/util/Collection;)V

    return-object v2
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->getResponse()Lcom/ebay/common/net/api/search/GetSearchAnswersResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasRecoverableError(Lcom/ebay/nautilus/kernel/net/Response;Ljava/io/IOException;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/net/Response;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->authHeaderValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->cosVersionType:Lcom/ebay/nautilus/domain/net/CosVersionType;

    sget-object v1, Lcom/ebay/nautilus/domain/net/CosVersionType;->V2:Lcom/ebay/nautilus/domain/net/CosVersionType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/net/CosVersionType;->minimumOf(Lcom/ebay/nautilus/domain/net/CosVersionType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->iafToken:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    .line 165
    iget-object p2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->authHeaderValue:Ljava/lang/String;

    const-string v0, "Bearer "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 167
    invoke-static {p1}, Lcom/ebay/nautilus/domain/EbayAppCredentials;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/EbayAppCredentials;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/EbayAppCredentials;->invalidateBearerToken(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 171
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/ebay/common/net/api/search/SearchServiceRequest;->hasRecoverableError(Lcom/ebay/nautilus/kernel/net/Response;Ljava/io/IOException;)Z

    move-result p1

    return p1
.end method

.method protected initialize(Lcom/ebay/nautilus/kernel/content/ResultStatusOwner;)V
    .locals 7
    .param p1    # Lcom/ebay/nautilus/kernel/content/ResultStatusOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    invoke-super {p0, p1}, Lcom/ebay/common/net/api/search/SearchServiceRequest;->initialize(Lcom/ebay/nautilus/kernel/content/ResultStatusOwner;)V

    .line 199
    iget-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->countryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->countryCode:Ljava/lang/String;

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->postalCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->postalCode:Ljava/lang/String;

    :cond_1
    move-object v2, p1

    move-object v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    .line 209
    invoke-virtual/range {v1 .. v6}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildEndUserContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->endUserContext:Ljava/lang/String;

    return-void
.end method

.method protected isIdempotent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V
    .locals 3

    .line 225
    invoke-super {p0, p1}, Lcom/ebay/common/net/api/search/SearchServiceRequest;->onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V

    .line 228
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    const v2, 0x1f6001

    invoke-interface {v0, v1, v2}, Lcom/ebay/common/net/api/search/ISearchEventTracker;->generateSaaSTrackingHeader(Lcom/ebay/nautilus/kernel/content/EbayContext;I)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "x-ebay-c-tracking"

    .line 234
    invoke-interface {p1, v1, v0}, Lcom/ebay/nautilus/kernel/net/IHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->getEntriesPerPage(Lcom/ebay/common/net/api/search/SearchParameters;)I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    invoke-static {}, Lcom/ebay/mobile/viewitem/util/ViewItemRequestUtil;->getInstance()Lcom/ebay/mobile/viewitem/util/ViewItemRequestUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/viewitem/util/ViewItemRequestUtil;->addSearchHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V

    :cond_0
    return-void
.end method

.method protected setGlobalSearchConstraints(Lcom/ebay/nautilus/domain/data/search/SearchConstraints;ZZ)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 716
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/ebay/mobile/search/refine/types/ItemConditionSearchFilter;->itemConditionHistogramSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    const-string v2, "Unspecified"

    .line 726
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "non_specified"

    .line 729
    :cond_0
    sget-object v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ItemCondition:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-direct {p0, v2, v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 731
    :cond_1
    invoke-static {}, Lcom/ebay/mobile/search/refine/types/ItemConditionSearchFilter;->itemConditionHistogramSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 732
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ItemCondition:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-wide v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->newItemsOnly:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->refineNewlyListedEnabled:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    .line 736
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 737
    :cond_3
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->StartTimeFrom:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-wide v3, v3, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 738
    invoke-static {v2}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->formatIso8601DateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 737
    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_4
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    if-eqz v1, :cond_5

    .line 742
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->FreeShippingOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_5
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    if-eqz v1, :cond_6

    .line 746
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ExpeditedShippingType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_6
    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->addLocationConstraints(Ljava/util/List;)V

    .line 758
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->multiAspectGuidance:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    .line 760
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    if-eqz v2, :cond_7

    if-nez v1, :cond_7

    .line 761
    sget-object v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->BestOfferOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v3, "true"

    invoke-direct {p0, v2, v3}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_7
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    if-eqz v2, :cond_8

    .line 765
    sget-object v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->LocalPickupOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v3, "true"

    invoke-direct {p0, v2, v3}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_8
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 770
    sget-object v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->MaxDistance:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v3, v3, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    .line 771
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "postalCode"

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 770
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraintWithParamValue(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_9
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->excludedSellers:Ljava/util/List;

    invoke-static {v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 776
    sget-object v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ExcludeSeller:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/SearchParameters;->excludedSellers:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/util/List;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_a
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    .line 781
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ListingType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string v2, "BestOffer"

    const-string v3, "operator"

    const-string v4, "exclusive"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraintWithParamValue(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 783
    :cond_b
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    .line 784
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ListingType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string v2, "Auction"

    const-string v3, "operator"

    const-string v4, "exclusive"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraintWithParamValue(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 786
    :cond_c
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    .line 787
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ListingType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string v2, "FixedPrice"

    const-string v3, "operator"

    const-string v4, "exclusive"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraintWithParamValue(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_d
    :goto_1
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 793
    sget-object v2, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_11

    sget-object v2, Lcom/ebay/nautilus/domain/EbaySite;->UK:Lcom/ebay/nautilus/domain/EbaySite;

    if-ne v1, v2, :cond_e

    goto :goto_3

    .line 795
    :cond_e
    sget-object v2, Lcom/ebay/nautilus/domain/EbaySite;->AU:Lcom/ebay/nautilus/domain/EbaySite;

    if-eq v1, v2, :cond_10

    sget-object v2, Lcom/ebay/nautilus/domain/EbaySite;->DE:Lcom/ebay/nautilus/domain/EbaySite;

    if-ne v1, v2, :cond_f

    goto :goto_2

    :cond_f
    const/4 v1, 0x0

    goto :goto_4

    .line 796
    :cond_10
    :goto_2
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->bopis:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    goto :goto_4

    .line 794
    :cond_11
    :goto_3
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/mobile/dcs/DcsBoolean;->eBayNow:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->bopis:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    .line 798
    :goto_4
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v5, Lcom/ebay/mobile/dcs/DcsBoolean;->SearchLocalOnlyConstraint:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v2, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v1, :cond_12

    .line 799
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->IncludeLocalOnlyItems:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_12
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_13

    .line 803
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->MinPrice:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    const-string v5, "currency"

    iget-object v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    .line 804
    invoke-direct {p0, v1, v2, v5, v6}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraintWithParamValue(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    .line 803
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_13
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_14

    .line 807
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->MaxPrice:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    const-string v5, "currency"

    iget-object v6, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v6, v6, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    .line 808
    invoke-direct {p0, v1, v2, v5, v6}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraintWithParamValue(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    .line 807
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_14
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    if-eqz v1, :cond_15

    .line 813
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->CompletedListingsOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    :cond_15
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    if-eqz v1, :cond_16

    .line 817
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->SoldItemsOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_16
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    if-eqz v1, :cond_17

    .line 821
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->LocalMerchantStorePickupOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_17
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    if-eqz v1, :cond_18

    .line 825
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->EbayNowDelivery:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_18
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    if-eqz v1, :cond_19

    .line 829
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->CharityOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_19
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    if-eqz v1, :cond_1a

    .line 833
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->EbayPlus:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_1a
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    if-eqz v1, :cond_1b

    .line 837
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ReturnsAcceptedOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-eqz p3, :cond_1c

    .line 840
    iget-object p3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean p3, p3, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    if-eqz p3, :cond_1c

    .line 841
    sget-object p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->AuthorizedSellerBadge:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v1, "true"

    invoke-direct {p0, p3, v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_1c
    iget-object p3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->authenticityVerified:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {p3, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p3

    if-eqz p3, :cond_1d

    iget-object p3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean p3, p3, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    if-eqz p3, :cond_1d

    .line 845
    sget-object p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->IsItemAuthenticated:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v1, "true"

    invoke-direct {p0, p3, v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    :cond_1d
    iget-object p3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object p3, p3, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    if-eqz p3, :cond_1f

    .line 851
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 852
    new-instance v1, Landroid/util/Pair;

    const-string v2, "offerId"

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerId:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    new-instance v1, Landroid/util/Pair;

    const-string v2, "offerType"

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerType:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    iget-object v1, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SellerOfferParameters;->seedCategoryId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 856
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "seedCategoryId"

    iget-object v5, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    iget-object v5, v5, Lcom/ebay/common/net/api/search/SellerOfferParameters;->seedCategoryId:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_1e
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->SellerOffer:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string v2, ""

    .line 860
    invoke-direct {p0, v1, v2, p3}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraintWithMultipleParamValues(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/util/List;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object p3

    .line 859
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    :cond_1f
    iget-object p3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean p3, p3, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    if-eqz p3, :cond_20

    iget-object p3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->refineDealsAndSavings:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {p3, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p3

    if-eqz p3, :cond_20

    goto :goto_5

    :cond_20
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_21

    .line 867
    new-instance p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;-><init>()V

    .line 868
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->Deals:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iput-object v1, p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    .line 869
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    .line 870
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    const-string/jumbo v2, "rpp"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    const-string v2, "iis"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    if-nez v3, :cond_22

    .line 877
    iget-object p3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean p3, p3, Lcom/ebay/common/net/api/search/SearchParameters;->dealsSearch:Z

    if-eqz p3, :cond_22

    iget-object p3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Verticals$B;->dealsSearch:Lcom/ebay/mobile/dcs/Dcs$Verticals$B;

    invoke-interface {p3, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 878
    sget-object p3, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->Deals:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string v1, "all"

    invoke-direct {p0, p3, v1}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz p2, :cond_23

    .line 881
    iget-object p2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget p2, p2, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    if-eqz p2, :cond_23

    .line 883
    sget-object p2, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->GuaranteedDeliveryDays:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iget-object p3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget p3, p3, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    .line 884
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 883
    invoke-direct {p0, p2, p3}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildConstraint(Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_23
    iput-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    return-void
.end method

.method protected setScopedSearchConstraints(Lcom/ebay/nautilus/domain/data/search/SearchConstraints;)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->hasCheck()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 896
    new-instance v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;-><init>()V

    .line 897
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    .line 898
    iget-object v2, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v2}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 900
    invoke-virtual {v3}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->hasCheck()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 902
    new-instance v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;

    invoke-direct {v4}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;-><init>()V

    .line 903
    iget-object v5, v3, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    iput-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->name:Ljava/lang/String;

    .line 904
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->value:Ljava/util/List;

    .line 906
    invoke-virtual {v3}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 908
    iget-boolean v6, v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    if-eqz v6, :cond_1

    .line 909
    iget-object v6, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->value:Ljava/util/List;

    iget-object v5, v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 912
    :cond_2
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 915
    :cond_3
    new-instance v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    invoke-direct {v2}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;-><init>()V

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    .line 916
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    iget-object v3, v3, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    iput-object v3, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->type:Ljava/lang/String;

    .line 917
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    iget-object v3, v3, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->value:Ljava/lang/String;

    .line 918
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    iput-object v0, p1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    :cond_4
    return-void
.end method

.method protected setSearchConstraints(Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;ZZ)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 699
    new-instance v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;-><init>()V

    .line 702
    invoke-virtual {p0, v0, p2, p3}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->setGlobalSearchConstraints(Lcom/ebay/nautilus/domain/data/search/SearchConstraints;ZZ)V

    .line 705
    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->setScopedSearchConstraints(Lcom/ebay/nautilus/domain/data/search/SearchConstraints;)V

    .line 706
    iput-object v0, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    return-void
.end method
