.class public interface abstract Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onBulkDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
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
.end method

.method public abstract onDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
.end method

.method public abstract onFlushCachesComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;ZLcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
.end method

.method public abstract onFollowCollectionComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
.end method

.method public abstract onFollowListChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowListData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
.end method

.method public abstract onFollowSearchComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
.end method

.method public abstract onFollowUserComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
.end method

.method public abstract onFollowersChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Lcom/ebay/common/net/api/search/following/FollowerSummary;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
.end method

.method public abstract onInterestsChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/List;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
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
.end method

.method public abstract onLoadSearchResultCountComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/net/api/search/following/FollowedSearchList;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
.end method

.method public abstract onToggleNotificationComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
.end method

.method public abstract onUpdateLastViewDateComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Date;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
.end method
