.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;
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
    name = "LoadInterestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask<",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
        ">;>;"
    }
.end annotation


# instance fields
.field interestIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2172
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2173
    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->interestIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public handleResult(Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            ">;Z)V"
        }
    .end annotation

    .line 2195
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->interests:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2197
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-static {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->access$2900(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 2201
    iget-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    invoke-direct {v0, v1, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;)V

    invoke-static {p2, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->access$3000(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;Z)V
    .locals 0

    .line 2167
    check-cast p1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->handleResult(Lcom/ebay/nautilus/domain/content/Content;Z)V

    return-void
.end method

.method public loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            ">;"
        }
    .end annotation

    .line 2179
    new-instance v0, Lcom/ebay/common/net/api/search/following/GetInterestsRequest;

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->interestIds:Ljava/util/List;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    .line 2180
    invoke-static {v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->access$2600(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;)Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v2

    iget-object v2, v2, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-static {v3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->access$2700(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/common/net/api/search/following/GetInterestsRequest;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 2181
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-static {v1, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->access$2800(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/following/GetInterestResponse;

    .line 2182
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/following/GetInterestResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 2183
    new-instance v2, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    invoke-direct {v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;-><init>()V

    .line 2185
    iget-object v3, v0, Lcom/ebay/common/net/api/search/following/GetInterestResponse;->interests:[Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/following/GetInterestResponse;->interests:[Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v3, v2, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    .line 2188
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v0, v2, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 2167
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
