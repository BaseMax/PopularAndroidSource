.class public final Lcom/ebay/common/net/api/search/SearchParameters;
.super Ljava/lang/Object;
.source "SearchParameters.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;,
        Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;,
        Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    }
.end annotation


# static fields
.field public static final BUYING_FORMAT_ALL:I = 0x7

.field public static final BUYING_FORMAT_AUCTION:I = 0x5

.field public static final BUYING_FORMAT_BUY_IT_NOW:I = 0x6

.field public static final CONDITION_NEW:Ljava/lang/String; = "New"

.field public static final CONDITION_UNSPECIFIED:Ljava/lang/String; = "Unspecified"

.field public static final CONDITION_USED:Ljava/lang/String; = "Used"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/net/api/search/SearchParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final GUARANTEED_DELIVERY_UNSPECIFIED:I = 0x0

.field public static final LISTING_FORMAT_AUCTION:I = 0x1

.field public static final LISTING_FORMAT_AUCTION_WITH_BIN:I = 0x4

.field public static final LISTING_FORMAT_FIXED_PRICE:I = 0x2

.field public static final LISTING_FORMAT_MASK:I = 0x7

.field public static final SORT_BEST_MATCH:Ljava/lang/String; = "BestMatch"

.field public static final SORT_DISTANCE_NEAREST:Ljava/lang/String; = "DistanceNearest"

.field public static final SORT_END_TIME_SOONEST:Ljava/lang/String; = "EndTimeSoonest"

.field public static final SORT_PRICE_HIGHEST:Ljava/lang/String; = "CurrentPriceHighest"

.field public static final SORT_PRICE_PLUC_SHIPPING_LOWEST:Ljava/lang/String; = "PricePlusShippingLowest"

.field public static final SORT_PRICE_PLUS_SHIPPING_HIGHEST:Ljava/lang/String; = "PricePlusShippingHighest"

.field public static final SORT_START_TIME_NEWEST:Ljava/lang/String; = "StartTimeNewest"

.field private static lastSearchId:I


# instance fields
.field public allowRewrites:Z

.field public appliedItemConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

.field public authenticityVerified:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public authorizedSeller:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public bestOfferOnly:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public blacklistRecallFiltering:Z

.field public buyerPostalCode:Ljava/lang/String;
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public buyingFormat:I
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public category:Lcom/ebay/common/model/search/EbayCategorySummary;
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public completedListings:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public condition:Ljava/lang/String;
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public country:Lcom/ebay/nautilus/domain/EbayCountry;

.field public countryId:Ljava/lang/String;

.field public dealsAndSavings:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public dealsSearch:Z

.field public descriptionSearch:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public ebayGivingWorks:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public ebayPlusOnly:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public ebnOnly:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public excludedSellers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public expeditedShipping:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public freeShipping:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

.field public garageSearch:Z

.field public guaranteedDeliveryDays:I
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public hideShipping:Z

.field public iafToken:Ljava/lang/String;

.field public imageSearchJpgData:Ljava/lang/String;

.field public inStorePickupOnly:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public interestId:Ljava/lang/String;

.field public isImageSearchByReference:Z

.field public itemCondition:Ljava/lang/String;
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public itemId:Ljava/lang/Long;

.field public keywords:Ljava/lang/String;
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public localPickupOnly:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public maxCountPerPage:I

.field public maxDistance:I
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public md5:Ljava/lang/String;

.field public minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

.field public newItemsOnly:Z

.field public final numberOfPagesToPrefetch:I

.field public paypalAccepted:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public preferredItemLocation:I
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public priceBucketListIndex:I

.field public primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

.field public productId:Ljava/lang/String;

.field public productIdType:Ljava/lang/String;

.field public queryIntent:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

.field public returnsAccepted:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public rewriteBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;",
            ">;"
        }
    .end annotation
.end field

.field public savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

.field public final searchId:I

.field public searchSinceTime:J

.field public searchType:I

.field public sellerId:Ljava/lang/String;

.field public sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

.field public showFitmentInRefine:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

.field public soldItemsOnly:Z
    .annotation runtime Lcom/ebay/common/net/api/search/SearchParameters$Refinement;
    .end annotation
.end field

.field public sortOrder:Ljava/lang/String;

.field public useSoaLocaleList:Z

