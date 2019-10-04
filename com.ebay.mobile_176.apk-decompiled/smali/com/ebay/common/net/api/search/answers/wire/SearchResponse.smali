.class public final Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$GuaranteedDeliveryHistogram;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$OfferMessageDetail;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SellerOfferDetail;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocation;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocationHistogram;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$PriceFilterHistogram;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValue;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValueHistogram;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Aspect;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectHistogram;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ConditionHistogram;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$EligibleFeature;
    }
.end annotation


# instance fields
.field public dedupedMatchCount:J

.field public eligibleFeature:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$EligibleFeature;

.field public errorMessage:Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;

.field public fitmentResponse:Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse;

.field public matchCount:J

.field public searchRefinement:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;

.field public sellerOfferDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SellerOfferDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
