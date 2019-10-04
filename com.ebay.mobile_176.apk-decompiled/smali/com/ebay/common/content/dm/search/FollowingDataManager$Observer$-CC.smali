.class public final synthetic Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer$-CC;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"


# direct methods
.method public static $default$onBulkDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 8
    .param p0, "-this"    # Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus;",
            "Lcom/ebay/nautilus/domain/content/DirtyStatus;",
            ")V"
        }
    .end annotation

    .line 2338
    invoke-static {p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2341
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2342
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/ebay/nautilus/domain/data/FollowType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static $default$onDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public static $default$onFlushCachesComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;ZLcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public static $default$onFollowCollectionComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public static $default$onFollowListChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowListData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public static $default$onFollowSearchComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public static $default$onFollowUserComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public static $default$onFollowersChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Lcom/ebay/common/net/api/search/following/FollowerSummary;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public static $default$onInterestsChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/List;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            ">;",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus;",
            "Lcom/ebay/nautilus/domain/content/DirtyStatus;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public static $default$onLoadSearchResultCountComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/net/api/search/following/FollowedSearchList;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public static $default$onToggleNotificationComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public static $default$onUpdateLastViewDateComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Date;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method
