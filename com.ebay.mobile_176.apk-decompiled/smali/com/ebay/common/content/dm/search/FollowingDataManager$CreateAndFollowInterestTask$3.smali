.class Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask<",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/model/search/following/FollowDescriptor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;


# direct methods
.method constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)V
    .locals 0

    .line 1425
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResult(Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor;",
            ">;Z)V"
        }
    .end annotation

    .line 1477
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$1402(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/domain/content/Content;)Lcom/ebay/nautilus/domain/content/Content;

    .line 1478
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-virtual {p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->handleResult(Z)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;Z)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1425
    check-cast p1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->handleResult(Lcom/ebay/nautilus/domain/content/Content;Z)V

    return-void
.end method

.method public loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor;",
            ">;"
        }
    .end annotation

    .line 1430
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;

    .line 1432
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->getParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;

    iget-object v1, v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    if-nez v1, :cond_0

    .line 1434
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$900(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    .line 1436
    :cond_0
    iget-wide v2, v1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->interestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1437
    new-instance v3, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;

    sget-object v6, Lcom/ebay/nautilus/domain/data/FollowType;->INTEREST:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object v7, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->customTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    .line 1442
    invoke-static {v4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$300(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v4

    iget-object v8, v4, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    .line 1443
    invoke-static {v4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$400(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v9

    iget-object v10, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->enabledNotifications:Ljava/util/List;

    move-object v4, v3

    move-object v5, v2

    invoke-direct/range {v4 .. v10}, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;Ljava/util/List;)V

    .line 1449
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v0, v3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$1300(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    .line 1450
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/following/EmptyResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v4

    .line 1456
    invoke-virtual {v4}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1459
    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    invoke-static {v3}, Lcom/ebay/common/model/search/following/FollowDescriptor;->create(Lcom/ebay/common/model/search/following/FollowDescriptor;)Lcom/ebay/common/model/search/following/FollowDescriptor;

    move-result-object v3

    .line 1460
    iput-object v2, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->id:Ljava/lang/String;

    .line 1461
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1462
    invoke-static {v4}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->formatIso8601DateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->followDate:Ljava/lang/String;

    .line 1463
    invoke-static {v4}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->formatIso8601DateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->lastViewDate:Ljava/lang/String;

    .line 1464
    iput-object v1, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    .line 1465
    iput-object v2, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->interestId:Ljava/lang/String;

    .line 1467
    new-instance v1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/following/EmptyResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v1

    .line 1470
    :cond_1
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v0, v4}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1425
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