.field public xtTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zoomGuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1216
    new-instance v0, Lcom/ebay/common/net/api/search/SearchParameters$1;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/SearchParameters$1;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/search/SearchParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->priceBucketListIndex:I

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    const/4 v2, 0x0

    .line 116
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    .line 121
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    .line 130
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 137
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    const/4 v3, 0x7

    .line 140
    iput v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    .line 159
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    const-string v3, "BestMatch"

    .line 219
    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    .line 235
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    .line 244
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    .line 246
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    .line 249
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    .line 252
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    .line 255
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 266
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    .line 268
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    .line 270
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    .line 272
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    .line 274
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    .line 276
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    .line 278
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    .line 280
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    .line 282
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    .line 284
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    .line 286
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    .line 289
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    .line 291
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    .line 296
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 302
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 304
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 305
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 307
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    .line 309
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    .line 310
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    .line 312
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    .line 315
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    .line 317
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    .line 344
    sget-object v3, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->Normal:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->queryIntent:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    .line 347
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    .line 348
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    .line 356
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    .line 361
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchType:I

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchId:I

    .line 462
    const-class v2, Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/EbayCountry;

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    .line 465
    const-class v2, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->numberOfPagesToPrefetch:I

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->excludedSellers:Ljava/util/List;

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->appliedItemConditions:Ljava/util/List;

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->interestId:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 483
    :goto_0
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 484
    :goto_1
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 485
    :goto_2
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 486
    :goto_3
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 487
    :goto_4
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    .line 488
    :goto_5
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->isImageSearchByReference:Z

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_6

    .line 491
    sget-object v3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_6
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_7

    .line 493
    sget-object v3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_7
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_8

    .line 495
    sget-object v3, Lcom/ebay/common/model/search/EbayCategorySummary;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/search/EbayCategorySummary;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    :cond_8
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_9

    .line 497
    sget-object v3, Lcom/ebay/common/model/search/EbayAspectHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/search/EbayAspectHistogram;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    :cond_9
    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_a

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    :cond_a
    const/high16 v3, 0x10000

    and-int/2addr v3, v2

    if-eqz v3, :cond_b

    .line 501
    sget-object v3, Lcom/ebay/common/model/search/EbayAspectHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/search/EbayAspectHistogram;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    :cond_b
    const/high16 v3, 0x4000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_c

    .line 503
    sget-object v3, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    :cond_c
    const/high16 v3, 0x10000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_d

    .line 505
    sget-object v3, Lcom/ebay/nautilus/domain/EbaySite;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/EbaySite;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    :cond_d
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, v2

    if-eqz v3, :cond_e

    .line 507
    sget-object v3, Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    :cond_e
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    .line 509
    :goto_6
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    .line 510
    :goto_7
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    .line 511
    :goto_8
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_9

    :cond_12
    const/4 v3, 0x0

    .line 512
    :goto_9
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_a

    :cond_13
    const/4 v3, 0x0

    .line 513
    :goto_a
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    const/high16 v3, 0x20000

    and-int/2addr v3, v2

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    .line 514
    :goto_b
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    const/high16 v3, 0x40000

    and-int/2addr v3, v2

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    .line 515
    :goto_c
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    const/high16 v3, 0x80000

    and-int/2addr v3, v2

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    .line 516
    :goto_d
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    const/high16 v3, 0x100000

    and-int/2addr v3, v2

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    .line 517
    :goto_e
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    const/high16 v3, 0x200000

    and-int/2addr v3, v2

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    .line 518
    :goto_f
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    .line 519
    :goto_10
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    const/high16 v3, 0x800000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_11

    :cond_1a
    const/4 v3, 0x0

    .line 520
    :goto_11
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    const/high16 v3, 0x1000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_12

    :cond_1b
    const/4 v3, 0x0

    .line 521
    :goto_12
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    const/high16 v3, 0x2000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_13

    :cond_1c
    const/4 v3, 0x0

    .line 522
    :goto_13
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->newItemsOnly:Z

    const/high16 v3, 0x8000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_14

    :cond_1d
    const/4 v3, 0x0

    .line 523
    :goto_14
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsSearch:Z

    const/high16 v3, 0x20000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_15

    :cond_1e
    const/4 v3, 0x0

    .line 524
    :goto_15
    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    const/4 v0, 0x1

    .line 525
    :cond_1f
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    .line 529
    const-class v0, Lcom/ebay/common/net/api/search/SellerOfferParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/SellerOfferParameters;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/NumberUtil;->safeParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->md5:Ljava/lang/String;

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->zoomGuid:Ljava/lang/String;

    .line 534
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;Lcom/ebay/common/model/search/EbayCategoryHistogram;)V
    .locals 5

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->priceBucketListIndex:I

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    const/4 v2, 0x0

    .line 116
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    .line 121
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    .line 130
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 137
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    const/4 v3, 0x7

    .line 140
    iput v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    .line 159
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    const-string v3, "BestMatch"

    .line 219
    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    .line 235
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    .line 244
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    .line 246
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    .line 249
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    .line 252
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    .line 255
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 266
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    .line 268
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    .line 270
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    .line 272
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    .line 274
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    .line 276
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    .line 278
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    .line 280
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    .line 282
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    .line 284
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    .line 286
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    .line 289
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    .line 291
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    .line 296
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 302
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 304
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 305
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 307
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    .line 309
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    .line 310
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    .line 312
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    .line 315
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    .line 317
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    .line 344
    sget-object v3, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->Normal:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->queryIntent:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    .line 347
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    .line 348
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    .line 356
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    .line 361
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchType:I

    .line 416
    sget v3, Lcom/ebay/common/net/api/search/SearchParameters;->lastSearchId:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    const/high16 v3, -0x80000000

    :goto_0
    sput v3, Lcom/ebay/common/net/api/search/SearchParameters;->lastSearchId:I

    goto :goto_1

    :cond_0
    sget v3, Lcom/ebay/common/net/api/search/SearchParameters;->lastSearchId:I

    add-int/2addr v3, v1

    goto :goto_0

    :goto_1
    iput v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchId:I

    .line 417
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;->country:Ljava/lang/String;

    invoke-static {v3}, Lcom/ebay/nautilus/domain/EbayCountry;->deserialize(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    .line 418
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;->country:Ljava/lang/String;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    .line 419
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;->postalCode:Ljava/lang/String;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 421
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->paginationInput:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;

    iget v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;->entriesPerPage:I

    iput v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    .line 422
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    .line 423
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    .line 424
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->paginationInput:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;

    iget v3, v3, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;->skipCount:I

    iput v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->numberOfPagesToPrefetch:I

    .line 426
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->keyword:Ljava/lang/String;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 427
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->sellerName:Ljava/lang/String;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 430
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    if-eqz v3, :cond_1

    .line 431
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-virtual {v3}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    .line 433
    :cond_1
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->scope:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->scope:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 434
    iget-object v3, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->scope:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;->ITEM_TITLE_AND_DESCRIPTION_SEARCH:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    .line 436
    :cond_3
    iget-object v1, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->categoryId:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->categoryId:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 438
    iget-object v1, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->categoryId:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz p2, :cond_7

    .line 439
    iget-object v3, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 441
    iget-object p2, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    .line 443
    iget-wide v3, v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    cmp-long v3, v3, v0

    if-nez v3, :cond_5

    .line 444
    new-instance v3, Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object v2, v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Lcom/ebay/common/model/search/EbayCategorySummary;-><init>(JLjava/lang/String;)V

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    goto :goto_3

    .line 445
    :cond_5
    instance-of v3, v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    if-eqz v3, :cond_6

    .line 446
    check-cast v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    iget-object v2, v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/ebay/common/net/api/search/SearchParameters;->getCategoryMatch(JLjava/util/ArrayList;)Lcom/ebay/common/model/search/EbayCategorySummary;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 447
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v2, :cond_4

    goto :goto_4

    .line 452
    :cond_7
    new-instance p2, Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-direct {p2, v0, v1, v2}, Lcom/ebay/common/model/search/EbayCategorySummary;-><init>(JLjava/lang/String;)V

    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 455
    :cond_8
    :goto_4
    iget-object p2, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    if-eqz p2, :cond_9

    iget-object p2, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    if-eqz p2, :cond_9

    .line 456
    iget-object p1, p1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/SearchParameters;->setServiceGlobalConstraints(Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/EbayCountry;II)V
    .locals 4

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->priceBucketListIndex:I

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    const/4 v2, 0x0

    .line 116
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    .line 121
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    .line 130
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 137
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    const/4 v3, 0x7

    .line 140
    iput v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    .line 159
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    const-string v3, "BestMatch"

    .line 219
    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    .line 235
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    .line 244
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    .line 246
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    .line 249
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    .line 252
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    .line 255
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 266
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    .line 268
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    .line 270
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    .line 272
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    .line 274
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    .line 276
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    .line 278
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    .line 280
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    .line 282
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    .line 284
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    .line 286
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    .line 289
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    .line 291
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    .line 296
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 302
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 304
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 305
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 307
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    .line 309
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    .line 310
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    .line 312
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    .line 315
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    .line 317
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    .line 344
    sget-object v3, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->Normal:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->queryIntent:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    .line 347
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    .line 348
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    .line 356
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    .line 361
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchType:I

    .line 379
    sget v0, Lcom/ebay/common/net/api/search/SearchParameters;->lastSearchId:I

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    sput v0, Lcom/ebay/common/net/api/search/SearchParameters;->lastSearchId:I

    goto :goto_1

    :cond_0
    sget v0, Lcom/ebay/common/net/api/search/SearchParameters;->lastSearchId:I

    add-int/2addr v0, v1

    goto :goto_0

    :goto_1
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchId:I

    .line 380
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    .line 381
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    .line 382
    iput p2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    .line 383
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    .line 384
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    .line 385
    iput p3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->numberOfPagesToPrefetch:I

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/EbayCountry;ILcom/ebay/common/net/api/search/SearchParameters$SearchPagination;ILjava/util/List;)V
    .locals 4
    .param p3    # Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/EbayCountry;",
            "I",
            "Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->priceBucketListIndex:I

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    const/4 v2, 0x0

    .line 116
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    .line 121
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    .line 130
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 137
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    const/4 v3, 0x7

    .line 140
    iput v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    .line 159
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    const-string v3, "BestMatch"

    .line 219
    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    .line 235
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    .line 244
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    .line 246
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    .line 249
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    .line 252
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    .line 255
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 266
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    .line 268
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    .line 270
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    .line 272
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    .line 274
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    .line 276
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    .line 278
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    .line 280
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    .line 282
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    .line 284
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    .line 286
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    .line 289
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    .line 291
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    .line 296
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 302
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 304
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 305
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 307
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    .line 309
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    .line 310
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    .line 312
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    .line 315
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    .line 317
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    .line 344
    sget-object v3, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->Normal:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    iput-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->queryIntent:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    .line 347
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    .line 348
    iput-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    .line 356
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    .line 361
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchType:I

    .line 400
    sget v0, Lcom/ebay/common/net/api/search/SearchParameters;->lastSearchId:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    sput v0, Lcom/ebay/common/net/api/search/SearchParameters;->lastSearchId:I

    goto :goto_1

    :cond_0
    sget v0, Lcom/ebay/common/net/api/search/SearchParameters;->lastSearchId:I

    add-int/2addr v0, v1

    goto :goto_0

    :goto_1
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchId:I

    .line 401
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    .line 402
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    .line 403
    iput p2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    .line 404
    iput-object p3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    .line 405
    iput-object p5, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    .line 406
    iput p4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->numberOfPagesToPrefetch:I

    return-void
