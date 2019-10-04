.class public Lcom/ebay/mobile/activities/QuickSearchHandler;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "QuickSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_QUERY:I = 0x39

.field public static final QUERY_PARAM_REFERRER:Ljava/lang/String; = "referrer"

.field public static final SEARCH_ENABLE_DEBUG_KEYWORD:Ljava/lang/String; = "4f37292d53e41eb687dc617e4a021a7cd01f91ed"


# instance fields
.field searchDeepLinkIntentHelper:Lcom/ebay/mobile/search/SearchDeepLinkIntentHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    return-void
.end method

.method protected static addAutoSugUserQueryToTargetIntent(Landroid/content/Intent;Landroid/content/Intent;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 654
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 657
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;->getLink()Ljava/lang/String;

    move-result-object p2

    const-string v0, "acwc"

    .line 659
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ac"

    .line 660
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string/jumbo p2, "user_query"

    .line 663
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo p2, "user_query"

    .line 665
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private addProductIdRecentSearch(Ljava/lang/String;Lcom/ebay/nautilus/domain/app/Authentication;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/app/Authentication;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 591
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/search/image/ImageSearchComponent;->get(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/mobile/search/image/ImageSearchComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/search/image/ImageSearchComponent;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    new-instance v1, Lcom/ebay/nautilus/domain/content/dm/search/ImageSearchRecentsDataManager$KeyParams;

    invoke-direct {v1, p2}, Lcom/ebay/nautilus/domain/content/dm/search/ImageSearchRecentsDataManager$KeyParams;-><init>(Lcom/ebay/nautilus/domain/app/Authentication;)V

    invoke-static {v0, v1}, Lcom/ebay/nautilus/domain/content/DataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/content/dm/search/RecentSearchesOperations;

    goto :goto_0

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    new-instance v1, Lcom/ebay/nautilus/domain/content/dm/search/RecentsDataManager$KeyParams;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    invoke-direct {v1, p2}, Lcom/ebay/nautilus/domain/content/dm/search/RecentsDataManager$KeyParams;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ebay/nautilus/domain/content/DataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/content/dm/search/RecentSearchesOperations;

    .line 598
    :goto_0
    new-instance v0, Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;-><init>()V

    .line 599
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;->setKeyword(Ljava/lang/String;)Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 600
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;->setIsSellerPrefix(Z)Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 601
    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;->setCategoryId(J)Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 602
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;->setSearchResultCount(I)Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;

    move-result-object p1

    .line 603
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;->setIsSpelledCorrectly(Z)Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;->setProductPrefix(Ljava/lang/String;)Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo$Builder;->createAddRecentSearchInfo()Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo;

    move-result-object p1

    .line 607
    invoke-interface {p2, p1}, Lcom/ebay/nautilus/domain/content/dm/search/RecentSearchesOperations;->addRecentSearch(Lcom/ebay/nautilus/domain/content/dm/search/AddRecentSearchInfo;)V

    return-void
.end method

.method private buildAllOffersIntent(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 1

    const-string v0, "aop:"

    .line 866
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 868
    new-instance v0, Lcom/ebay/mobile/product/AllOffersSearchIntentBuilder;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/product/AllOffersSearchIntentBuilder;-><init>(Landroid/content/Context;)V

    .line 869
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setProductId(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setAllOffers()Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->singleTop()Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private buildEbayItemIntent(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 3

    const-string v0, "id:"

    .line 743
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    new-instance v1, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    sget-object v2, Lcom/ebay/common/ConstantsCommon$ItemKind;->Found:Lcom/ebay/common/ConstantsCommon$ItemKind;

    invoke-direct {v1, v0, v2, p0}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;-><init>(Ljava/lang/String;Lcom/ebay/common/ConstantsCommon$ItemKind;Landroid/content/Context;)V

    .line 746
    invoke-virtual {v1, p2}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    const/high16 p2, 0x4000000

    .line 747
    invoke-virtual {v1, p2}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setFlags(I)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    .line 751
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/activities/QuickSearchHandler;->addProductIdRecentSearch(Ljava/lang/String;Lcom/ebay/nautilus/domain/app/Authentication;)V

    .line 755
    :cond_0
    invoke-virtual {v1}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private buildEpidIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    const-string v0, "iid:"

    .line 767
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, " +"

    .line 769
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 772
    aget-object v0, p1, v0

    const-string v2, "epid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 774
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget-object v2, p1, v3

    const-string v4, "iid:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 776
    aget-object v2, p1, v3

    const-string v3, "iid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 779
    array-length v3, p1

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    aget-object v3, p1, v4

    const-string/jumbo v5, "var:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    aget-object p1, p1, v4

    const-string/jumbo v1, "var:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    move-object v5, p1

    move-object v4, v1

    goto :goto_2

    :cond_2
    const-string v0, "epid:"

    .line 784
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v4, v1

    move-object v5, v4

    .line 786
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/ebay/mobile/prp/PrpIntentBuilder;->create(Landroid/content/Context;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private buildProductReviewIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 794
    new-instance v0, Lcom/ebay/mobile/reviews/SeeAllReviewsIntentBuilder;

    const-string/jumbo v1, "reviews:"

    .line 795
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/reviews/SeeAllReviewsIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0}, Lcom/ebay/mobile/reviews/SeeAllReviewsIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private buildQnaIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 805
    new-instance v0, Lcom/ebay/mobile/qna/SeeAllQnaIntentBuilder;

    const-string/jumbo v1, "qna:"

    .line 806
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/qna/SeeAllQnaIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0}, Lcom/ebay/mobile/qna/SeeAllQnaIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public static buildQuickSearchIntent(Landroid/content/Context;Ljava/lang/String;JLcom/ebay/nautilus/domain/analytics/model/SourceIdentification;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/QuickSearchHandler;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.action.SEARCH"

    .line 314
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "query"

    .line 316
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_0

    const-string p0, "categoryId"

    .line 319
    invoke-virtual {v0, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    const-string p0, "com.ebay.mobile.analytics.sid"

    .line 322
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    if-eqz p5, :cond_2

    const-string/jumbo p0, "trkp"

    .line 325
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method private buildSaaIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 816
    new-instance v0, Lcom/ebay/mobile/qna/SeeAllAnswersIntentBuilder;

    const-string/jumbo v1, "saa:"

    .line 817
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/qna/SeeAllAnswersIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0}, Lcom/ebay/mobile/qna/SeeAllAnswersIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private buildTopProductsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    const-string/jumbo v0, "tppb:"

    .line 829
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, " +"

    .line 831
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 833
    aget-object v2, p1, v0

    const-string/jumbo v3, "tppc:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 834
    aget-object v0, p1, v0

    const-string/jumbo v2, "tppc:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 836
    :cond_0
    aget-object v0, p1, v0

    const-string/jumbo v2, "tppb:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 838
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 840
    aget-object v2, p1, v3

    const-string/jumbo v4, "tppb:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    aget-object p1, p1, v3

    const-string/jumbo v1, "tppb:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_1

    .line 843
    :cond_1
    aget-object p1, p1, v3

    const-string/jumbo v0, "tppc:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "tppc:"

    .line 847
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 849
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 851
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "category_id"

    .line 852
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "browse_node_id"

    .line 855
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :cond_5
    new-instance v0, Lcom/ebay/mobile/product/topproducts/TopProductsIntentBuilder;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/product/topproducts/TopProductsIntentBuilder;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 858
    invoke-virtual {v0}, Lcom/ebay/mobile/product/topproducts/TopProductsIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private getIntentBuilderForPrefix(Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;)Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix$IntentBuilder;
    .locals 1

    .line 717
    sget-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$1;->$SwitchMap$com$ebay$mobile$activities$QuickSearchHandler$SearchPrefix:[I

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 734
    sget-object p1, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$3xQNEyXWMhj7MLhDz4rPWI4LuPY;->INSTANCE:Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$3xQNEyXWMhj7MLhDz4rPWI4LuPY;

    return-object p1

    .line 732
    :pswitch_0
    new-instance p1, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$8xqXUVWEMFgOqvTj6GSzV9uI9Rs;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$8xqXUVWEMFgOqvTj6GSzV9uI9Rs;-><init>(Lcom/ebay/mobile/activities/QuickSearchHandler;)V

    return-object p1

    .line 730
    :pswitch_1
    new-instance p1, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$f7ophVqtiqUVsqi1chjcw2wFNnw;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$f7ophVqtiqUVsqi1chjcw2wFNnw;-><init>(Lcom/ebay/mobile/activities/QuickSearchHandler;)V

    return-object p1

    .line 728
    :pswitch_2
    new-instance p1, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$g3z9FkqJ0a6j28XyVV97Je0ZVdE;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$g3z9FkqJ0a6j28XyVV97Je0ZVdE;-><init>(Lcom/ebay/mobile/activities/QuickSearchHandler;)V

    return-object p1

    .line 726
    :pswitch_3
    new-instance p1, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$Y9bKrlM2v4rqTLxlbTnY8yOJtcM;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$Y9bKrlM2v4rqTLxlbTnY8yOJtcM;-><init>(Lcom/ebay/mobile/activities/QuickSearchHandler;)V

    return-object p1

    .line 724
    :pswitch_4
    new-instance p1, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$Da0bvMWSOkBtNrDUQQnld5KV0EI;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$Da0bvMWSOkBtNrDUQQnld5KV0EI;-><init>(Lcom/ebay/mobile/activities/QuickSearchHandler;)V

    return-object p1

    .line 722
    :pswitch_5
    new-instance p1, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$M15nFEhE259wjQW6CxOEraK_JdA;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$M15nFEhE259wjQW6CxOEraK_JdA;-><init>(Lcom/ebay/mobile/activities/QuickSearchHandler;)V

    return-object p1

    .line 720
    :pswitch_6
    new-instance p1, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$f6u2xb4unVoTl7bLvIpnljEltzM;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$f6u2xb4unVoTl7bLvIpnljEltzM;-><init>(Lcom/ebay/mobile/activities/QuickSearchHandler;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 628
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "com.ebay.mobile.analytics.sid"

    .line 632
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    if-nez v0, :cond_1

    .line 636
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string p1, "EnterSearch"

    const-string/jumbo v1, "sm"

    const-string/jumbo v2, "utq"

    invoke-direct {v0, p1, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private handleSpecialPrefixes(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Z
    .locals 2

    .line 691
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 694
    invoke-static {p1}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->getSearchPrefix(Ljava/lang/String;)Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    move-result-object v0

    .line 697
    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->NORMAL:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 701
    :cond_0
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->getIntentBuilderForPrefix(Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;)Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix$IntentBuilder;

    move-result-object v0

    .line 704
    invoke-interface {v0, p1, p2}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix$IntentBuilder;->buildIntentForQuery(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;

    move-result-object p2

    .line 707
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->rememberSearchQuery(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/activities/QuickSearchHandler;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$8xqXUVWEMFgOqvTj6GSzV9uI9Rs(Lcom/ebay/mobile/activities/QuickSearchHandler;Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/activities/QuickSearchHandler;->buildAllOffersIntent(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$f6u2xb4unVoTl7bLvIpnljEltzM(Lcom/ebay/mobile/activities/QuickSearchHandler;Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/activities/QuickSearchHandler;->buildEbayItemIntent(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getIntentBuilderForPrefix$0(Lcom/ebay/mobile/activities/QuickSearchHandler;Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 0

    .line 722
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->buildEpidIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getIntentBuilderForPrefix$1(Lcom/ebay/mobile/activities/QuickSearchHandler;Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->buildProductReviewIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getIntentBuilderForPrefix$2(Lcom/ebay/mobile/activities/QuickSearchHandler;Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->buildQnaIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getIntentBuilderForPrefix$3(Lcom/ebay/mobile/activities/QuickSearchHandler;Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 0

    .line 728
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->buildSaaIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getIntentBuilderForPrefix$4(Lcom/ebay/mobile/activities/QuickSearchHandler;Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 0

    .line 730
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->buildTopProductsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getIntentBuilderForPrefix$5(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private launchBrowserForQrcode(Landroid/content/Intent;)V
    .locals 3

    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "productid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.BROWSABLE"

    .line 673
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 674
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 678
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12022e

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 684
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 685
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private rememberSearchQuery(Ljava/lang/String;)V
    .locals 1

    .line 612
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ebay/common/Preferences;->setLastKeywordSearch(Ljava/lang/String;)V

    .line 613
    invoke-static {p0, p1}, Lcom/ebay/mobile/eBayDictionaryProvider;->saveRecentQuery(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected directAndClose(Landroid/content/Intent;Lcom/ebay/mobile/search/SearchIntentBuilder;)Lcom/ebay/mobile/search/SearchIntentBuilder;
    .locals 16
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/mobile/search/SearchIntentBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 385
    iget-object v4, v0, Lcom/ebay/mobile/activities/QuickSearchHandler;->searchDeepLinkIntentHelper:Lcom/ebay/mobile/search/SearchDeepLinkIntentHelper;

    invoke-virtual {v4, v0, v1}, Lcom/ebay/mobile/search/SearchDeepLinkIntentHelper;->handleDeepLinkIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->finish()V

    return-object v5

    :cond_0
    const-string v4, "android.intent.action.SEARCH"

    .line 391
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.google.android.gms.actions.SEARCH_ACTION"

    .line 394
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v3

    sget-object v4, Lcom/ebay/mobile/dcs/Dcs$Search$B;->googleAssistantToSrp:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v3, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v4, "EnterSearch"

    const-string/jumbo v6, "sm"

    const-string v7, "ga"

    invoke-direct {v3, v4, v6, v7}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.ebay.mobile.analytics.sid"

    .line 401
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 406
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ebay/mobile/activities/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 407
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 408
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->startActivity(Landroid/content/Intent;)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->finish()V

    return-object v5

    :cond_2
    :goto_0
    const-string/jumbo v3, "query"

    .line 414
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "categoryId"

    const-wide/16 v6, -0x1

    .line 415
    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 417
    invoke-direct/range {p0 .. p1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->getSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    move-result-object v4

    const-string/jumbo v10, "trkp"

    .line 418
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "is_image_search"

    const/4 v12, 0x0

    .line 423
    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const/4 v13, 0x1

    if-eqz v11, :cond_8

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    if-nez p2, :cond_4

    .line 427
    new-instance v2, Lcom/ebay/mobile/search/SearchIntentBuilder;

    invoke-direct {v2, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    move-object/from16 v2, p2

    :goto_2
    const-string/jumbo v3, "should_use_image_holder_data"

    .line 428
    invoke-virtual {v1, v3, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 429
    invoke-virtual {v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setUseImageHolderData()Lcom/ebay/mobile/search/SearchIntentBuilder;

    :cond_5
    cmp-long v3, v8, v6

    if-eqz v3, :cond_6

    const-string v3, "categoryName"

    .line 433
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {v2, v8, v9, v1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategory(JLjava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 438
    :cond_6
    invoke-virtual {v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setImageSearch()Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->singleTop()Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object v1

    .line 440
    invoke-virtual {v1, v4}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object v1

    .line 441
    invoke-virtual {v1, v10}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setTrackingParameters(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    if-nez v13, :cond_7

    return-object v2

    .line 446
    :cond_7
    invoke-virtual {v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->startActivity(Landroid/content/Intent;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->finish()V

    return-object v5

    .line 453
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    return-object v5

    :cond_9
    const v11, 0x7f120bc7

    .line 460
    invoke-virtual {v0, v11}, Lcom/ebay/mobile/activities/QuickSearchHandler;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 463
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ebay/mobile/activities/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->startActivity(Landroid/content/Intent;)V

    .line 466
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v2, "EnterSearch"

    const-string/jumbo v3, "sm"

    const-string/jumbo v4, "ss"

    invoke-direct {v1, v2, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static/range {p0 .. p0}, Lcom/ebay/mobile/following/BrowseFollowingActivity;->getFollowedSearchesStartActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.ebay.mobile.analytics.sid"

    .line 470
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 472
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/activities/QuickSearchHandler;->startActivity(Landroid/content/Intent;)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->finish()V

    return-object v5

    .line 477
    :cond_a
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v11

    sget-object v14, Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;->QA_ENABLED:Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;

    invoke-interface {v11, v14}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "4f37292d53e41eb687dc617e4a021a7cd01f91ed"

    .line 478
    invoke-static {v3}, Lcom/ebay/mobile/search/SearchUtil;->toSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 480
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v1

    .line 481
    invoke-virtual {v1, v13}, Lcom/ebay/common/Preferences;->setIsDeveloperOptionsEnabled(Z)V

    .line 482
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    invoke-interface {v1, v13}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->developerOptionsEnabled(Z)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->finish()V

    return-object v5

    .line 490
    :cond_b
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/ebay/common/Preferences;->isDeveloperOptionsEnabled(Z)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-direct {v0, v3, v4}, Lcom/ebay/mobile/activities/QuickSearchHandler;->handleSpecialPrefixes(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->finish()V

    return-object v5

    :cond_c
    if-nez p2, :cond_d

    const/4 v11, 0x1

    goto :goto_3

    :cond_d
    const/4 v11, 0x0

    :goto_3
    if-nez p2, :cond_e

    .line 501
    new-instance v2, Lcom/ebay/mobile/search/SearchIntentBuilder;

    invoke-direct {v2, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :cond_e
    move-object/from16 v2, p2

    .line 504
    :goto_4
    invoke-static {v3}, Lcom/ebay/common/view/util/BarcodeScanUtil;->isProductQuery(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 505
    new-instance v14, Lcom/ebay/mobile/util/ScanResult;

    invoke-direct {v14, v3}, Lcom/ebay/mobile/util/ScanResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setBarcodeScan(Lcom/ebay/mobile/util/ScanResult;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    goto :goto_5

    .line 509
    :cond_f
    sget-object v14, Lcom/ebay/nautilus/domain/content/dm/search/SearchPrefixType;->SELLER:Lcom/ebay/nautilus/domain/content/dm/search/SearchPrefixType;

    invoke-virtual {v14}, Lcom/ebay/nautilus/domain/content/dm/search/SearchPrefixType;->getPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 511
    invoke-virtual {v2, v3}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSellerIdAndKeywords(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    const-string/jumbo v14, "sellerNav"

    .line 512
    invoke-virtual {v1, v14, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 514
    invoke-virtual {v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSellerNav()Lcom/ebay/mobile/search/SearchIntentBuilder;

    goto :goto_5

    .line 519
    :cond_10
    invoke-virtual {v2, v3}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setKeyword(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    const-string/jumbo v14, "sellerId"

    .line 521
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 522
    invoke-static {v14}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_11

    .line 524
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSellerId(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    const-string/jumbo v14, "sellerNav"

    .line 526
    invoke-virtual {v1, v14, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 528
    invoke-virtual {v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSellerNav()Lcom/ebay/mobile/search/SearchIntentBuilder;

    :cond_11
    :goto_5
    const-string/jumbo v14, "seller_offer_param"

    .line 535
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/ebay/common/net/api/search/SellerOfferParameters;

    if-eqz v14, :cond_12

    .line 537
    iget-object v15, v14, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerType:Ljava/lang/String;

    iget-object v5, v14, Lcom/ebay/common/net/api/search/SellerOfferParameters;->offerId:Ljava/lang/String;

    iget-object v6, v14, Lcom/ebay/common/net/api/search/SellerOfferParameters;->sellerName:Ljava/lang/String;

    iget-object v7, v14, Lcom/ebay/common/net/api/search/SellerOfferParameters;->seedCategoryId:Ljava/lang/String;

    .line 538
    invoke-virtual {v2, v15, v5, v6, v7}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSellerOffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    :cond_12
    const-string v5, "intent_extra_data_key"

    .line 544
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "recent"

    .line 546
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "ebayNoCategory"

    .line 547
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    const/4 v5, 0x0

    .line 550
    :cond_14
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "[|]"

    .line 552
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 553
    aget-object v6, v5, v13

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aget-object v5, v5, v12

    invoke-virtual {v2, v6, v7, v5}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategory(JLjava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    goto :goto_6

    :cond_15
    const-wide/16 v5, -0x1

    cmp-long v5, v8, v5

    if-eqz v5, :cond_16

    const-string v5, "categoryName"

    .line 557
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 558
    invoke-virtual {v2, v8, v9, v5}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategory(JLjava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    :cond_16
    :goto_6
    const-string v5, "categoryConstrained"

    .line 560
    invoke-virtual {v1, v5, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 561
    invoke-virtual {v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategoryConstrained()Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 563
    :cond_17
    invoke-direct {v0, v3}, Lcom/ebay/mobile/activities/QuickSearchHandler;->rememberSearchQuery(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->singleTop()Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object v3

    .line 567
    invoke-virtual {v3, v4}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object v3

    .line 568
    invoke-virtual {v3, v10}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setTrackingParameters(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    if-nez v11, :cond_18

    return-object v2

    .line 573
    :cond_18
    invoke-virtual {v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v2

    if-eqz v4, :cond_19

    .line 575
    invoke-static {v1, v2, v4}, Lcom/ebay/mobile/activities/QuickSearchHandler;->addAutoSugUserQueryToTargetIntent(Landroid/content/Intent;Landroid/content/Intent;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    .line 576
    :cond_19
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/activities/QuickSearchHandler;->startActivity(Landroid/content/Intent;)V

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->finish()V

    const/4 v1, 0x0

    return-object v1
.end method

.method protected directAndCloseOnCreate()V
    .locals 2

    .line 364
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/activities/QuickSearchHandler;->directAndClose(Landroid/content/Intent;Lcom/ebay/mobile/search/SearchIntentBuilder;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 347
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x39

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 352
    invoke-direct {p0, p3}, Lcom/ebay/mobile/activities/QuickSearchHandler;->launchBrowserForQrcode(Landroid/content/Intent;)V

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 333
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 334
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->setToolbarFlags(I)V

    const v0, 0x7f0d016f

    .line 336
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->setContentView(I)V

    if-eqz p1, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler;->directAndCloseOnCreate()V

    return-void
.end method
