.class public final Lcom/ebay/common/net/api/search/SearchEventTracker;
.super Ljava/lang/Object;
.source "SearchEventTracker.java"

# interfaces
.implements Lcom/ebay/common/net/api/search/ISearchEventTracker;


# static fields
.field public static final IMPRESSION_SEARCH_RESULTS:Ljava/lang/String; = "SearchResults"

.field public static final TRACKING_PRICE_BUCKET_MANUAL:Ljava/lang/String; = "manual"

.field public static final TRACKING_PRICE_BUCKET_ONE:Ljava/lang/String; = "1"

.field public static final TRACKING_PRICE_BUCKET_THREE:Ljava/lang/String; = "3"

.field public static final TRACKING_PRICE_BUCKET_TWO:Ljava/lang/String; = "2"


# instance fields
.field appliedAspects:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private appliedPriceFilter:Ljava/lang/String;

.field private globalFilters:Ljava/lang/String;

.field private final hotnessTreatment:Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

.field private final params:Lcom/ebay/common/net/api/search/SearchParameters;

.field private sortOrder:Ljava/lang/String;

.field private trackingUserQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->appliedAspects:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->sortOrder:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->globalFilters:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->appliedPriceFilter:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 50
    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->trackingUserQuery:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->hotnessTreatment:Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    .line 53
    invoke-direct {p0}, Lcom/ebay/common/net/api/search/SearchEventTracker;->initializeAppliedAspects()V

    .line 54
    invoke-direct {p0}, Lcom/ebay/common/net/api/search/SearchEventTracker;->initializeGlobalFilters()V

    .line 55
    invoke-direct {p0}, Lcom/ebay/common/net/api/search/SearchEventTracker;->initializeSortOrder()V

    .line 56
    invoke-direct {p0}, Lcom/ebay/common/net/api/search/SearchEventTracker;->initializeAppliedPriceFilter()V

    return-void
.end method

