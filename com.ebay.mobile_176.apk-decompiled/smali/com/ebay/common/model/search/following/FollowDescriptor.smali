.class public Lcom/ebay/common/model/search/following/FollowDescriptor;
.super Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;
.source "FollowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;,
        Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;
    }
.end annotation


# instance fields
.field public collectionId:Ljava/lang/String;

.field public customTitle:Ljava/lang/String;

.field public followDate:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

.field public interestId:Ljava/lang/String;

.field public lastViewDate:Ljava/lang/String;

.field public notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/ebay/nautilus/domain/data/FollowType;

.field public username:Ljava/lang/String;

.field public visibility:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;-><init>()V

    .line 71
    sget-object v0, Lcom/ebay/nautilus/domain/data/FollowType;->INTEREST:Lcom/ebay/nautilus/domain/data/FollowType;

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->type:Lcom/ebay/nautilus/domain/data/FollowType;

    .line 72
    sget-object v0, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;->PRIVATE:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->visibility:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->notifications:Ljava/util/List;

    return-void
.end method

.method public static create(Lcom/ebay/common/model/search/following/FollowDescriptor;)Lcom/ebay/common/model/search/following/FollowDescriptor;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getDefaultMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v0

    .line 43
    invoke-interface {v0, p0}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    invoke-interface {v0, p0, v1}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/search/following/FollowDescriptor;

    return-object p0
.end method


# virtual methods
.method public getInterestId()Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->interestId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    iget-wide v0, v0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->interestId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->interestId:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->interestId:Ljava/lang/String;

    return-object v0
.end method

.method public getInterestTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->customTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->customTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ebay/common/model/search/following/FollowDescriptor;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->title:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
