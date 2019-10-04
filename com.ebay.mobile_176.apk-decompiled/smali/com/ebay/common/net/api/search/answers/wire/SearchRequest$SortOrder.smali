.class public final enum Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;
.super Ljava/lang/Enum;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum BestMatch:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum BidCountFewest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum BidCountMost:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum ConditionNewFirst:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum ConditionUsedFirst:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum CountryAscending:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum CountryDescending:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum CountryRegionDown:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum CountryRegionUp:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum CurrentPriceHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum CurrentPriceLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum DateListedOldestFirst:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum DistanceNearest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum EndDateRecent:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum EndTimeSoonest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum MileageHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum MileageLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum PricePlusShippingHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum PricePlusShippingLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum StartTimeNewest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum YearHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public static final enum YearLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 78
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "BestMatch"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->BestMatch:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 79
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "CurrentPriceLowest"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CurrentPriceLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 80
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "CurrentPriceHighest"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CurrentPriceHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 81
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "DistanceNearest"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->DistanceNearest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 82
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "EndTimeSoonest"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->EndTimeSoonest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 83
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "PricePlusShippingLowest"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->PricePlusShippingLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 84
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "PricePlusShippingHighest"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->PricePlusShippingHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 85
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "StartTimeNewest"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->StartTimeNewest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 86
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "BidCountMost"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->BidCountMost:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 87
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "BidCountFewest"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->BidCountFewest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 88
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "CountryAscending"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CountryAscending:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 89
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "CountryDescending"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CountryDescending:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 90
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "ConditionNewFirst"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->ConditionNewFirst:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 91
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "ConditionUsedFirst"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->ConditionUsedFirst:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 92
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "CountryRegionDown"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CountryRegionDown:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 93
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "CountryRegionUp"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CountryRegionUp:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 94
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "MileageLowest"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->MileageLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 95
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "MileageHighest"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->MileageHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 96
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "YearLowest"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->YearLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 97
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "YearHighest"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->YearHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 98
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "DateListedOldestFirst"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->DateListedOldestFirst:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 99
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const-string v1, "EndDateRecent"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->EndDateRecent:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const/16 v0, 0x16

    .line 76
    new-array v0, v0, [Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->BestMatch:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CurrentPriceLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CurrentPriceHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->DistanceNearest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->EndTimeSoonest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->PricePlusShippingLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->PricePlusShippingHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->StartTimeNewest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->BidCountMost:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->BidCountFewest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CountryAscending:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CountryDescending:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->ConditionNewFirst:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    aput-object v1, v0, v14

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->ConditionUsedFirst:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CountryRegionDown:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->CountryRegionUp:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->MileageLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->MileageHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->YearLowest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->YearHighest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->DateListedOldestFirst:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->EndDateRecent:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;
    .locals 1

    .line 76
    const-class v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;
    .locals 1

    .line 76
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    return-object v0
.end method