.end method

.method private getBuyingFormat(Ljava/lang/String;)I
    .locals 2

    .line 679
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2435c1ab

    if-eq v0, v1, :cond_1

    const v1, 0x3bc57623

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Auction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "FixedPrice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x7

    return p1

    :pswitch_0
    const/4 p1, 0x5

    return p1

    :pswitch_1
    const/4 p1, 0x6

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCategoryMatch(JLjava/util/ArrayList;)Lcom/ebay/common/model/search/EbayCategorySummary;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;",
            ">;)",
            "Lcom/ebay/common/model/search/EbayCategorySummary;"
        }
    .end annotation

    .line 718
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    .line 720
    iget-wide v2, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 721
    new-instance v0, Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object v2, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v2}, Lcom/ebay/common/model/search/EbayCategorySummary;-><init>(JLjava/lang/String;)V

    .line 722
    :cond_1
    instance-of v2, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    if-eqz v2, :cond_2

    .line 724
    check-cast v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    .line 725
    iget-object v2, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 726
    iget-object v0, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/common/net/api/search/SearchParameters;->getCategoryMatch(JLjava/util/ArrayList;)Lcom/ebay/common/model/search/EbayCategorySummary;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    :cond_3
    return-object v0
.end method

.method private getSellerOffer(Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;)Lcom/ebay/common/net/api/search/SellerOfferParameters;
    .locals 8

    .line 696
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    .line 698
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x79276ff6

    if-eq v6, v7, :cond_2

    const v7, -0x5c510369

    if-eq v6, v7, :cond_1

    const v7, 0x73e78fb6

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "offerType"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const-string v6, "offerId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "seedCategoryId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x2

    :cond_3
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 707
    :pswitch_0
    iget-object v2, v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    goto :goto_0

    .line 704
    :pswitch_1
    iget-object v1, v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    goto :goto_0

    .line 701
    :pswitch_2
    iget-object v0, v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    goto :goto_0

    .line 712
    :cond_4
    new-instance p1, Lcom/ebay/common/net/api/search/SellerOfferParameters;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/ebay/common/net/api/search/SellerOfferParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final clearZipCodeAndDependencies()V
    .locals 1

    const/4 v0, 0x0

    .line 780
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 781
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    .line 782
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    .line 783
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    return-void
.end method

