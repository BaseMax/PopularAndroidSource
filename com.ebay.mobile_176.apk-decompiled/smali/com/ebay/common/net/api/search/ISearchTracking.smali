.class public interface abstract Lcom/ebay/common/net/api/search/ISearchTracking;
.super Ljava/lang/Object;
.source "ISearchTracking.java"


# virtual methods
.method public abstract getAspects()Lcom/ebay/common/model/search/EbayAspectHistogram;
.end method

.method public abstract getBelowMarketPriceCount()I
.end method

.method public abstract getCategories()Lcom/ebay/common/model/search/EbayCategoryHistogram;
.end method

.method public abstract getClientLoadXtTags()Ljava/util/Collection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFitmentInformation()Lcom/ebay/common/model/search/EbayFitmentInformation;
.end method

.method public abstract getGuaranteedDeliveryCount()I
.end method

.method public abstract getHotnessCount()I
.end method

.method public abstract getItemIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPage(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;
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
.end method

.method public abstract getQuantitySoldModuleIds()Ljava/util/Collection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestCorrelationId()Ljava/lang/String;
.end method

.method public abstract getSmeCount()I
.end method

.method public abstract getTotalCount()I
.end method

.method public abstract getTrackingResponseHeader()Ljava/lang/String;
.end method

.method public abstract getXtTags()Ljava/util/Collection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasKeywordRewrite()Z
.end method

.method public abstract hasSiteRewrite()Z
.end method
