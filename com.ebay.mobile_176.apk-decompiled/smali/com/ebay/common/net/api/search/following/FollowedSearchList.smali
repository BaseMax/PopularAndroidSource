.class public Lcom/ebay/common/net/api/search/following/FollowedSearchList;
.super Ljava/lang/Object;
.source "FollowedSearchList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;
    }
.end annotation


# static fields
.field private static final DATE_FORMATTER:Ljava/text/DateFormat;


# instance fields
.field private final followedSearches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 33
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->DATE_FORMATTER:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    .line 52
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    new-instance v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    invoke-direct {v3, v1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;-><init>(Lcom/ebay/common/model/search/following/FollowDescriptor;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private getNameMatchesKeywordsCount(Ljava/lang/String;)I
    .locals 5

    .line 429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 437
    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->customTitle:Ljava/lang/String;

    .line 438
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getSellerIdDupCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    .line 337
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 341
    invoke-static {p1, v0}, Lcom/ebay/mobile/eBayDictionaryProvider;->getDefaultSearchParameters(Landroid/content/Context;Ljava/lang/String;)Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 347
    iget-object v4, v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->customTitle:Ljava/lang/String;

    iput-object v4, p1, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 349
    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    invoke-virtual {v3, p1}, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->getSearchParameters(Lcom/ebay/common/net/api/search/SearchParameters;)Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v3

    iget-object v3, v3, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 350
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getTimeStampFormatted()Ljava/lang/String;
    .locals 2

    .line 451
    sget-object v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->DATE_FORMATTER:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private suggestFromCategoryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 372
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 378
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    const/16 v3, 0x20

    if-ge v1, v2, :cond_2

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->containsName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    .line 388
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getTimeStampFormatted()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private suggestFromKeywords(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getTimeStampFormatted()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 403
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->containsName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 405
    :cond_1
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getNameMatchesKeywordsCount(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    const/16 v3, 0x20

    if-ge v1, v2, :cond_3

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->containsName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    .line 417
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getTimeStampFormatted()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private suggestFromSellerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const v0, 0x7f120d37

    .line 299
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {p0, v1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->containsName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    .line 312
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getSellerIdDupCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->containsName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move p1, v5

    goto :goto_0

    .line 323
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getTimeStampFormatted()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;)Z"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addInterest(Lcom/ebay/common/net/api/search/following/InterestDescriptor;)V
    .locals 2
    .param p1    # Lcom/ebay/common/net/api/search/following/InterestDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "interest must be Nonnull"

    .line 74
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-wide v0, p1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->interestId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->findByInterestId(Ljava/lang/String;)Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iput-object p1, v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    return-void
.end method

.method public containsInterest(Ljava/lang/String;)Z
    .locals 5

    .line 486
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 490
    iget-object v4, v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interestId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    iget-object p1, v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    monitor-exit v0

    return v3

    .line 494
    :cond_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 495
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final containsName(Ljava/lang/String;)Z
    .locals 4

    .line 463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 470
    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->customTitle:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    monitor-exit v0

    return v1

    .line 473
    :cond_2
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findByInterestId(Ljava/lang/String;)Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 167
    iget-object v3, v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interestId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 173
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getEnabledNotificationTypes(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->findByInterestId(Ljava/lang/String;)Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 212
    :cond_1
    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->notifications:Ljava/util/List;

    return-object p1
.end method

.method public getFollowedSearches()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0

    .line 89
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 228
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 234
    iget-object v3, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->customTitle:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 237
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeById(Ljava/lang/String;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 190
    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interestId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 196
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sort(Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "username"

    .line 145
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    new-instance v1, Lcom/ebay/mobile/following/AlphabeticalInterestSortFollowDescriptor;

    invoke-direct {v1}, Lcom/ebay/mobile/following/AlphabeticalInterestSortFollowDescriptor;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    const-string v1, "-latestViewDate"

    .line 147
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    new-instance v1, Lcom/ebay/mobile/following/LastViewDateSortFollowDescriptor;

    invoke-direct {v1}, Lcom/ebay/mobile/following/LastViewDateSortFollowDescriptor;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    new-instance v1, Lcom/ebay/mobile/following/FollowDateSortFollowDescriptor;

    invoke-direct {v1}, Lcom/ebay/mobile/following/FollowDateSortFollowDescriptor;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public suggestUniqueName(Landroid/content/Context;Lcom/ebay/common/net/api/search/following/InterestParameters;)Ljava/lang/String;
    .locals 4
    .param p2    # Lcom/ebay/common/net/api/search/following/InterestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 264
    iget-object v0, p2, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 266
    iget-object p2, p2, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 267
    iget-object v0, p2, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 268
    iget-object v2, p2, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    .line 269
    iget-object v3, p2, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v3, :cond_0

    .line 270
    iget-object p2, p2, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object p2, p2, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    move-object v1, p2

    :cond_0
    move-object p2, v2

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p2, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    if-eqz v0, :cond_2

    .line 274
    iget-object p2, p2, Lcom/ebay/common/net/api/search/following/InterestParameters;->searchOptions:Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    const-string v0, "_nkw"

    .line 275
    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_ssn"

    .line 276
    invoke-virtual {p2, v2}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v1

    move-object v0, p2

    .line 280
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->suggestFromSellerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 283
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 284
    invoke-direct {p0, v1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->suggestFromCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 287
    :cond_4
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->suggestFromKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 129
    iget-object v4, v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interestId:Ljava/lang/String;

    iget-object v5, p1, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interestId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    if-le v1, v3, :cond_2

    .line 137
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->followedSearches:Ljava/util/List;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 113
    invoke-virtual {p0, v1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->update(Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)V

    goto :goto_0

    .line 114
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
