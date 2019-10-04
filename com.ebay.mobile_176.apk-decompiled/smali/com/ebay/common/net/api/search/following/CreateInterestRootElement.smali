.class public Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;
.super Ljava/lang/Object;
.source "CreateInterestRootElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/following/CreateInterestRootElement$Type;
    }
.end annotation


# instance fields
.field public interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public searchURL:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public type:Lcom/ebay/common/net/api/search/following/CreateInterestRootElement$Type;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/following/InterestParameters;)V
    .locals 3
    .param p1    # Lcom/ebay/common/net/api/search/following/InterestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object v0, p1, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement$Type;->interest:Lcom/ebay/common/net/api/search/following/CreateInterestRootElement$Type;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;->type:Lcom/ebay/common/net/api/search/following/CreateInterestRootElement$Type;

    .line 46
    new-instance v0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/InterestDescriptor;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    .line 47
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    iget-object v1, p1, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteGlobalId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->marketplaceId:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchUrl:Ljava/net/URL;

    .line 49
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-static {p1}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->fromSearchParameters(Lcom/ebay/common/net/api/search/SearchParameters;)Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchRequest:Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

    goto :goto_2

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    if-eqz v0, :cond_3

    .line 53
    sget-object v0, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement$Type;->searchURL:Lcom/ebay/common/net/api/search/following/CreateInterestRootElement$Type;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;->type:Lcom/ebay/common/net/api/search/following/CreateInterestRootElement$Type;

    .line 54
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "sch/i.html"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 55
    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;->getQueryParameters()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/CreateInterestRootElement;->searchURL:Ljava/lang/String;

    :cond_3
    :goto_2
    return-void
.end method
