.class Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteFollowParams"
.end annotation


# instance fields
.field public followType:Lcom/ebay/nautilus/domain/data/FollowType;

.field public id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/FollowType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FollowType must be non-null"

    .line 525
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/FollowType;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    const-string p1, "Id must be non-null"

    .line 526
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->id:Ljava/lang/String;

    return-void
.end method
