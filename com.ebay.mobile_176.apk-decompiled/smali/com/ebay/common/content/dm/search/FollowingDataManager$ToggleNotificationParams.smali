.class Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToggleNotificationParams"
.end annotation


# instance fields
.field public final followType:Lcom/ebay/nautilus/domain/data/FollowType;

.field public final id:Ljava/lang/String;

.field public final notification:Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;

.field public final toggleOn:Z


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;ZLcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/FollowType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FollowType must be non-null"

    .line 548
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/FollowType;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    const-string p1, "Id must be non-null"

    .line 549
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->id:Ljava/lang/String;

    .line 550
    iput-boolean p3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->toggleOn:Z

    const-string p1, "enabledNotification must be non-null"

    .line 551
    invoke-static {p4, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->notification:Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;

    return-void
.end method
