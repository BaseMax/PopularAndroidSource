.class public final Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;
.super Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;
.source "FollowingDataManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final auth:Lcom/ebay/nautilus/domain/app/Authentication;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 590
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams$1;

    invoke-direct {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams$1;-><init>()V

    sput-object v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/app/Authentication;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/app/Authentication;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 580
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;-><init>()V

    const-string v0, "auth must not be null"

    .line 581
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/app/Authentication;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    return-void
.end method


# virtual methods
.method protected createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/content/dm/search/FollowingDataManager;
    .locals 2

    .line 587
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$1;)V

    return-object v0
.end method

.method protected bridge synthetic createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/content/DataManager;
    .locals 0

    .line 573
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/content/dm/search/FollowingDataManager;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 625
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 627
    :cond_2
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    .line 628
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object p1, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/app/Authentication;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 614
    invoke-super {p0}, Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 615
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/app/Authentication;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/app/Authentication;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