.method private initializeAppliedAspects()V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v0, :cond_5

    .line 158
    invoke-virtual {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->getAppliedAspects()Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 165
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    invoke-virtual {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 170
    iget-object v3, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 173
    :cond_2
    new-instance v3, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 177
    iget-object v5, v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto :goto_1

    .line 180
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v0, ";"

    const/4 v2, 0x0

    .line 184
    invoke-static {v0, v2, v1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->join(Ljava/lang/CharSequence;ZLjava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->appliedAspects:Ljava/lang/String;

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private initializeAppliedPriceFilter()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->priceBucketListIndex:I

    packed-switch v0, :pswitch_data_0

    .line 205
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    .line 202
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->appliedPriceFilter:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const-string v0, "2"

    .line 199
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->appliedPriceFilter:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string v0, "1"

    .line 196
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->appliedPriceFilter:Ljava/lang/String;

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "manual"

    .line 206
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->appliedPriceFilter:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeGlobalFilters()V
    .locals 3

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-static {}, Lcom/ebay/mobile/search/refine/types/ItemConditionSearchFilter;->itemConditionHistogramSupported()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/search/refine/types/ItemConditionSearchFilter;->itemConditionHistogramSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "Condition"

    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string v1, "Location"

    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    const-string v1, "Format"

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "Price"

    .line 226
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_6
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    if-eqz v1, :cond_7

    const-string v1, "FreeShipping"

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_7
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    if-eqz v1, :cond_8

    const-string v1, "ExpeditedShipping"

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_8
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    if-eqz v1, :cond_9

    const-string v1, "BOPIS"

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_9
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    if-eqz v1, :cond_a

    const-string v1, "LocalMerchantPickup"

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_a
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    if-eqz v1, :cond_b

    const-string v1, "eBayNow"

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_b
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, "Seller:Specific"

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_c
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    if-eqz v1, :cond_d

    const-string v1, "ReturnsAccepted"

    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_d
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    if-eqz v1, :cond_e

    const-string v1, "AuthorizedSeller"

    .line 249
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_e
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    if-eqz v1, :cond_f

    const-string v1, "AuthenticityVerified"

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_f
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    if-eqz v1, :cond_10

    const-string v1, "CompletedItems"

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_10
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    if-eqz v1, :cond_11

    const-string v1, "SoldItems"

    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_11
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    if-eqz v1, :cond_12

    const-string v1, "PayPal"

    .line 257
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_12
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    if-eqz v1, :cond_13

    const-string v1, "BestOffer"

    .line 259
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_13
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    if-eqz v1, :cond_14

    const-string v1, "DescriptionSearch"

    .line 261
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_14
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    if-eqz v1, :cond_15

    const-string v1, "EbayPlus"

    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_15
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    if-eqz v1, :cond_16

    const-string v1, "eBayCharity"

    .line 266
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_16
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    if-eqz v1, :cond_17

    const-string v1, "Savings"

    .line 269
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_18

    const-string v1, ","

    .line 273
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->globalFilters:Ljava/lang/String;

    :cond_18
    return-void
.end method

.method private initializeSortOrder()V
    .locals 2

    const-string v0, "EndTimeSoonest"

    .line 281
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 282
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->sortOrder:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const-string v0, "StartTimeNewest"

    .line 283
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2"

    .line 284
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->sortOrder:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "CurrentPriceHighest"

    .line 285
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "4"

    .line 286
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->sortOrder:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "BestMatch"

    .line 287
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "PricePlusShippingLowest"

    .line 289
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "6"

    .line 290
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->sortOrder:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v0, "PricePlusShippingHighest"

    .line 291
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "7"

    .line 292
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->sortOrder:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v0, "DistanceNearest"

    .line 293
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "8"

    .line 294
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->sortOrder:Ljava/lang/String;

    goto :goto_1

    :cond_6
    :goto_0
    const-string v0, "5"

    .line 288
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->sortOrder:Ljava/lang/String;

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method buildTrackingData(Lcom/ebay/nautilus/kernel/content/EbayContext;ILcom/ebay/common/net/api/search/ISearchTracking;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;
    .locals 4

    .line 71
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->getTrackingResponseHeader()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->getRequestCorrelationId()Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v3, "SearchResults"

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 75
    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v2

    const-string v3, "cpnip"

    .line 76
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string/jumbo v2, "sqp"

    iget-object v3, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->trackingUserQuery:Ljava/lang/String;

    .line 77
    invoke-virtual {p2, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string/jumbo v2, "plusfilter"

    iget-object v3, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-boolean v3, v3, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    .line 78
    :goto_0
    invoke-virtual {p2, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string/jumbo v2, "trknvpsvc"

    .line 79
    invoke-virtual {p2, v2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string/jumbo v0, "rq"

    .line 80
    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string/jumbo v0, "sn"

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 81
    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string v0, "aa"

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->appliedAspects:Ljava/lang/String;

    .line 82
    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string v0, "gf"

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->globalFilters:Ljava/lang/String;

    .line 83
    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string/jumbo v0, "sort"

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->sortOrder:Ljava/lang/String;

    .line 84
    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string/jumbo v0, "pricefilter"

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->appliedPriceFilter:Ljava/lang/String;

    .line 85
    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string/jumbo v0, "smect"

    .line 86
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->getSmeCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string v0, "hotct"

    .line 87
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->getHotnessCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->hotnessTreatment:Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    .line 88
    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setExperimentEventTargetTags(Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    .line 90
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sQr"

    .line 91
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_2

    const-string v0, "mnprc"

    .line 93
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_3

    const-string v0, "mxprc"

    .line 95
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    :cond_3
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->trackingUserQuery:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "tab"

    const-string v1, "11"

    .line 101
    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    goto :goto_1

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "tab"

    const-string v1, "12"

    .line 103
    invoke-virtual {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 105
    :cond_5
    :goto_1
    new-instance v0, Lcom/ebay/mobile/search/RefinementLocks;

    invoke-direct {v0, p1}, Lcom/ebay/mobile/search/RefinementLocks;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    const-string p1, "flockcount"

    .line 106
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    .line 107
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/search/RefinementLocks;->getLockedRefinementsCount(Lcom/ebay/nautilus/domain/EbayCountry;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p2, p1, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 108
    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/search/RefinementLocks;->getLockedRefinementNames(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, "flock"

    .line 110
    invoke-virtual {p2, v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    :cond_6
    const-string p1, "funlock_actn"

    .line 112
    invoke-virtual {v0}, Lcom/ebay/mobile/search/RefinementLocks;->getUnlockedRefinementsCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 114
    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->interestId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "interestId"

    .line 115
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->interestId:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 117
    :cond_7
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->hasSiteRewrite()Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0xbe

    .line 118
    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addFlag(I)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 120
    :cond_8
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->hasKeywordRewrite()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x1a4

    .line 121
    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addFlag(I)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    :cond_9
    const-string p1, "egdct"

    .line 125
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->getGuaranteedDeliveryCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p2, p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 126
    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    if-eqz p1, :cond_a

    const-string p1, "gf"

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "egd_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    :cond_a
    const-string p1, "bmpct"

    .line 132
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->getBelowMarketPriceCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p2, p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 134
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->getQuantitySoldModuleIds()Ljava/util/Collection;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "qsModId"

    const-string v1, ","

    .line 136
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 138
    :cond_b
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->getXtTags()Ljava/util/Collection;

    move-result-object p1

    .line 139
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "!xt"

    const-string v1, ","

    .line 141
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p2, v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 143
    :cond_c
    invoke-interface {p3}, Lcom/ebay/common/net/api/search/ISearchTracking;->getClientLoadXtTags()Ljava/util/Collection;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_d

    const-string p3, "!clientLoadXt"

    const-string v0, ","

    .line 145
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 147
    :cond_d
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    return-object p1
.end method

.method public generateSaaSTrackingHeader(Lcom/ebay/nautilus/kernel/content/EbayContext;I)Ljava/lang/String;
    .locals 0

    .line 305
    invoke-static {p1, p2}, Lcom/ebay/nautilus/domain/analytics/TrackingUtil;->generateTrackingHeader(Lcom/ebay/nautilus/kernel/content/EbayContext;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public trackResponse(Lcom/ebay/nautilus/kernel/content/EbayContext;ILcom/ebay/common/net/api/search/ISearchTracking;)V
    .locals 2

    const-string/jumbo v0, "postalCodeTestQuery"

    .line 63
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchEventTracker;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/net/api/search/SearchEventTracker;->buildTrackingData(Lcom/ebay/nautilus/kernel/content/EbayContext;ILcom/ebay/common/net/api/search/ISearchTracking;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method
