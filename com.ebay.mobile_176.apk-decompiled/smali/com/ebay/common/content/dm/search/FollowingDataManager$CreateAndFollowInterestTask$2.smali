.class Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;
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
        "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;


# direct methods
.method constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)V
    .locals 0

    .line 1390
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResult(Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    return-void

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$902(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/domain/content/Content;)Lcom/ebay/nautilus/domain/content/Content;

    .line 1412
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1414
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$1000(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$1100(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    .line 1415
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-virtual {p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->handleResult(Z)V

    goto :goto_0

    .line 1418
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    new-instance p2, Lcom/ebay/nautilus/domain/content/Content;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$900(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    invoke-static {p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$1200(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;Z)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1390
    check-cast p1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->handleResult(Lcom/ebay/nautilus/domain/content/Content;Z)V

    return-void
.end method

.method public loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            ">;"
        }
    .end annotation

    .line 1395
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;

    .line 1397
    new-instance v1, Lcom/ebay/common/net/api/search/following/CreateInterestRequest;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->interestParameters:Lcom/ebay/common/net/api/search/following/InterestParameters;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$300(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v2

    iget-object v2, v2, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/ebay/common/net/api/search/following/CreateInterestRequest;-><init>(Lcom/ebay/common/net/api/search/following/InterestParameters;Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-static {v0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->access$800(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/following/CreateInterestResponse;

    .line 1400
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/following/CreateInterestResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 1401
    new-instance v2, Lcom/ebay/nautilus/domain/content/Content;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/following/CreateInterestResponse;->interestDescriptor:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    invoke-direct {v2, v0, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1390
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
