.class synthetic Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;
.super Ljava/lang/Object;
.source "SaasSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/following/SaasSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$common$net$api$search$answers$wire$SearchRequest$SortOrder:[I

.field static final synthetic $SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 689
    invoke-static {}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->values()[Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$SearchRequest$SortOrder:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$SearchRequest$SortOrder:[I

    sget-object v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->EndTimeSoonest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-virtual {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$SearchRequest$SortOrder:[I

    sget-object v3, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->PricePlusShippingLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-virtual {v3}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$SearchRequest$SortOrder:[I

    sget-object v4, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->PricePlusShippingHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-virtual {v4}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$SearchRequest$SortOrder:[I

    sget-object v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->StartTimeNewest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-virtual {v5}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$SearchRequest$SortOrder:[I

    sget-object v6, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->DistanceNearest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-virtual {v6}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 455
    :catch_4
    invoke-static {}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->values()[Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    :try_start_5
    sget-object v5, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ItemCondition:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->FreeShippingOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ExpeditedShippingType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->PreferredLocation:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->PreferredItemLocation:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->LocatedIn:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->AvailableTo:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ListingType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->BestOfferOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->LocalPickupOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->MaxDistance:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->MinPrice:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->MaxPrice:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->CompletedListingsOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->SoldItemsOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->LocalMerchantStorePickupOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->EbayNowDelivery:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->EbayPlus:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->CharityOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->Deals:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ReturnsAcceptedOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->AuthorizedSellerBadge:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->IsItemAuthenticated:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->IncludeSeller:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ExcludeSeller:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->SellerOffer:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->GuaranteedDeliveryDays:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
