.class public final Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;
.super Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;
.source "UniversalSearchResponse.java"


# instance fields
.field public answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

.field public items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

.field public layout:Lcom/ebay/common/net/api/search/wiremodel/Layout;

.field public meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

.field public pageTemplate:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-super {p0}, Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;->getErrors()Ljava/util/List;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->errorMessage:Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->errorMessage:Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;->error:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->answers:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;->errorMessage:Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;->error:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->errorMessage:Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->errorMessage:Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;->error:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchResponse;->items:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;->errorMessage:Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;->error:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method
