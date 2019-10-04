.class public final Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;
.super Ljava/lang/Object;
.source "UniversalSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;,
        Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;,
        Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$StatelessElement;,
        Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$QueryAnswerTemplate;,
        Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$LandingPageTemplate;,
        Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$LabeledAnswerTemplate;,
        Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$BrowseAnswerTemplate;,
        Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;,
        Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;
    }
.end annotation


# instance fields
.field public answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

.field public answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

.field public requestConfig:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$UniversalRequestConfig;

.field public searchRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
