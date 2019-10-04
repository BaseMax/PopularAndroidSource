.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetInterestsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field interestsCollection:Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

.field final synthetic this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;)V
    .locals 0

    .line 2211
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->interestsCollection:Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    if-nez p2, :cond_0

    .line 2215
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getHandler()Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/DmTaskHandler;->cancelLoad()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;Z)V
    .locals 0

    .line 2238
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->handleResult(Z)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;Z)V
    .locals 0

    .line 2206
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->handleResult(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public loadInBackground()Ljava/lang/Boolean;
    .locals 3

    .line 2221
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getHandler()Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/content/DmTaskHandler;->getFromCache(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    if-nez v0, :cond_0

    .line 2225
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    invoke-direct {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;-><init>()V

    .line 2226
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->interestsCollection:Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    iget-object v1, v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    iput-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    goto :goto_0

    .line 2229
    :cond_0
    iget-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->interestsCollection:Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    iget-object v2, v2, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2231
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getHandler()Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ebay/nautilus/domain/content/DmTaskHandler;->putInCache(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2232
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 2206
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;->loadInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
