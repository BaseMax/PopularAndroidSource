.class public Lcom/ebay/common/net/api/search/following/InterestDescriptor;
.super Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;
.source "InterestDescriptor.java"


# instance fields
.field public imageURL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field public interestId:J

.field public marketplaceId:Ljava/lang/String;

.field public searchRequest:Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

.field public searchUrl:Ljava/net/URL;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public configureSearchIntent(Lcom/ebay/mobile/search/SearchIntentBuilder;)Lcom/ebay/mobile/search/SearchIntentBuilder;
    .locals 1
    .param p1    # Lcom/ebay/mobile/search/SearchIntentBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchRequest:Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

    invoke-virtual {v0, p1}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->configureSearchIntent(Lcom/ebay/mobile/search/SearchIntentBuilder;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 81
    :cond_1
    check-cast p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    .line 83
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->imageURL:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->imageURL:Ljava/util/Map;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->imageURL:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->imageURL:Ljava/util/Map;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 84
    :cond_3
    iget-wide v2, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->interestId:J

    iget-wide v4, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->interestId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 85
    :cond_4
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->marketplaceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->marketplaceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 86
    :cond_5
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchRequest:Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchRequest:Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchRequest:Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

    invoke-virtual {v2, v3}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchRequest:Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

    if-eqz v2, :cond_7

    :goto_1
    return v1

    .line 88
    :cond_7
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchUrl:Ljava/net/URL;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchUrl:Ljava/net/URL;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchUrl:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_8
    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchUrl:Ljava/net/URL;

    if-eqz v2, :cond_9

    :goto_2
    return v1

    .line 89
    :cond_9
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->title:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->title:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3

    :cond_a
    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->title:Ljava/lang/String;

    if-eqz p1, :cond_b

    :goto_3
    return v1

    :cond_b
    return v0

    :cond_c
    :goto_4
    return v1
.end method

.method public getDomainCountry()Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->marketplaceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Lcom/ebay/nautilus/domain/EbaySite;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    .line 64
    invoke-interface {v0}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    return-object v0
.end method

.method public getSearchParameters(Lcom/ebay/common/net/api/search/SearchParameters;)Lcom/ebay/common/net/api/search/SearchParameters;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->marketplaceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbayCountry;->getSite()Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iput-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchRequest:Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

    invoke-virtual {v0, p1}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->populateSearchParameters(Lcom/ebay/common/net/api/search/SearchParameters;)Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailUrl()Ljava/net/URL;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->imageURL:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->imageURL:Ljava/util/Map;

    const-string v1, "THUMBS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->marketplaceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->imageURL:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->imageURL:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget-wide v3, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->interestId:J

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchUrl:Ljava/net/URL;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->searchUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method
