.class Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;


# direct methods
.method constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)V
    .locals 0

    .line 1358
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResult(Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1381
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    iget-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$600(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$700(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;Z)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1358
    check-cast p1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;->handleResult(Lcom/ebay/nautilus/domain/content/Content;Z)V

    return-void
.end method

.method public loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1363
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;

    .line 1364
    iget-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->deleteId:Ljava/lang/String;

    const-string v2, "deleteId must be non-null"

    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1366
    new-instance v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;

    sget-object v2, Lcom/ebay/nautilus/domain/data/FollowType;->INTEREST:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object v3, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->deleteId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)V

    .line 1368
    new-instance v2, Lcom/ebay/common/net/api/search/following/DeleteFollowRequest;

    iget-object v3, v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->deleteId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$300(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v4

    iget-object v4, v4, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$400(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v5

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/ebay/common/net/api/search/following/DeleteFollowRequest;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 1370
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v0, v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$500(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    .line 1371
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/following/EmptyResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    .line 1373
    new-instance v2, Lcom/ebay/nautilus/domain/content/Content;

    iget-object v1, v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->id:Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1358
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
