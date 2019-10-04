.class public Lcom/ebay/common/net/api/search/following/SaasSearchRequest;
.super Ljava/lang/Object;
.source "SaasSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;,
        Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;
    }
.end annotation


# static fields
.field public static final ITEM_CONDITION_NEW_VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_CONDITION_USED_VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

.field public keyword:Ljava/lang/String;

.field public outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

.field public paginationInput:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;

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

.field public shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

.field public sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

.field public userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "1000"

    const-string v1, "1500"

    const-string v2, "1750"

    .line 92
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->ITEM_CONDITION_NEW_VALUES:Ljava/util/List;

    const-string v1, "2000"

    const-string v2, "2500"

    const-string v3, "3000"

    const-string v4, "4000"

    const-string v5, "5000"

    const-string v6, "6000"

    const-string v7, "7000"

    .line 93
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->ITEM_CONDITION_USED_VALUES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->BestMatch:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    return-void
.end method

.method private static varargs addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;",
            ">;",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 790
    new-instance v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;-><init>()V

    .line 791
    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    .line 792
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    .line 793
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addGlobalConstraintWithParamNameValue(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;",
            ">;",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 804
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraintWithParamNameValue(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static addGlobalConstraintWithParamNameValue(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;",
            ">;",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 815
    new-instance v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;-><init>()V

    .line 816
    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    .line 818
    new-instance p1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    invoke-direct {p1}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;-><init>()V

    .line 819
    iput-object p2, p1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    .line 820
    iput-object p3, p1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    .line 821
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    .line 823
    iput-object p4, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    .line 825
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private compareAsUnorderedSets(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz p1, :cond_5

    .line 1121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 1125
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    return v0
.end method

.method private configureSortOrder(Lcom/ebay/mobile/search/SearchIntentBuilder;)V
    .locals 2

    .line 689
    sget-object v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$SearchRequest$SortOrder:[I

    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 707
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSortOrderBestMatch()Lcom/ebay/mobile/search/SearchIntentBuilder;

    goto :goto_0

    .line 704
    :pswitch_0
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSortOrderDistanceNearest()Lcom/ebay/mobile/search/SearchIntentBuilder;

    goto :goto_0

    .line 701
    :pswitch_1
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSortOrderStartTimeNewest()Lcom/ebay/mobile/search/SearchIntentBuilder;

    goto :goto_0

    .line 698
    :pswitch_2
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSortOrderPricePlusShippingHighest()Lcom/ebay/mobile/search/SearchIntentBuilder;

    goto :goto_0

    .line 695
    :pswitch_3
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSortOrderPricePlusShippingLowest()Lcom/ebay/mobile/search/SearchIntentBuilder;

    goto :goto_0

    .line 692
    :pswitch_4
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSortOrderEndTimeSoonest()Lcom/ebay/mobile/search/SearchIntentBuilder;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromSearchParameters(Lcom/ebay/common/net/api/search/SearchParameters;)Lcom/ebay/common/net/api/search/following/SaasSearchRequest;
    .locals 11

    .line 125
    new-instance v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 139
    :cond_0
    new-instance v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;-><init>()V

    iput-object v2, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    .line 140
    iget-object v2, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    iput-object v3, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    .line 141
    iget-object v2, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    invoke-static {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    move-result-object v2

    iput-object v2, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    sget-object v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->BestMatch:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    iput-object v2, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-virtual {v2}, Lcom/ebay/common/model/search/EbayCategorySummary;->isDefault()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-wide v2, v2, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    .line 170
    :cond_1
    iget-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    if-eqz v2, :cond_2

    .line 171
    sget-object v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;->ITEM_TITLE_AND_DESCRIPTION_SEARCH:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    .line 174
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v4}, Lcom/ebay/common/model/search/EbayAspectHistogram;->hasCheck()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 180
    new-instance v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;

    invoke-direct {v4}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;-><init>()V

    .line 181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    .line 183
    iget-object v5, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-virtual {v5}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 185
    invoke-virtual {v6}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->hasCheck()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 187
    new-instance v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;

    invoke-direct {v7}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;-><init>()V

    .line 188
    iget-object v8, v6, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    iput-object v8, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->name:Ljava/lang/String;

    .line 189
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->value:Ljava/util/List;

    .line 191
    invoke-virtual {v6}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 197
    iget-boolean v9, v8, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    if-eqz v9, :cond_4

    .line 198
    iget-object v9, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->value:Ljava/util/List;

    iget-object v8, v8, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 201
    :cond_5
    iget-object v6, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :cond_6
    new-instance v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    invoke-direct {v5}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;-><init>()V

    iput-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    .line 206
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v6, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    iget-object v6, v6, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    iput-object v6, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->type:Ljava/lang/String;

    .line 207
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v6, p0, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    iget-object v6, v6, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    iput-object v6, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->value:Ljava/lang/String;

    .line 209
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_7
    iget-object v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_9

    invoke-static {}, Lcom/ebay/mobile/search/refine/types/ItemConditionSearchFilter;->itemConditionHistogramSupported()Z

    move-result v4

    if-nez v4, :cond_9

    .line 215
    iget-object v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    const-string v7, "Unspecified"

    .line 216
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v4, "non_specified"

    .line 220
    :cond_8
    sget-object v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ItemCondition:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    new-array v8, v6, [Ljava/lang/String;

    aput-object v4, v8, v5

    invoke-static {v2, v7, v8}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    goto :goto_3

    .line 222
    :cond_9
    invoke-static {}, Lcom/ebay/mobile/search/refine/types/ItemConditionSearchFilter;->itemConditionHistogramSupported()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 223
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ItemCondition:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    new-array v7, v6, [Ljava/lang/String;

    iget-object v8, p0, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 226
    :cond_a
    :goto_3
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    if-eqz v4, :cond_b

    .line 227
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->FreeShippingOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 230
    :cond_b
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    if-eqz v4, :cond_c

    .line 231
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ExpeditedShippingType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 234
    :cond_c
    iget v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    if-eqz v4, :cond_d

    .line 235
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->PreferredItemLocation:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    new-array v7, v6, [Ljava/lang/String;

    iget v8, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    .line 236
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 235
    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 237
    :cond_d
    iget v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_e

    iget-object v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 238
    :cond_e
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->AvailableTo:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    new-array v7, v6, [Ljava/lang/String;

    iget-object v8, p0, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 241
    :cond_f
    iget v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v7, 0x7

    if-eq v4, v7, :cond_12

    iget v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    if-eqz v4, :cond_12

    .line 243
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
    iget v7, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_10

    const-string v7, "Auction"

    .line 245
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 249
    :cond_10
    iget v7, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_11

    const-string v7, "FixedPrice"

    .line 250
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_11
    :goto_4
    sget-object v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ListingType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string v8, "operator"

    const-string v9, "exclusive"

    invoke-static {v2, v7, v8, v9, v4}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraintWithParamNameValue(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 257
    :cond_12
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    if-eqz v4, :cond_13

    .line 258
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->BestOfferOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 261
    :cond_13
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    if-eqz v4, :cond_14

    .line 262
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->LocalPickupOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 265
    :cond_14
    iget v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    if-lez v4, :cond_15

    iget-object v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 266
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->MaxDistance:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string v7, "postalcode"

    iget-object v8, p0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    iget v9, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    .line 267
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 266
    invoke-static {v2, v4, v7, v8, v9}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraintWithParamNameValue(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_15
    iget-object v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v4, :cond_16

    .line 271
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->MinPrice:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string v7, "currency"

    iget-object v8, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    iget-object v9, p0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v9, v9, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v2, v4, v7, v8, v9}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraintWithParamNameValue(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_16
    iget-object v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v4, :cond_17

    .line 274
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->MaxPrice:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string v7, "currency"

    iget-object v8, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    iget-object v9, p0, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v9, v9, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v2, v4, v7, v8, v9}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraintWithParamNameValue(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_17
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    if-eqz v4, :cond_18

    .line 279
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->CompletedListingsOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 282
    :cond_18
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    if-eqz v4, :cond_19

    .line 283
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->SoldItemsOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 286
    :cond_19
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    if-eqz v4, :cond_1a

    .line 287
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->Deals:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string v7, "rpp"

    const-string v8, "iis"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 290
    :cond_1a
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    if-eqz v4, :cond_1b

    .line 291
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->LocalMerchantStorePickupOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 294
    :cond_1b
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    if-eqz v4, :cond_1c

    .line 295
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->EbayNowDelivery:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 298
    :cond_1c
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    if-eqz v4, :cond_1d

    .line 299
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->EbayPlus:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 302
    :cond_1d
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    if-eqz v4, :cond_1e

    .line 303
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->CharityOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 306
    :cond_1e
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    if-eqz v4, :cond_1f

    .line 307
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ReturnsAcceptedOnly:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 310
    :cond_1f
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    if-eqz v4, :cond_20

    .line 311
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->AuthorizedSellerBadge:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 314
    :cond_20
    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    if-eqz v4, :cond_21

    .line 315
    sget-object v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->IsItemAuthenticated:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 318
    :cond_21
    iget-object v4, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    if-eqz v4, :cond_23

    .line 321
    new-instance v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    invoke-direct {v7}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;-><init>()V

    .line 322
    sget-object v8, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->SellerOffer:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iput-object v8, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    .line 324
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 325
    new-instance v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    invoke-direct {v9}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;-><init>()V

    const-string/jumbo v10, "sellerName"

    .line 326
    iput-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    .line 327
    iget-object v10, v4, Lcom/ebay/common/net/api/search/SellerOfferParameters;->sellerName:Ljava/lang/String;

    iput-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    .line 328
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    invoke-direct {v9}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;-><init>()V

    const-string v10, "offerId"

    .line 331
    iput-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    .line 332
    iget-object v10, v4, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerId:Ljava/lang/String;

    iput-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    .line 333
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    invoke-direct {v9}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;-><init>()V

    const-string v10, "offerType"

    .line 336
    iput-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    .line 337
    iget-object v10, v4, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerType:Ljava/lang/String;

    iput-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    .line 338
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v9, v4, Lcom/ebay/common/net/api/search/SellerOfferParameters;->seedCategoryId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 342
    new-instance v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    invoke-direct {v9}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;-><init>()V

    const-string/jumbo v10, "seedCategoryId"

    .line 343
    iput-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    .line 344
    iget-object v10, v4, Lcom/ebay/common/net/api/search/SellerOfferParameters;->seedCategoryId:Ljava/lang/String;

    iput-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    .line 345
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_22
    iput-object v8, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    .line 350
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_23
    iget v7, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    if-eqz v7, :cond_24

    .line 355
    sget-object v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->GuaranteedDeliveryDays:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    new-array v8, v6, [Ljava/lang/String;

    iget v9, p0, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    .line 356
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 355
    invoke-static {v2, v7, v8}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->addGlobalConstraint(Ljava/util/List;Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;[Ljava/lang/String;)V

    .line 360
    :cond_24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_25

    move-object v2, v1

    goto :goto_5

    :cond_25
    const/4 v5, 0x1

    .line 364
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_26

    goto :goto_6

    :cond_26
    move-object v1, v3

    const/4 v5, 0x1

    :goto_6
    if-eqz v5, :cond_27

    .line 370
    new-instance v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    invoke-direct {v3}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;-><init>()V

    .line 371
    iput-object v2, v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    .line 372
    iput-object v1, v3, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    .line 374
    iput-object v3, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    .line 378
    :cond_27
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->keyword:Ljava/lang/String;

    .line 383
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 384
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    goto :goto_7

    :cond_28
    if-eqz v4, :cond_29

    .line 386
    iget-object v1, v4, Lcom/ebay/common/net/api/search/SellerOfferParameters;->sellerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    .line 389
    :cond_29
    :goto_7
    iget-object v1, p0, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 391
    new-instance v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    invoke-direct {v1}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;-><init>()V

    iput-object v1, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    .line 392
    iget-object v1, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    new-instance v2, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;-><init>()V

    iput-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->rewrite:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

    .line 393
    iget-object v1, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->rewrite:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

    iget-object p0, p0, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    iput-object p0, v1, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;->blackList:Ljava/util/List;

    :cond_2a
    return-object v0
.end method

.method private getAspectHistogram()Lcom/ebay/common/model/search/EbayAspectHistogram;
    .locals 8

    .line 715
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 719
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;

    .line 720
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 722
    new-instance v2, Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-direct {v2}, Lcom/ebay/common/model/search/EbayAspectHistogram;-><init>()V

    .line 726
    sget-object v3, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->MERGE_ALL:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    iput-object v3, v2, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    .line 728
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    if-eqz v3, :cond_0

    .line 730
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->type:Ljava/lang/String;

    iput-object v1, v2, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    .line 731
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->value:Ljava/lang/String;

    iput-object v1, v2, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    goto :goto_0

    .line 735
    :cond_0
    iget-object v3, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 737
    iget-object v3, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    const-string v1, "Category"

    .line 740
    iput-object v1, v2, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    .line 741
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    .line 745
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;

    .line 749
    :try_start_0
    new-instance v3, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    invoke-direct {v3}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;-><init>()V

    .line 750
    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->name:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    .line 751
    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    .line 753
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->value:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 755
    new-instance v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    invoke-direct {v5}, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;-><init>()V

    const-string v6, "UTF-8"

    .line 757
    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    const-string v6, "!"

    .line 758
    iget-object v7, v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "LH_SiteWideCondition_NS"

    .line 760
    iput-object v4, v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    const-string v4, "!"

    .line 761
    iput-object v4, v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    goto :goto_3

    .line 765
    :cond_2
    iput-object v4, v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    :goto_3
    const/4 v4, 0x1

    .line 767
    iput-boolean v4, v5, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    .line 768
    invoke-virtual {v3, v5}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 771
    :cond_3
    invoke-virtual {v2, v3}, Lcom/ebay/common/model/search/EbayAspectHistogram;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    return-object v2
.end method


# virtual methods
.method protected configureSearchIntent(Lcom/ebay/mobile/search/SearchIntentBuilder;)Lcom/ebay/mobile/search/SearchIntentBuilder;
    .locals 4
    .param p1    # Lcom/ebay/mobile/search/SearchIntentBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setKeyword(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 653
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSellerId(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 656
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->rewrite:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->rewrite:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;->blackList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setRewriteBlackList(Ljava/util/List;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setBuyerPostalCode(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    if-eqz v0, :cond_2

    .line 665
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->configureSortOrder(Lcom/ebay/mobile/search/SearchIntentBuilder;)V

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 669
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v3, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategory(JLjava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;->ITEM_TITLE_AND_DESCRIPTION_SEARCH:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 673
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setDescriptionSearchOnly()Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 675
    :cond_4
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    if-eqz v0, :cond_5

    .line 678
    invoke-direct {p0}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->getAspectHistogram()Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setAspectHistogram(Lcom/ebay/common/model/search/EbayAspectHistogram;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 680
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 681
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ebay/mobile/search/SearchIntentMappingUtil;->configureSearchIntent(Lcom/ebay/mobile/search/SearchIntentBuilder;Ljava/util/List;)V

    :cond_5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5d

    .line 849
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2e

    .line 851
    :cond_1
    check-cast p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;

    .line 854
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 855
    :goto_1
    iget-object v5, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    .line 859
    :cond_6
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 862
    :cond_7
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    if-nez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    if-eq v2, v3, :cond_a

    return v1

    .line 864
    :cond_a
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    .line 867
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    iget-object v4, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    if-nez v4, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    if-eq v2, v4, :cond_d

    return v1

    .line 869
    :cond_d
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    if-eqz v2, :cond_27

    .line 871
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_e

    return v1

    .line 874
    :cond_e
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 877
    new-instance v4, Landroidx/collection/ArrayMap;

    iget-object v5, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 878
    iget-object v5, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    .line 879
    iget-object v7, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 881
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 883
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    .line 886
    iget-object v6, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    if-eqz v6, :cond_26

    .line 891
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    if-eqz v7, :cond_26

    iget-object v7, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    if-eqz v7, :cond_26

    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    .line 894
    invoke-virtual {v7, v8}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_14

    .line 898
    :cond_10
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    if-nez v7, :cond_11

    const/4 v7, 0x1

    goto :goto_9

    :cond_11
    const/4 v7, 0x0

    :goto_9
    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    if-nez v8, :cond_12

    const/4 v8, 0x1

    goto :goto_a

    :cond_12
    const/4 v8, 0x0

    :goto_a
    if-eq v7, v8, :cond_13

    return v1

    .line 900
    :cond_13
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    if-eqz v7, :cond_19

    .line 902
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_14

    return v1

    .line 904
    :cond_14
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 905
    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 912
    :cond_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 914
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 915
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 920
    sget-object v11, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    iget-object v12, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v12}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    if-eqz v9, :cond_18

    .line 935
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    goto :goto_d

    :pswitch_0
    if-eqz v9, :cond_16

    .line 924
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Double;->compare(DD)I

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_b

    :cond_16
    if-eqz v10, :cond_15

    :goto_b
    return v1

    :pswitch_1
    if-eqz v9, :cond_17

    .line 929
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_15

    goto :goto_c

    :cond_17
    if-eqz v10, :cond_15

    :goto_c
    return v1

    :cond_18
    if-eqz v10, :cond_15

    :goto_d
    return v1

    .line 943
    :cond_19
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    if-nez v7, :cond_1a

    const/4 v7, 0x1

    goto :goto_e

    :cond_1a
    const/4 v7, 0x0

    :goto_e
    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    if-nez v8, :cond_1b

    const/4 v8, 0x1

    goto :goto_f

    :cond_1b
    const/4 v8, 0x0

    :goto_f
    if-eq v7, v8, :cond_1c

    return v1

    .line 945
    :cond_1c
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    if-eqz v7, :cond_f

    .line 947
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_1d

    return v1

    .line 949
    :cond_1d
    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 950
    :cond_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 952
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    .line 958
    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 959
    :cond_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 961
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    .line 962
    iget-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    iget-object v11, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    goto :goto_10

    :cond_20
    move-object v9, v3

    :goto_10
    if-eqz v7, :cond_21

    .line 969
    invoke-virtual {v7, v9}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    goto :goto_11

    :cond_21
    if-eqz v9, :cond_22

    :goto_11
    return v1

    :cond_22
    if-eqz v7, :cond_1e

    .line 973
    iget-object v8, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    if-eqz v8, :cond_23

    iget-object v8, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    iget-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    goto :goto_12

    :cond_23
    iget-object v8, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    if-eqz v8, :cond_24

    :goto_12
    return v1

    .line 975
    :cond_24
    iget-object v8, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    if-eqz v8, :cond_25

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    iget-object v8, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_13

    :cond_25
    iget-object v7, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    if-eqz v7, :cond_1e

    :goto_13
    return v1

    :cond_26
    :goto_14
    return v1

    .line 984
    :cond_27
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    if-nez v2, :cond_28

    const/4 v2, 0x1

    goto :goto_15

    :cond_28
    const/4 v2, 0x0

    :goto_15
    iget-object v4, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    if-nez v4, :cond_29

    const/4 v4, 0x1

    goto :goto_16

    :cond_29
    const/4 v4, 0x0

    :goto_16
    if-eq v2, v4, :cond_2a

    return v1

    .line 986
    :cond_2a
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    if-eqz v2, :cond_3f

    .line 988
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_2b

    return v1

    .line 991
    :cond_2b
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 992
    iget-object v4, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->scopedAspect:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 993
    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 995
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;

    .line 996
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;

    .line 999
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    if-nez v7, :cond_2d

    const/4 v7, 0x1

    goto :goto_17

    :cond_2d
    const/4 v7, 0x0

    :goto_17
    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    if-nez v8, :cond_2e

    const/4 v8, 0x1

    goto :goto_18

    :cond_2e
    const/4 v8, 0x0

    :goto_18
    if-eq v7, v8, :cond_2f

    return v1

    .line 1001
    :cond_2f
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    if-eqz v7, :cond_33

    .line 1003
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->type:Ljava/lang/String;

    if-eqz v7, :cond_30

    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->type:Ljava/lang/String;

    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31

    goto :goto_19

    :cond_30
    iget-object v7, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->type:Ljava/lang/String;

    if-eqz v7, :cond_31

    :goto_19
    return v1

    .line 1005
    :cond_31
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->value:Ljava/lang/String;

    if-eqz v7, :cond_32

    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->value:Ljava/lang/String;

    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    goto :goto_1a

    :cond_32
    iget-object v7, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;->value:Ljava/lang/String;

    if-eqz v7, :cond_33

    :goto_1a
    return v1

    .line 1010
    :cond_33
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    if-nez v7, :cond_34

    const/4 v7, 0x1

    goto :goto_1b

    :cond_34
    const/4 v7, 0x0

    :goto_1b
    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    if-nez v8, :cond_35

    const/4 v8, 0x1

    goto :goto_1c

    :cond_35
    const/4 v8, 0x0

    :goto_1c
    if-eq v7, v8, :cond_36

    return v1

    .line 1013
    :cond_36
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    if-eqz v7, :cond_2c

    .line 1015
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_37

    return v1

    .line 1018
    :cond_37
    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1019
    :cond_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1021
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;

    .line 1027
    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1028
    :cond_39
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 1030
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;

    .line 1031
    iget-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->name:Ljava/lang/String;

    if-eqz v10, :cond_39

    iget-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->name:Ljava/lang/String;

    iget-object v11, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->name:Ljava/lang/String;

    .line 1032
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39

    goto :goto_1d

    :cond_3a
    move-object v9, v3

    :goto_1d
    if-nez v7, :cond_3b

    const/4 v8, 0x1

    goto :goto_1e

    :cond_3b
    const/4 v8, 0x0

    :goto_1e
    if-nez v9, :cond_3c

    const/4 v10, 0x1

    goto :goto_1f

    :cond_3c
    const/4 v10, 0x0

    :goto_1f
    if-eq v8, v10, :cond_3d

    return v1

    :cond_3d
    if-eqz v7, :cond_38

    .line 1043
    iget-object v8, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->name:Ljava/lang/String;

    iget-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    return v1

    .line 1046
    :cond_3e
    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->value:Ljava/util/List;

    iget-object v8, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->value:Ljava/util/List;

    invoke-direct {p0, v7, v8}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->compareAsUnorderedSets(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_38

    return v1

    .line 1055
    :cond_3f
    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->keyword:Ljava/lang/String;

    if-eqz v2, :cond_40

    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->keyword:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1056
    :cond_40
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->keyword:Ljava/lang/String;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->keyword:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_20

    :cond_41
    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->keyword:Ljava/lang/String;

    if-eqz v2, :cond_42

    :goto_20
    return v1

    .line 1059
    :cond_42
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    if-nez v2, :cond_43

    const/4 v2, 0x1

    goto :goto_21

    :cond_43
    const/4 v2, 0x0

    :goto_21
    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    if-nez v3, :cond_44

    const/4 v3, 0x1

    goto :goto_22

    :cond_44
    const/4 v3, 0x0

    :goto_22
    if-eq v2, v3, :cond_45

    return v1

    .line 1060
    :cond_45
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    if-eqz v2, :cond_48

    .line 1062
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_46

    return v1

    .line 1064
    :cond_46
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1065
    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1066
    :cond_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1068
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;

    .line 1069
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;

    .line 1070
    invoke-virtual {v4, v5}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    return v1

    .line 1075
    :cond_48
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_23

    :cond_49
    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    if-eqz v2, :cond_4a

    :goto_23
    return v1

    .line 1077
    :cond_4a
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    if-nez v2, :cond_4b

    const/4 v2, 0x1

    goto :goto_24

    :cond_4b
    const/4 v2, 0x0

    :goto_24
    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    if-nez v3, :cond_4c

    const/4 v3, 0x1

    goto :goto_25

    :cond_4c
    const/4 v3, 0x0

    :goto_25
    if-eq v2, v3, :cond_4d

    return v1

    .line 1079
    :cond_4d
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    if-eqz v2, :cond_51

    .line 1081
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_26

    :cond_4e
    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    if-eqz v2, :cond_4f

    :goto_26
    return v1

    .line 1083
    :cond_4f
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_27

    :cond_50
    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    if-eqz v2, :cond_51

    :goto_27
    return v1

    .line 1087
    :cond_51
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-static {v2, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    return v1

    .line 1090
    :cond_52
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    if-nez v2, :cond_53

    const/4 v2, 0x1

    goto :goto_28

    :cond_53
    const/4 v2, 0x0

    :goto_28
    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    if-nez v3, :cond_54

    const/4 v3, 0x1

    goto :goto_29

    :cond_54
    const/4 v3, 0x0

    :goto_29
    if-eq v2, v3, :cond_55

    return v1

    .line 1091
    :cond_55
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    if-eqz v2, :cond_5c

    .line 1093
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    if-nez v2, :cond_56

    const/4 v2, 0x1

    goto :goto_2a

    :cond_56
    const/4 v2, 0x0

    :goto_2a
    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    if-nez v3, :cond_57

    const/4 v3, 0x1

    goto :goto_2b

    :cond_57
    const/4 v3, 0x0

    :goto_2b
    if-eq v2, v3, :cond_58

    return v1

    .line 1095
    :cond_58
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    if-eqz v2, :cond_5c

    .line 1097
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_2c

    :cond_59
    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    if-eqz v2, :cond_5a

    :goto_2c
    return v1

    .line 1099
    :cond_5a
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_2d

    :cond_5b
    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;->userLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    if-eqz p1, :cond_5c

    :goto_2d
    return v1

    :cond_5c
    return v0

    :cond_5d
    :goto_2e
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->keyword:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->keyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 832
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 833
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 834
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 835
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 836
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->userContext:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$UserContext;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 837
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 838
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public populateSearchParameters(Lcom/ebay/common/net/api/search/SearchParameters;)Lcom/ebay/common/net/api/search/SearchParameters;
    .locals 14

    .line 402
    invoke-virtual {p1}, Lcom/ebay/common/net/api/search/SearchParameters;->clone()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object p1

    .line 408
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->shipToLocation:Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    iput-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sortOrder:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;

    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SortOrder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 425
    new-instance v0, Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->categoryId:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v3, v4, v1}, Lcom/ebay/common/model/search/EbayCategorySummary;-><init>(JLjava/lang/String;)V

    iput-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;->ITEM_TITLE_AND_DESCRIPTION_SEARCH:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;

    iget-object v4, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->scope:Ljava/util/List;

    .line 430
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SearchScope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    iput-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    .line 433
    iput-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    .line 434
    iput-boolean v3, p1, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    if-eqz v0, :cond_18

    .line 440
    invoke-direct {p0}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->getAspectHistogram()Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->aspectHistogram:Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 441
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 443
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->constraints:Lcom/ebay/nautilus/domain/data/search/SearchConstraints;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints;->globalAspect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;

    .line 446
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 447
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 448
    :cond_5
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 449
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    goto :goto_1

    :cond_6
    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_4

    .line 452
    iget-object v6, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    if-nez v6, :cond_7

    goto :goto_0

    .line 455
    :cond_7
    sget-object v6, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$search$SearchConstraintType:[I

    iget-object v7, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->constraintType:Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;

    invoke-virtual {v7}, Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 612
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->guaranteedDeliveryDays:I

    goto :goto_0

    .line 587
    :pswitch_1
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    .line 589
    iget-object v10, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, -0x79276ff6

    if-eq v12, v13, :cond_b

    const v13, -0x5c510369

    if-eq v12, v13, :cond_a

    const v13, 0x12e266aa

    if-eq v12, v13, :cond_9

    const v13, 0x73e78fb6

    if-eq v12, v13, :cond_8

    goto :goto_3

    :cond_8
    const-string v12, "offerType"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x2

    goto :goto_4

    :cond_9
    const-string/jumbo v12, "sellerName"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    const-string v12, "offerId"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    goto :goto_4

    :cond_b
    const-string/jumbo v12, "seedCategoryId"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x3

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v10, -0x1

    :goto_4
    packed-switch v10, :pswitch_data_1

    goto :goto_2

    .line 601
    :pswitch_2
    iget-object v8, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    goto :goto_2

    .line 598
    :pswitch_3
    iget-object v6, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    goto :goto_2

    .line 595
    :pswitch_4
    iget-object v5, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    goto :goto_2

    .line 592
    :pswitch_5
    iget-object v7, v9, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    goto :goto_2

    .line 606
    :cond_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 607
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 608
    new-instance v4, Lcom/ebay/common/net/api/search/SellerOfferParameters;

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/ebay/common/net/api/search/SellerOfferParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    goto/16 :goto_0

    .line 580
    :pswitch_6
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    iput-object v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->excludedSellers:Ljava/util/List;

    goto/16 :goto_0

    .line 577
    :pswitch_7
    iput-object v5, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    goto/16 :goto_0

    .line 570
    :pswitch_8
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->authenticityVerified:Z

    goto/16 :goto_0

    .line 567
    :pswitch_9
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->authorizedSeller:Z

    goto/16 :goto_0

    .line 564
    :pswitch_a
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->returnsAccepted:Z

    goto/16 :goto_0

    .line 561
    :pswitch_b
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-static {v4}, Lcom/ebay/mobile/search/SearchIntentMappingUtil;->isDealsAndSavings(Ljava/util/List;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->dealsAndSavings:Z

    goto/16 :goto_0

    .line 558
    :pswitch_c
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->ebayGivingWorks:Z

    goto/16 :goto_0

    .line 555
    :pswitch_d
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->ebayPlusOnly:Z

    goto/16 :goto_0

    .line 552
    :pswitch_e
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->ebnOnly:Z

    goto/16 :goto_0

    .line 549
    :pswitch_f
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->inStorePickupOnly:Z

    goto/16 :goto_0

    .line 546
    :pswitch_10
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->soldItemsOnly:Z

    goto/16 :goto_0

    .line 543
    :pswitch_11
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    goto/16 :goto_0

    .line 536
    :pswitch_12
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    const-string v7, "currency"

    .line 538
    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 539
    new-instance v7, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    invoke-direct {v7, v6, v5}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p1, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_5

    .line 529
    :pswitch_13
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    const-string v7, "currency"

    .line 531
    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 532
    new-instance v7, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    invoke-direct {v7, v6, v5}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p1, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_6

    .line 519
    :pswitch_14
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->paramNameValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;

    const-string v7, "postalcode"

    .line 521
    iget-object v8, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 523
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I

    .line 524
    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AttributeNameValue;->value:Ljava/lang/String;

    iput-object v6, p1, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    goto :goto_7

    .line 516
    :pswitch_15
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->localPickupOnly:Z

    goto/16 :goto_0

    .line 513
    :pswitch_16
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    goto/16 :goto_0

    :pswitch_17
    const-string v4, "Auction"

    .line 505
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x5

    .line 506
    iput v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    goto :goto_8

    :cond_11
    const-string v4, "FixedPrice"

    .line 507
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "BuyItNow"

    .line 508
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    const/4 v4, 0x6

    .line 509
    iput v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    .line 510
    :cond_13
    :goto_8
    iput-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->bestOfferOnly:Z

    goto/16 :goto_0

    .line 502
    :pswitch_18
    iput-object v5, p1, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    goto/16 :goto_0

    .line 498
    :pswitch_19
    invoke-static {v5}, Lcom/ebay/mobile/search/SearchUtil;->getPreferredItemLocationWithConstraintValue(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    goto/16 :goto_0

    .line 492
    :pswitch_1a
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->expeditedShipping:Z

    goto/16 :goto_0

    .line 489
    :pswitch_1b
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    goto/16 :goto_0

    .line 458
    :pswitch_1c
    invoke-static {}, Lcom/ebay/mobile/search/refine/types/ItemConditionSearchFilter;->itemConditionHistogramSupported()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 460
    iput-object v5, p1, Lcom/ebay/common/net/api/search/SearchParameters;->itemCondition:Ljava/lang/String;

    .line 461
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    iput-object v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->appliedItemConditions:Ljava/util/List;

    goto/16 :goto_0

    .line 465
    :cond_14
    iput-object v5, p1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    const-string v5, "non_specified"

    .line 466
    iget-object v6, p1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v4, "Unspecified"

    .line 467
    iput-object v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    goto/16 :goto_0

    .line 468
    :cond_15
    iget-object v5, p1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 472
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$GlobalAspectConstraint;->value:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 474
    sget-object v6, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->ITEM_CONDITION_NEW_VALUES:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v4, "New"

    .line 476
    iput-object v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    goto/16 :goto_0

    .line 479
    :cond_17
    sget-object v6, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->ITEM_CONDITION_USED_VALUES:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v4, "Used"

    .line 481
    iput-object v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    goto/16 :goto_0

    .line 626
    :cond_18
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->keyword:Ljava/lang/String;

    iput-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->sellerName:Ljava/lang/String;

    iput-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 632
    iget-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    if-eqz v0, :cond_19

    .line 633
    iget-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerOffer:Lcom/ebay/common/net/api/search/SellerOfferParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SellerOfferParameters;->sellerName:Ljava/lang/String;

    iput-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 636
    :cond_19
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->rewrite:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->rewrite:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;->blackList:Ljava/util/List;

    .line 637
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 638
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/SaasSearchRequest;->outputSelector:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;->rewrite:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;->blackList:Ljava/util/List;

    iput-object v0, p1, Lcom/ebay/common/net/api/search/SearchParameters;->rewriteBlacklist:Ljava/util/List;

    :cond_1a
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
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
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
