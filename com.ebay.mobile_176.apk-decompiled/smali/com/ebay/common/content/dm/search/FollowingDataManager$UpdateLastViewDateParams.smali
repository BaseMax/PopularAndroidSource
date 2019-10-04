.class Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateLastViewDateParams"
.end annotation


# instance fields
.field public final entityId:Ljava/lang/String;

.field public final followType:Lcom/ebay/nautilus/domain/data/FollowType;

.field public final lastViewDate:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/FollowType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FollowType must be non-null"

    .line 506
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/FollowType;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    const-string p1, "id must be non-null"

    .line 507
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->entityId:Ljava/lang/String;

    const-string p1, "lastViewDate must be non-null"

    .line 508
    invoke-static {p3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->lastViewDate:Ljava/util/Date;

    return-void
.end method