.method public clone()Lcom/ebay/common/net/api/search/SearchParameters;
    .locals 3

    .line 811
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/SearchParameters;

    .line 812
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-virtual {v1}, Lcom/ebay/common/model/search/EbayCategorySummary;->clone()Lcom/ebay/common/model/search/EbayCategorySummary;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->clone()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_2

    .line 817
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->clone()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 818
    :cond_2
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v1, :cond_3

    .line 819
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->clone()Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 820
    :cond_3
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v1, :cond_4

    .line 821
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->clone()Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 822
    :cond_4
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    if-eqz v1, :cond_5

    .line 823
    new-instance v1, Lcom/ebay/common/net/api/search/SellerOfferParameters;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    invoke-direct {v1, v2}, Lcom/ebay/common/net/api/search/SellerOfferParameters;-><init>(Lcom/ebay/common/net/api/search/SellerOfferParameters;)V

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    .line 824
    :cond_5
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    if-eqz v1, :cond_6

    .line 825
    new-instance v1, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;-><init>(Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;)V

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    .line 826
    :cond_6
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    if-eqz v1, :cond_7

    .line 827
    new-instance v1, Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    invoke-direct {v1, v2}, Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;-><init>(Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;)V

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    .line 828
    :cond_7
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->appliedItemConditions:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 829
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->appliedItemConditions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->appliedItemConditions:Ljava/util/List;

    .line 830
    :cond_8
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    if-eqz v1, :cond_9

    .line 831
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->clone()Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    .line 832
    :cond_9
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    if-eqz v1, :cond_a

    .line 833
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-object v0

    :catch_0
    move-exception v0

    .line 839
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchParameters;->clone()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 942
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v1, :cond_2

    .line 944
    check-cast p1, Lcom/ebay/common/net/api/search/SearchParameters;

    .line 945
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    .line 946
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    iget v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    .line 948
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    .line 949
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->numberOfPagesToPrefetch:I

    iget v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->numberOfPagesToPrefetch:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    iget v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    iget v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    iget v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    iget v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 955
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 956
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    .line 957
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 958
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->excludedSellers:Ljava/util/List;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->excludedSellers:Ljava/util/List;

    .line 959
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    .line 960
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    .line 961
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    .line 962
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->appliedItemConditions:Ljava/util/List;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->appliedItemConditions:Ljava/util/List;

    .line 963
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    .line 964
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->interestId:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->interestId:Ljava/lang/String;

    .line 965
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    .line 966
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->newItemsOnly:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->newItemsOnly:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 982
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 983
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 984
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    .line 985
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 986
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    .line 989
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    .line 990
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    .line 991
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsSearch:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dealsSearch:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    .line 996
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    .line 997
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->md5:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->md5:Ljava/lang/String;

    .line 998
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->zoomGuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->zoomGuid:Ljava/lang/String;

    .line 999
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->isImageSearchByReference:Z

    iget-boolean p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->isImageSearchByReference:Z

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public getRefinementCount(Lcom/ebay/common/net/api/search/SearchParameters;)I
    .locals 1
    .param p1    # Lcom/ebay/common/net/api/search/SearchParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "You must pass in baseline SearchParameters"

    .line 794
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 797
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/SearchParameters;->getRefinementDelta(Lcom/ebay/common/net/api/search/SearchParameters;)I

    move-result p1

    .line 800
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->getAppliedAspectCount()I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public final getRefinementDelta(Lcom/ebay/common/net/api/search/SearchParameters;)I
    .locals 6

    .line 747
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 748
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 750
    const-class v5, Lcom/ebay/common/net/api/search/SearchParameters$Refinement;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 754
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 755
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 756
    invoke-static {v5, v4}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    .line 761
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 769
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p1, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    return v3
.end method

