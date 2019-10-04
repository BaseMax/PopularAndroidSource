.class public Lcom/ebay/common/content/dm/search/FollowingDataManager$SimpleObserver;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"

# interfaces
.implements Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onBulkDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0
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

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer$-CC;->$default$onBulkDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method public onDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public onFlushCachesComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;ZLcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public onFollowCollectionComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public onFollowListChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowListData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public onFollowSearchComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public onFollowUserComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public onFollowersChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Lcom/ebay/common/net/api/search/following/FollowerSummary;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public onInterestsChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/List;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
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

.method public onLoadSearchResultCountComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/net/api/search/following/FollowedSearchList;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public onToggleNotificationComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateLastViewDateComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Date;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    return-void
.end method
