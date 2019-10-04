.class Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateInterestParams"
.end annotation


# instance fields
.field public final customTitle:Ljava/lang/String;

.field final deleteId:Ljava/lang/String;

.field final enabledNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;"
        }
    .end annotation
.end field

.field final interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

.field final interestParameters:Lcom/ebay/common/net/api/search/following/InterestParameters;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/search/following/InterestParameters;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/ebay/common/net/api/search/following/InterestParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/common/net/api/search/following/InterestDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/following/InterestParameters;",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "customTitle must be non-null"

    .line 453
    invoke-static {p3, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->customTitle:Ljava/lang/String;

    .line 454
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->interestParameters:Lcom/ebay/common/net/api/search/following/InterestParameters;

    .line 455
    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    .line 456
    iput-object p4, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->enabledNotifications:Ljava/util/List;

    .line 457
    iput-object p5, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->deleteId:Ljava/lang/String;

    return-void
.end method