.method public hasConfiguration(Lcom/ebay/nautilus/domain/content/dm/UserContext;)Z
    .locals 4

    .line 1083
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    .line 1088
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->priceBucketListIndex:I

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    if-nez p1, :cond_1

    iget-wide v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->newItemsOnly:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->blacklistRecallFiltering:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->showFitmentInRefine:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsSearch:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->isImageSearchByReference:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->primaryPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->excludedSellers:Ljava/util/List;

    if-nez p1, :cond_1

    const-string p1, "BestMatch"

    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    .line 1126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->interestId:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->queryIntent:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    sget-object v0, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->Normal:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    .line 1143
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->md5:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->zoomGuid:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 6

    .line 1008
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1009
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1010
    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1011
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1012
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1013
    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->numberOfPagesToPrefetch:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1014
    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1015
    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1016
    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1017
    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1018
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1019
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1020
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1021
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1022
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->excludedSellers:Ljava/util/List;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1023
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1024
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1025
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1026
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->appliedItemConditions:Ljava/util/List;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1027
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1028
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->interestId:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1029
    iget-wide v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    iget-wide v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1030
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    const/16 v2, 0x4d5

    const/16 v3, 0x4cf

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1031
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1032
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1033
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v1, 0x4d5

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1034
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x4cf

    goto :goto_4

    :cond_4
    const/16 v1, 0x4d5

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1035
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x4cf

    goto :goto_5

    :cond_5
    const/16 v1, 0x4d5

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1036
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x4cf

    goto :goto_6

    :cond_6
    const/16 v1, 0x4d5

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1037
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x4cf

    goto :goto_7

    :cond_7
    const/16 v1, 0x4d5

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1038
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x4cf

    goto :goto_8

    :cond_8
    const/16 v1, 0x4d5

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1039
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x4cf

    goto :goto_9

    :cond_9
    const/16 v1, 0x4d5

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1040
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x4cf

    goto :goto_a

    :cond_a
    const/16 v1, 0x4d5

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1041
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    if-eqz v1, :cond_b

    const/16 v1, 0x4cf

    goto :goto_b

    :cond_b
    const/16 v1, 0x4d5

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1042
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->newItemsOnly:Z

    if-eqz v1, :cond_c

    const/16 v1, 0x4cf

    goto :goto_c

    :cond_c
    const/16 v1, 0x4d5

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1043
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    if-eqz v1, :cond_d

    const/16 v1, 0x4cf

    goto :goto_d

    :cond_d
    const/16 v1, 0x4d5

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1044
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    if-eqz v1, :cond_e

    const/16 v1, 0x4cf

    goto :goto_e

    :cond_e
    const/16 v1, 0x4d5

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1045
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1046
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1047
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1048
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1049
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1050
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    if-eqz v1, :cond_f

    const/16 v1, 0x4cf

    goto :goto_f

    :cond_f
    const/16 v1, 0x4d5

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1051
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    if-eqz v1, :cond_10

    const/16 v1, 0x4cf

    goto :goto_10

    :cond_10
    const/16 v1, 0x4d5

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1052
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1053
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1054
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    if-eqz v1, :cond_11

    const/16 v1, 0x4cf

    goto :goto_11

    :cond_11
    const/16 v1, 0x4d5

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1055
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    if-eqz v1, :cond_12

    const/16 v1, 0x4cf

    goto :goto_12

    :cond_12
    const/16 v1, 0x4d5

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1056
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsSearch:Z

    if-eqz v1, :cond_13

    const/16 v1, 0x4cf

    goto :goto_13

    :cond_13
    const/16 v1, 0x4d5

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1057
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    if-eqz v1, :cond_14

    const/16 v1, 0x4cf

    goto :goto_14

    :cond_14
    const/16 v1, 0x4d5

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1058
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    if-eqz v1, :cond_15

    const/16 v1, 0x4cf

    goto :goto_15

    :cond_15
    const/16 v1, 0x4d5

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1059
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1060
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->isImageSearchByReference:Z

    if-eqz v1, :cond_16

    const/16 v2, 0x4cf

    :cond_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1061
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1062
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->md5:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1063
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->zoomGuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setCountry(Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 673
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    .line 674
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    return-void
.end method

.method public setServiceAspectConstraints(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;",
            ">;)V"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v0, p1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->applyServiceAspectConstraints(Ljava/util/List;)V

    .line 664
    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    sget-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->USE_NEW:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    iput-object v0, p1, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    return-void
.end method

.method public setServiceGlobalConstraints(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;",
            ">;)V"
        }
    .end annotation

    .line 543
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    .line 546
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    .line 549
    :cond_1
    sget-object v1, Lcom/ebay/common/net/api/search/SearchParameters$2;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 642
    :pswitch_0
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    .line 648
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsSearch:Z

    goto :goto_0

    .line 633
    :pswitch_1
    :try_start_0
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseIntoMs(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 628
    :pswitch_2
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    goto :goto_0

    .line 625
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/search/SearchParameters;->getSellerOffer(Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;)Lcom/ebay/common/net/api/search/SellerOfferParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    goto :goto_0

    .line 622
    :pswitch_4
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    goto :goto_0

    .line 619
    :pswitch_5
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    goto/16 :goto_0

    .line 616
    :pswitch_6
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    goto/16 :goto_0

    .line 612
    :pswitch_7
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    .line 613
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 612
    invoke-static {v0}, Lcom/ebay/mobile/search/SearchUtil;->getPreferredItemLocationWithConstraintValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    goto/16 :goto_0

    .line 607
    :pswitch_8
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    .line 608
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    goto/16 :goto_0

    .line 602
    :pswitch_9
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    new-instance v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    .line 604
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto/16 :goto_0

    .line 597
    :pswitch_a
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    new-instance v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    .line 599
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto/16 :goto_0

    .line 594
    :pswitch_b
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    goto/16 :goto_0

    .line 591
    :pswitch_c
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    goto/16 :goto_0

    .line 588
    :pswitch_d
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    goto/16 :goto_0

    .line 585
    :pswitch_e
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/search/SearchParameters;->getBuyingFormat(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    goto/16 :goto_0

    .line 582
    :pswitch_f
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    goto/16 :goto_0

    .line 576
    :pswitch_10
    invoke-static {}, Lcom/ebay/mobile/search/refine/types/ItemConditionSearchFilter;->itemConditionHistogramSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    goto/16 :goto_0

    .line 579
    :cond_2
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    goto/16 :goto_0

    .line 573
    :pswitch_11
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    goto/16 :goto_0

    .line 570
    :pswitch_12
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    goto/16 :goto_0

    .line 567
    :pswitch_13
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    goto/16 :goto_0

    .line 564
    :pswitch_14
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    goto/16 :goto_0

    .line 561
    :pswitch_15
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    goto/16 :goto_0

    .line 558
    :pswitch_16
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    goto/16 :goto_0

    .line 555
    :pswitch_17
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    goto/16 :goto_0

    .line 552
    :pswitch_18
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {iafToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " interestId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->interestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " searchSinceTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " country:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " countryId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " maxCountPerPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dynamicPagination:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " xtTags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " numberOfPagesToPrefetch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->numberOfPagesToPrefetch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " buyerPostalCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hideShipping:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " keywords:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " JpgData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sellerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " excludedSellers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->excludedSellers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " guaranteedDeliveryDays:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " buyingFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxDistance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sortOrder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " condition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " itemCondition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " siteOverride:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " soldItemsOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " descriptionSearch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " completedListings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " returnsAccepted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " authorizedSeller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " authenticityVerified:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ebayPlusOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ebayGivingWorks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " freeShipping:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " expeditedShipping:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " localPickupOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " inStorePickupOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ebnOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " preferredItemLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " minPrice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " maxPrice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " productId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " productIdType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " paypalAccepted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " bestOffer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " useSoaLocaleList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " dealsAndSavings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rewriteBlacklist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " itemId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " md5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " zoomGuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->zoomGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isImageSearchByReference:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->isImageSearchByReference:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " aspectHistogram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " appliedItemConditions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->appliedItemConditions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " newItemsOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->newItemsOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allowRewrites:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " dealsSearch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsSearch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " garageSearch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 852
    iget v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 854
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 855
    iget v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dynamicPagination:Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 857
    iget v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->numberOfPagesToPrefetch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    iget v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->excludedSellers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 866
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->appliedItemConditions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 870
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->interestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 872
    iget-wide v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 873
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->isImageSearchByReference:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_5

    const/16 v1, 0x40

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_6

    const/16 v1, 0x80

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v1, :cond_8

    const/16 v1, 0x200

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x800

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    if-eqz v1, :cond_b

    const/16 v1, 0x1000

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    if-eqz v1, :cond_c

    const/16 v1, 0x2000

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    if-eqz v1, :cond_d

    const/16 v1, 0x4000

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->useSoaLocaleList:Z

    if-eqz v1, :cond_e

    const v1, 0x8000

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    :goto_e
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v1, :cond_f

    const/high16 v1, 0x10000

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    :goto_f
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    if-eqz v1, :cond_10

    const/high16 v1, 0x20000

    goto :goto_10

    :cond_10
    const/4 v1, 0x0

    :goto_10
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    if-eqz v1, :cond_11

    const/high16 v1, 0x40000

    goto :goto_11

    :cond_11
    const/4 v1, 0x0

    :goto_11
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    if-eqz v1, :cond_12

    const/high16 v1, 0x80000

    goto :goto_12

    :cond_12
    const/4 v1, 0x0

    :goto_12
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    if-eqz v1, :cond_13

    const/high16 v1, 0x100000

    goto :goto_13

    :cond_13
    const/4 v1, 0x0

    :goto_13
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    if-eqz v1, :cond_14

    const/high16 v1, 0x200000

    goto :goto_14

    :cond_14
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    if-eqz v1, :cond_15

    const/high16 v1, 0x400000

    goto :goto_15

    :cond_15
    const/4 v1, 0x0

    :goto_15
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    if-eqz v1, :cond_16

    const/high16 v1, 0x800000

    goto :goto_16

    :cond_16
    const/4 v1, 0x0

    :goto_16
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    if-eqz v1, :cond_17

    const/high16 v1, 0x1000000

    goto :goto_17

    :cond_17
    const/4 v1, 0x0

    :goto_17
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->newItemsOnly:Z

    if-eqz v1, :cond_18

    const/high16 v1, 0x2000000

    goto :goto_18

    :cond_18
    const/4 v1, 0x0

    :goto_18
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    if-eqz v1, :cond_19

    const/high16 v1, 0x4000000

    goto :goto_19

    :cond_19
    const/4 v1, 0x0

    :goto_19
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsSearch:Z

    if-eqz v1, :cond_1a

    const/high16 v1, 0x8000000

    goto :goto_1a

    :cond_1a
    const/4 v1, 0x0

    :goto_1a
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    if-eqz v1, :cond_1b

    const/high16 v1, 0x10000000

    goto :goto_1b

    :cond_1b
    const/4 v1, 0x0

    :goto_1b
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    if-eqz v1, :cond_1c

    const/high16 v1, 0x20000000

    goto :goto_1c

    :cond_1c
    const/4 v1, 0x0

    :goto_1c
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    if-eqz v1, :cond_1d

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_1d

    :cond_1d
    const/4 v1, 0x0

    :goto_1d
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageSearch:Z

    if-eqz v1, :cond_1e

    const/high16 v2, -0x80000000

    :cond_1e
    or-int/2addr v0, v2

    .line 907
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1f

    .line 909
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 910
    :cond_1f
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_20

    .line 911
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->writeToParcel(Landroid/os/Parcel;I)V

    .line 912
    :cond_20
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v0, :cond_21

    .line 913
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/model/search/EbayCategorySummary;->writeToParcel(Landroid/os/Parcel;I)V

    .line 914
    :cond_21
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v0, :cond_22

    .line 915
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/model/search/EbayAspectHistogram;->writeToParcel(Landroid/os/Parcel;I)V

    .line 916
    :cond_22
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    if-eqz v0, :cond_23

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->xtTags:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 918
    :cond_23
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v0, :cond_24

    .line 919
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->savedAppliedAspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/model/search/EbayAspectHistogram;->writeToParcel(Landroid/os/Parcel;I)V

    .line 920
    :cond_24
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    if-eqz v0, :cond_25

    .line 921
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->garageProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;->writeToParcel(Landroid/os/Parcel;I)V

    .line 922
    :cond_25
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    if-eqz v0, :cond_26

    .line 923
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->siteOverride:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/EbaySite;->writeToParcel(Landroid/os/Parcel;I)V

    .line 924
    :cond_26
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    if-eqz v0, :cond_27

    .line 925
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->motorAnswerParameter:Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/verticals/motor/MotorAnswerParameter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 927
    :cond_27
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->productIdType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 930
    iget p2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget-object p2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    if-nez p2, :cond_28

    const/4 p2, 0x0

    goto :goto_1e

    :cond_28
    iget-object p2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemId:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1e
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 932
    iget-object p2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->md5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 933
    iget-object p2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->zoomGuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    iget-object p2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
