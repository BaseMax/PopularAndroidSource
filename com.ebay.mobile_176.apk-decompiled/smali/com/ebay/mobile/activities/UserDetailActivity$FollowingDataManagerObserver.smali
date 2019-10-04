.class Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;
.super Lcom/ebay/common/content/dm/search/FollowingDataManager$SimpleObserver;
.source "UserDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/UserDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FollowingDataManagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/UserDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/activities/UserDetailActivity;)V
    .locals 0

    .line 1504
    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-direct {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$SimpleObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/activities/UserDetailActivity;Lcom/ebay/mobile/activities/UserDetailActivity$1;)V
    .locals 0

    .line 1504
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;-><init>(Lcom/ebay/mobile/activities/UserDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    .line 1528
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->access$600(Lcom/ebay/mobile/activities/UserDetailActivity;)V

    .line 1529
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    const/4 p5, 0x0

    invoke-static {p1, p5, p4}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1534
    :cond_0
    sget-object p1, Lcom/ebay/nautilus/domain/data/FollowType;->USER:Lcom/ebay/nautilus/domain/data/FollowType;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object p1, p1, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1536
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iput-boolean p5, p1, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserBeingFollowed:Z

    .line 1537
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->hideAndShowFavoriteButton()V

    .line 1538
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->announceFollowChange()V

    :cond_1
    return-void
.end method

.method public onFollowListChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowListData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    .line 1546
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->access$600(Lcom/ebay/mobile/activities/UserDetailActivity;)V

    .line 1547
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    const/4 p4, 0x0

    invoke-static {p1, p4, p3}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1552
    :cond_0
    iget-object p1, p2, Lcom/ebay/common/model/search/following/FollowListData;->users:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 1555
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/model/search/following/FollowDescriptor;

    .line 1557
    iget-object p3, p2, Lcom/ebay/common/model/search/following/FollowDescriptor;->type:Lcom/ebay/nautilus/domain/data/FollowType;

    sget-object p4, Lcom/ebay/nautilus/domain/data/FollowType;->USER:Lcom/ebay/nautilus/domain/data/FollowType;

    if-ne p3, p4, :cond_1

    iget-object p3, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object p3, p3, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    iget-object p2, p2, Lcom/ebay/common/model/search/following/FollowDescriptor;->username:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1559
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserBeingFollowed:Z

    .line 1563
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->hideAndShowFavoriteButton()V

    :cond_3
    return-void
.end method

.method public onFollowUserComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0

    .line 1510
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->access$600(Lcom/ebay/mobile/activities/UserDetailActivity;)V

    .line 1511
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    const/4 p4, 0x0

    invoke-static {p1, p4, p3}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1516
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object p1, p1, Lcom/ebay/mobile/activities/UserDetailActivity;->userId:Ljava/lang/String;

    iget-object p2, p2, Lcom/ebay/common/model/search/following/FollowDescriptor;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1518
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ebay/mobile/activities/UserDetailActivity;->isUserBeingFollowed:Z

    .line 1519
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->hideAndShowFavoriteButton()V

    .line 1520
    iget-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$FollowingDataManagerObserver;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/UserDetailActivity;->announceFollowChange()V

    :cond_1
    return-void
.end method
