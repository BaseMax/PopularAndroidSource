.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CreateFollowParams"
.end annotation


# instance fields
.field public final customTitle:Ljava/lang/String;

.field public final enabledNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;"
        }
    .end annotation
.end field

.field public final followType:Lcom/ebay/nautilus/domain/data/FollowType;

.field public final id:Ljava/lang/String;

.field public final interestDescriptor:Lcom/ebay/common/net/api/search/following/InterestDescriptor;


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/FollowType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            "Ljava/lang/String;",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;)V"
        }
    .end annotation

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FollowType must be non-null"

    .line 482
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/FollowType;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    const-string p1, "Id must be non-null"

    .line 483
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->id:Ljava/lang/String;

    .line 484
    iput-object p3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->interestDescriptor:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    .line 485
    iput-object p4, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->customTitle:Ljava/lang/String;

    .line 486
    iput-object p5, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->enabledNotifications:Ljava/util/List;

    return-void
.end method
