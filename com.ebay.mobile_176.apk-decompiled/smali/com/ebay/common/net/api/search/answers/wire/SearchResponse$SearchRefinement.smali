.class public final Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$SearchRefinement;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchRefinement"
.end annotation


# instance fields
.field public categoryHistogram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;",
            ">;"
        }
    .end annotation
.end field

.field public conditionHistogram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ConditionHistogram;",
            ">;"
        }
    .end annotation
.end field

.field public guaranteedDeliveryHistogram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$GuaranteedDeliveryHistogram;",
            ">;"
        }
    .end annotation
.end field

.field public itemLocationHistogram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ItemLocationHistogram;",
            ">;"
        }
    .end annotation
.end field

.field public priceFilterHistogram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$PriceFilterHistogram;",
            ">;"
        }
    .end annotation
.end field

.field public scopedAspectHistogram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
