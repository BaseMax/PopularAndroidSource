.class public Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SellerOffer;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Product;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$DeliveryEstimate;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$HotnessSignals;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ItemImage;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ImageSearchOutputSelector;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;,
        Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Feature;
    }
.end annotation


# static fields
.field public static final LISTING_TYPE_AUCTION:Ljava/lang/String; = "Auction"

.field public static final LISTING_TYPE_BEST_OFFER:Ljava/lang/String; = "BestOffer"

.field public static final LISTING_TYPE_BIN:Ljava/lang/String; = "BuyItNow"

.field public static final LISTING_TYPE_FIXED_PRICE:Ljava/lang/String; = "FixedPrice"

.field public static final SELLER_NAME:Ljava/lang/String; = "sellerName"

.field public static final SELLER_OFFER_ID:Ljava/lang/String; = "offerId"

.field public static final SELLER_OFFER_SEED_CATEGORY_ID:Ljava/lang/String; = "seedCategoryId"

.field public static final SELLER_OFFER_TYPE:Ljava/lang/String; = "offerType"


# instance fields
.field public categoryId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

.field public excludeCategoryId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public feature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Feature;",
            ">;"
        }
    .end annotation
.end field

.field public imageSearchOutputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ImageSearchOutputSelector;

.field public keyword:Ljava/lang/String;

.field public outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

.field public paginationInput:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;

.field public requestConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;",
            ">;"
        }
    .end annotation
.end field

.field public scope:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;",
            ">;"
        }
    .end annotation
.end field

.field public sellerName:Ljava/lang/String;

.field public shipToLocation:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Location;

.field public sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
