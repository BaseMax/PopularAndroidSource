.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;
.super Lcom/ebay/nautilus/domain/content/DmAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToggleNotificationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmAsyncTask<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
        ">;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private final country:Lcom/ebay/nautilus/domain/EbayCountry;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 0
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1710
    invoke-virtual {p3, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;->createWrapper(Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/DmAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    .line 1711
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 1712
    iget-object p1, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-void
.end method


# virtual methods
.method protected loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;"
        }
    .end annotation

    .line 1718
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;

    .line 1720
    new-instance v8, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;

    iget-object v2, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object v3, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->id:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->toggleOn:Z

    iget-object v5, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->notification:Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v6, v1, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;ZLcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 1724
    invoke-virtual {p0, v8}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    .line 1725
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/following/EmptyResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 1727
    new-instance v2, Lcom/ebay/nautilus/domain/content/Content;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->notification:Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;

    invoke-direct {v2, v0, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v2
.end method

.method protected bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1699
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
